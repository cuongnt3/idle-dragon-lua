--- @class UIHeroSkin
UIHeroSkin = Class(UIHeroSkin)

--- @return void
--- @param transform UnityEngine_Transform
function UIHeroSkin:Ctor(transform, model, heroMenu2View)
    --- @type UIHeroMenu2Model
    self.model = model
    --- @type UIHeroMenu2View
    self.heroMenuView = heroMenu2View
    ---@type UIHeroSkinConfig
    self.config = UIBaseConfig(transform)
    self.config.buttonPreview.gameObject:SetActive(true)
    self.config.buttonArrowBack.onClick:AddListener(function ()
        self:OnClickBack()
    end)
    self.config.buttonArrowNext.onClick:AddListener(function ()
        self:OnClickNext()
    end)
    self.config.buttonPreview.onClick:AddListener(function ()
        self:OnClickToggleShowSkin()
    end)
    self.config.buttonEquip.onClick:AddListener(function ()
        self:OnClickEquip()
    end)
    self.config.buttonUnequip.onClick:AddListener(function ()
        self:OnClickUnEquip()
    end)
    ---@type HeroResource
    self.heroResource = nil
    ---@type List
    self.listItem = List()
    ---@type SkinCardView
    self.item = nil
    ---@type SkinCardView
    self.lastItemEquip = nil
    ---@type number
    self.index = 1
end

--- @return void
function UIHeroSkin:InitLocalization()
    self.config.textEquip.text = LanguageUtils.LocalizeCommon("equip")
    self.config.textPreview.text = LanguageUtils.LocalizeCommon("show_skin")
    self.config.textUnequip.text = LanguageUtils.LocalizeCommon("unequip")
    self.config.textBuy.text = LanguageUtils.LocalizeCommon("buy")
end


--- @return void
function UIHeroSkin:InitUI()
    local idEquip = self.model.heroResource.heroItem:Get(HeroItemSlot.SKIN)
    self.heroResource = HeroResource.CreateInstance(nil, self.model.heroResource.heroId, self.model.heroResource.heroStar, self.model.heroResource.heroLevel)
    if idEquip ~= nil then
        self.heroResource.heroItem:Add(HeroItemSlot.SKIN, idEquip)
    end
    self:ReturnPoolSkinItem()
    self.index = 1
    local index = 1
    local idEquip = self.heroResource.heroItem:Get(HeroItemSlot.SKIN)
    ---@param skinId number
    for k, skinId in ipairs(ClientConfigUtils.GetListSkinByHeroId(self.heroResource.heroId):GetItems()) do
        ---@type SkinCardView
        local iconView = SmartPool.Instance:SpawnLuaUIPool(UIPoolType.SkinCardView, self.config.content)
        iconView:SetIconData(ItemIconData.CreateInstance(ResourceType.Skin, skinId))
        iconView:RemoveAllListeners()
        iconView:AddListener(function ()
            if iconView == self.item then
                iconView:ShowInfo()
            end
        end)
        iconView:UnEquip()
        self.listItem:Add(iconView)
        if idEquip ~= nil then
            if idEquip == skinId then
                iconView:Equip()
                self.index = index
                self.item = iconView
                self.lastItemEquip = iconView
                idEquip = nil
            end
            index = index + 1
        end
    end
end

--- @return void
function UIHeroSkin:Show()
    self:Hide()
    self.config.heroName.text = LanguageUtils.LocalizeNameHero(self.model.heroResource.heroId)
    self.heroMenuView:SetButtonNextHero(self.config.buttonEquip.transform.position)
    self.isPreviewSkin = false
    self:InitUI()
    self:GoToIndex(self.index)
    Coroutine.start(function ()
        coroutine.waitforendofframe()
        self:UpdateUI()
        self:GoToIndex(self.index)
        coroutine.waitforendofframe()
        self:UpdateUI()
        self:GoToIndex(self.index)
        self:UpdateStatePreviewSkin()
        self:UpdatePreviewHero()
        self:CheckButton()
    end)
    self:UpdateStatePreviewSkin()
    self:UpdatePreviewHero()
    self:CheckButton()
end

--- @return void
function UIHeroSkin:OnChangeHero()
    self:Show()
end

--- @return void
function UIHeroSkin:StopCoroutine()
    if self.coroutine ~= nil then
        Coroutine.stop(self.coroutine)
        self.coroutine = nil
    end
end

--- @return void
function UIHeroSkin:ReturnPoolSkinItem()
    ---@param v SkinCardView
    for i, v in ipairs(self.listItem:GetItems()) do
        v:ReturnPool()
    end
    self.listItem:Clear()
end

--- @return void
function UIHeroSkin:Hide()
    self:StopCoroutine()
    self:ReturnPoolSkinItem()
    if self.heroMenuView ~= nil and self.heroMenuView.previewHeroMenu ~= nil then
        self.heroMenuView.previewHeroMenu:PreviewHero(self.model.heroResource, HeroModelType.Basic)
    end
end

--- @return void
function UIHeroSkin:UpdateUI()
    ---@param v SkinCardView
    for i, v in ipairs(self.listItem:GetItems()) do
        v.config.transform:GetChild(0).localScale = U_Vector3.one * math.max(0.7, 1 - math.abs(v.config.transform.position.x - self.config.content.parent.position.x)/ 10)
    end
    self.config.layout.enabled = false
    self.config.layout.enabled = true
end

--- @return void
function UIHeroSkin:GoToIndex(index)
    self.index = index
    self.item = self.listItem:Get(index)
    self.config.content.position = self.config.content.position - (self.item.config.transform.position.x - self.config.content.parent.position.x) * U_Vector3.right
    self:UpdateUI()
    self:CheckButton()
end

--- @return void
function UIHeroSkin:MoveToIndex(index)
    self.index = index
    self.item = self.listItem:Get(index)
    local newPosition = self.config.content.position - (self.item.config.transform.position.x - self.config.content.parent.position.x) * U_Vector3.right
    local refVelocity = U_Vector3.zero
    self:StopCoroutine()
    self.coroutine = Coroutine.start(function ()
        while self.config.content.position.x ~= newPosition.x do
            coroutine.waitforendofframe()
            self.config.content.position = U_Vector3.SmoothDamp(self.config.content.position, newPosition, refVelocity, 0.2)
            self:UpdateUI()
        end
        self.coroutine = nil
    end)
    self:CheckButton()
end

--- @return void
function UIHeroSkin:CheckButton()
    self.config.buttonArrowBack.gameObject:SetActive(self.index > 1)
    self.config.buttonArrowNext.gameObject:SetActive(self.index < self.listItem:Count())

    self.config.buttonBuy.gameObject:SetActive(false)
    self.config.buttonEquip.gameObject:SetActive(false)
    self.config.buttonUnequip.gameObject:SetActive(false)

    if self.item.iconData.itemId == self.model.heroResource.heroItem:Get(HeroItemSlot.SKIN) then
        self.config.buttonUnequip.gameObject:SetActive(true)
    else
        local countSkin = InventoryUtils.Get(ResourceType.Skin, self.item.iconData.itemId)
        if countSkin ~= nil and countSkin > 0 then
            self.config.buttonEquip.gameObject:SetActive(true)
        else
            self.config.buttonBuy.gameObject:SetActive(true)
            self:ShowButtonBuy()
        end
    end
    self.config.nameSkin.text = LanguageUtils.LocalizeSkinName(self.item.iconData.itemId)
end

function UIHeroSkin:ShowButtonBuy()
    self.config.buttonBuy.onClick:RemoveAllListeners()
    self.config.buttonBuy.onClick:AddListener(function ()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        local content = string.format(LanguageUtils.LocalizeCommon("want_to_unlock_skin_s"),
                LanguageUtils.GetStringResourceName(self.item.iconData.type, self.item.iconData.itemId))
        PopupUtils.ShowPopupNotificationYesNo(content, nil, function ()
            XDebug.Log("Fake Unlock Skin")
            self:CheckButton()
        end)
    end)
end

--- @return void
function UIHeroSkin:OnClickBack()
    self:MoveToIndex(self.index - 1)
    self:UpdatePreviewHero()
end

--- @return void
function UIHeroSkin:OnClickNext()
    self:MoveToIndex(self.index + 1)
    self:UpdatePreviewHero()
end

--- @return void
function UIHeroSkin:UpdateStatePreviewSkin()
    self.config.tick:SetActive(not self.model.heroResource.isHideSkin)
end

--- @return void
function UIHeroSkin:UpdatePreviewHero()
    if self.heroResource.isHideSkin == false then
        self.heroResource.heroItem:Add(HeroItemSlot.SKIN, self.item.iconData.itemId)
        self.heroMenuView.previewHeroMenu:PreviewHero(self.heroResource, HeroModelType.Basic)
    end
end

function UIHeroSkin:OnClickToggleShowSkin()
    self.isPreviewSkin = not self.isPreviewSkin
    self.heroResource.isHideSkin = not self.heroResource.isHideSkin

    self:UpdateStatePreviewSkin()
    if self.heroResource.isHideSkin == false then
        self.heroResource.heroItem:Add(HeroItemSlot.SKIN, self.item.iconData.itemId)
    else
        if self.model.heroResource.heroItem:IsContainValue(HeroItemSlot.SKIN) then
            self.heroResource.heroItem:Add(HeroItemSlot.SKIN, self.model.heroResource.heroItem:Get(HeroItemSlot.SKIN))
        else
            self.heroResource.heroItem:RemoveByKey(HeroItemSlot.SKIN)
        end
    end
    self.heroMenuView.previewHeroMenu:PreviewHero(self.heroResource, HeroModelType.Basic)
end

--- @return void
function UIHeroSkin:DisablePreview()
    if self.isPreviewSkin == true then
        self.isPreviewSkin = false
        self:UpdateStatePreviewSkin()
    end
end

--- @return void
function UIHeroSkin:OnClickEquip()
    NetworkUtils.RequestAndCallback(OpCode.HERO_SKIN_EQUIP,
            UnknownOutBound.CreateInstance(PutMethod.Long, self.model.heroResource.inventoryId, PutMethod.Int, self.item.iconData.itemId),
    function ()
        self:DisablePreview()
        local lastEquip = self.model.heroResource.heroItem:Get(HeroItemSlot.SKIN)
        if lastEquip ~= nil then
            InventoryUtils.Add(ResourceType.Skin, lastEquip, 1)
        end
        self.heroResource.heroItem:Add(HeroItemSlot.SKIN, self.item.iconData.itemId)
        self.model.heroResource.heroItem:Add(HeroItemSlot.SKIN, self.item.iconData.itemId)
        InventoryUtils.Sub(ResourceType.Skin, self.item.iconData.itemId, 1)
        if self.lastItemEquip ~= nil then
            self.lastItemEquip:UnEquip()
        end
        self.lastItemEquip = self.item
        self.item:Equip()
        self.config.buttonEquip.gameObject:SetActive(false)
        self.config.buttonUnequip.gameObject:SetActive(true)
        self.heroMenuView.previewHeroMenu:PreviewHero(self.heroResource, HeroModelType.Basic)
        self.heroMenuView:ChangeStatHero()
    end, SmartPoolUtils.LogicCodeNotification, nil, true)
end

--- @return void
function UIHeroSkin:OnClickUnEquip()
    NetworkUtils.RequestAndCallback(OpCode.HERO_SKIN_EQUIP,
            UnknownOutBound.CreateInstance(PutMethod.Long, self.model.heroResource.inventoryId, PutMethod.Int, -1),
            function ()
                self:DisablePreview()
                local lastEquip = self.model.heroResource.heroItem:Get(HeroItemSlot.SKIN)
                if lastEquip ~= nil then
                    self.model.heroResource.heroItem:RemoveByKey(HeroItemSlot.SKIN)
                    self.heroResource.heroItem:RemoveByKey(HeroItemSlot.SKIN)
                    InventoryUtils.Add(ResourceType.Skin, lastEquip, 1)
                end
                self.item:UnEquip()
                self.config.buttonEquip.gameObject:SetActive(true)
                self.config.buttonUnequip.gameObject:SetActive(false)
                self.heroMenuView.previewHeroMenu:PreviewHero(self.heroResource, HeroModelType.Basic)
                self.heroMenuView:ChangeStatHero()
            end, SmartPoolUtils.LogicCodeNotification, nil, true)
end

function UIHeroSkin:EnableShowSkinToggle(isEnable)

end