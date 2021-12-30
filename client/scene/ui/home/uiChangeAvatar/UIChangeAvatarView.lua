--- @class UIChangeAvatarView : UIBaseView
UIChangeAvatarView = Class(UIChangeAvatarView, UIBaseView)

--- @return void
--- @param model UIChangeAvatarModel
function UIChangeAvatarView:Ctor(model, ctrl)
    ---@return UIChangeAvatarConfig
    self.config = nil
    ---@type VipIconView
    self.iconVip = nil
    ---@type UISelect
    self.tab = nil
    --- @type table
    self.funSelectTab = { self.ShowAvatar, self.ShowBorder }
    ---@type UILoopScroll
    self.uiScrollAvatar = nil
    ---@type UILoopScroll
    self.uiScrollBorder = nil
    ---@type List
    self.listAvatar = List()
    ---@type List
    self.listBorder = nil
    ---@type BasicInfoInBound
    self.basicInfoInBound = nil

    ---@type number
    self.currentAvatarId = nil
    ---@type number
    self.currentBorderId = nil

    UIBaseView.Ctor(self, model)
    --- @type UIChangeAvatarModel
    self.model = model
end

--- @return void
function UIChangeAvatarView:OnReadyCreate()
    ---@type UIChangeAvatarConfig
    self.config = UIBaseConfig(self.uiTransform)
    self.config.backGround.onClick:AddListener(function()
        self:OnClickBackOrClose()
    end)
    self.config.saveButton.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        self:OnClickSave()
    end)

    -- Tab
    --- @param obj UIHeroCollectionTabConfig
    --- @param isSelect boolean
    local onSelect = function(obj, isSelect, indexTab)
        if obj ~= nil then
            obj.button.interactable = not isSelect
            obj.bgOn.gameObject:SetActive(isSelect)
        end
    end

    local onChangeSelect = function(indexTab)
        if indexTab ~= nil then
            self.funSelectTab[indexTab](self)
        end
    end
    self.tab = UISelect(self.config.tab, UIBaseConfig, onSelect, onChangeSelect)
end

--- @return void
function UIChangeAvatarView:InitLocalization()
    local avatar = LanguageUtils.LocalizeCommon("avatar")
    self.config.localizeAvatar.text = avatar
    self.config.localizeAvatarOff.text = avatar
    local border = LanguageUtils.LocalizeCommon("border")
    self.config.localizeBorder.text = border
    self.config.localizeBorderOff.text = border
    self.config.textTitle.text = LanguageUtils.LocalizeCommon("avatar")
    self.config.textBorder.text = LanguageUtils.LocalizeCommon("border")
    self.config.localizeCurrentAvatar.text = LanguageUtils.LocalizeCommon("current_avatar")
end

--- @return void
function UIChangeAvatarView:OnReadyShow()
    ---@type ClientResourceList
    local avatarResourceList = InventoryUtils.Get(ResourceType.Avatar)
    self.listAvatar:Clear()
    for _, id in ipairs(avatarResourceList._resourceList:GetItems()) do
    	self.listAvatar:Add(id)
    end
    ---@type ClientResourceList
    local borderResourceList = InventoryUtils.Get(ResourceType.AvatarFrame)
    self.listBorder = borderResourceList._resourceList

    ---@type BasicInfoInBound
    self.basicInfoInBound = zg.playerData:GetMethod(PlayerDataMethod.BASIC_INFO)
    self.currentAvatarId = self.basicInfoInBound.avatarId
    self.currentBorderId = self.basicInfoInBound.borderId

    self:ShowIcon()
    self.tab:Select(1)

    if self.tapToClose == nil then
        ---@type UITapToCloseView
        self.tapToClose = SmartPool.Instance:SpawnLuaUIPool(UIPoolType.UITapToCloseView, self.config.textTapToClose)
    end
end

--- @return void
function UIChangeAvatarView:ShowIcon()
    if self.iconVip == nil then
        self.iconVip = SmartPool.Instance:SpawnLuaUIPool(UIPoolType.VipIconView, self.config.iconUser)
    end
    self.iconVip:SetData(self.currentAvatarId, self.basicInfoInBound.level, self.currentBorderId)

    if self.currentAvatarId ~= self.basicInfoInBound.avatarId or self.currentBorderId ~= self.basicInfoInBound.borderId then
        self.config.saveButton.gameObject:SetActive(true)
    else
        self.config.saveButton.gameObject:SetActive(false)
    end
end

--- @return void
function UIChangeAvatarView:OnClickSave()
    local onReceived = function(result)
        local onSuccess = function()
            self.basicInfoInBound.avatar = ClientConfigUtils.GetAvatar(self.currentAvatarId, self.currentBorderId)
            self.basicInfoInBound.avatarId = self.currentAvatarId
            self.basicInfoInBound.borderId = self.currentBorderId
            SmartPoolUtils.ShowShortNotification(LanguageUtils.LocalizeCommon("change_success"))
            RxMgr.changeAvatar:Next()

            zg.playerData:UpdatePlayerInfoOnOthersUI("avatar", self.basicInfoInBound.avatar)
        end
        NetworkUtils.ExecuteResult(result, nil, onSuccess, SmartPoolUtils.LogicCodeNotification)
        self:ShowIcon()
    end
    NetworkUtils.Request(OpCode.PLAYER_AVATAR_CHANGE, UnknownOutBound.CreateInstance(PutMethod.Int, ClientConfigUtils.GetAvatar(self.currentAvatarId, self.currentBorderId)), onReceived)
end

--- @return void
function UIChangeAvatarView:ShowAvatar()
    self.config.textTitle.gameObject:SetActive(true)
    self.config.textBorder.gameObject:SetActive(false)
    self.config.localizeSelectAvatar.text = LanguageUtils.LocalizeCommon("select_avatar")
    self.config.scroll.gameObject:SetActive(true)
    self.config.scroll2.gameObject:SetActive(false)
    if self.uiScrollAvatar == nil then
        --- @param obj AvatarIconView
        --- @param index number
        local onUpdateItem = function(obj, index)
            local id = self.listAvatar:Get(index + 1)
            obj:SetIconData(ItemIconData.CreateInstance(ResourceType.Avatar, id, 0), self.currentAvatarId == id)
        end
        --- @param obj AvatarIconView
        --- @param index number
        local onCreateItem = function(obj, index)
            onUpdateItem(obj, index)
            obj:AddListener(function()
                self:SelectAvatar(index)
            end)
        end
        self.uiScrollAvatar = UILoopScroll(self.config.scroll, UIPoolType.AvatarIconView, onCreateItem, onUpdateItem)
    end
    self.uiScrollAvatar:Resize(self.listAvatar:Count())
end

--- @return void
function UIChangeAvatarView:ShowBorder()
    self.config.textTitle.gameObject:SetActive(false)
    self.config.textBorder.gameObject:SetActive(true)
    self.config.localizeSelectBorder.text = LanguageUtils.LocalizeCommon("select_border")
    self.config.scroll.gameObject:SetActive(false)
    self.config.scroll2.gameObject:SetActive(true)
    if self.uiScrollBorder == nil then
        --- @param obj BorderIconView
        --- @param index number
        local onUpdateItem = function(obj, index)
            obj:SetIconData(ItemIconData.CreateInstance(ResourceType.AvatarFrame, self.listBorder:Get(index + 1), 0))
        end
        --- @param obj BorderIconView
        --- @param index number
        local onCreateItem = function(obj, index)
            onUpdateItem(obj, index)
            obj:AddListener(function()
                self:SelectBorder(index)
            end)
        end
        self.uiScrollBorder = UILoopScroll(self.config.scroll2, UIPoolType.BorderIconView, onCreateItem, onUpdateItem)
    end
    self.uiScrollBorder:Resize(self.listBorder:Count())
end

--- @return void
---@param index number
function UIChangeAvatarView:SelectAvatar(index)
    self.currentAvatarId = self.listAvatar:Get(index + 1)
    self:ShowIcon()
    self.uiScrollAvatar:RefreshCells()
end

--- @return void
---@param index number
function UIChangeAvatarView:SelectBorder(index)
    self.currentBorderId = self.listBorder:Get(index + 1)
    self:ShowIcon()
end

--- @return void
function UIChangeAvatarView:Hide()
    UIBaseView.Hide(self)
    if self.uiScrollAvatar ~= nil then
        self.uiScrollAvatar:Hide()
    end
    if self.uiScrollBorder ~= nil then
        self.uiScrollBorder:Hide()
    end
    if self.tapToClose ~= nil then
        self.tapToClose:ReturnPool()
        self.tapToClose = nil
    end
end