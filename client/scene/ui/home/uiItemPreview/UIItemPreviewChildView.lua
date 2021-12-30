--- @class UIItemPreviewChildView
UIItemPreviewChildView = Class(UIItemPreviewChildView)

--- @return void
--- @param transform UnityEngine_Transform
function UIItemPreviewChildView:Ctor(transform)
    ---@type UIItemPreviewChildConfig
    self.config = UIBaseConfig(transform)
    ---@type IconView
    self.iconView = nil
    ---@type ResourceType
    self.type = nil
    ---@type number
    self.id = nil
    ---@type number
    self.setNumber = nil
    ---@type number
    self.class = nil
    ---@type number
    self.faction = nil
    ---@type {name, callback}
    self.buttonData1 = nil
    ---@type {name, callback}
    self.buttonData2 = nil

    ---@type InputNumberView
    self.inputView = nil
    ---@type MoneyBarLocalView
    self.moneyBarView = MoneyBarLocalView(self.config.moneyBarInfo)

    self.config.localizeUpgrade.text = LanguageUtils.LocalizeCommon("upgrade")
end

--- @return void
--- @param data {type, id, setNumber, button1{name, callback}, button2{name, callback}, callbackReplace, info, input{number, min, max, onChangeInput}, moneyType}
function UIItemPreviewChildView:Show(data)
    self.config.localizeReplace.text = LanguageUtils.LocalizeCommon("replace")
    local color = UIUtils.color_rarity_1
    self.type = data.type
    self.id = data.id
    self.class = data.class
    self.faction = data.faction
    self.setNumber = data.setNumber
    self.rate = data.rate
    if data.moneyType ~= nil then
        self.config.moneyBarInfo.parent.gameObject:SetActive(true)
        self:SetMoneyBar(data.moneyType)
    else
        self.config.moneyBarInfo.parent.gameObject:SetActive(false)
    end
    if data.input ~= nil then
        self.config.input.parent.gameObject:SetActive(true)
        self:SetDataInput(data.input)
    else
        self.config.input.parent.gameObject:SetActive(false)
    end
    if self.rate ~= nil then
        self.config.textRate.gameObject:SetActive(true)
        self.config.textRate.text = string.format(LanguageUtils.LocalizeCommon("rate_x"), self.rate * 100)
    else
        self.config.textRate.gameObject:SetActive(false)
    end
    self.iconView = SmartPool.Instance:SpawnLuaUIPool(UIPoolType.RootIconView, self.config.itemEquipInfo)
    self.iconView:SetIconData(ItemIconData.CreateInstance(self.type, self.id))

    self.config.textSkillName.text = LanguageUtils.GetStringResourceName(self.type, self.id)
    self.config.textActiveSkill.text = LanguageUtils.GetStringResourceType(self.type, self.id)


    for i = 1, self.config.textContent.childCount - 1 do
        self.config.textContent:GetChild(i).gameObject:SetActive(false)
    end
    if self.type == ResourceType.ItemEquip
            or self.type == ResourceType.ItemStone
            or self.type == ResourceType.ItemArtifact
            or self.type == ResourceType.Skin
            or self.type == ResourceType.Talent then
        LanguageUtils.SetDescriptionItemData(self.config.textContent, self.type, self.id, self.faction, self.class, self.setNumber)
        local rarity = ResourceMgr.GetServiceConfig():GetItemRarity(data.type, data.id)
        color = UIUtils.GetColorRarity(rarity)
        --self.config.textSkillName.text = string.format("<color=#%s>%s</color>", color, self.config.textSkillName.text)
        --self.config.textActiveSkill.text = string.format("<color=#%s>%s</color>", color, self.config.textActiveSkill.text)
    else
        ---@type UnityEngine_UI_Text
        local textContent = self.config.textContent:GetChild(0):GetComponent(ComponentName.UnityEngine_UI_Text)
        textContent.gameObject:SetActive(true)
        textContent.text = LanguageUtils.GetStringResourceInfo(self.type, self.id)
    end
    if self.type == ResourceType.Talent then
        self.iconView:ActiveBorderTalent(true)
    end

    self.buttonData1 = data.button1
    self.buttonData2 = data.button2
    if self.buttonData1 == nil and self.buttonData2 == nil then
        self.config.button.gameObject:SetActive(false)
    else
        self.config.button.gameObject:SetActive(true)
        self:_SetDataButton(self.buttonData1, self.config.button1)
        self:_SetDataButton(self.buttonData2, self.config.button2)
    end

    if data.callbackReplace == nil then
        self.config.buttonReplace.gameObject:SetActive(false)
    else
        self.config.buttonReplace.gameObject:SetActive(true)
        self.config.buttonReplace.onClick:RemoveAllListeners()
        self.config.buttonReplace.onClick:AddListener(function()
            data.callbackReplace()
        end)
    end
    Coroutine.start(function()
        coroutine.waitforendofframe()
        self.config.bgFilterPanel.enabled = false
        self.config.bgFilterPanel.enabled = true
        coroutine.waitforendofframe()
        self.config.bgFilterPanel.enabled = false
        self.config.bgFilterPanel.enabled = true
    end)
end

--- @return void
---@param input {number, min, max, onChangeInput}
function UIItemPreviewChildView:SetDataInput(input)
    if self.inputView == nil then
        self.inputView = SmartPool.Instance:SpawnLuaUIPool(UIPoolType.InputNumberView, self.config.input)
        local changeInput = function(value)
            if input.onChangeInput ~= nil then
                input.onChangeInput(value, self.moneyBarView)
            end
        end
        self.inputView.onChangeInput = changeInput
    end
    self.inputView:SetData(input.number, input.min, input.max)
end

--- @return void
function UIItemPreviewChildView:SetMoneyBar(moneyType)
    self.moneyBarView:SetIconData(moneyType)
end

--- @return void
--- @param data {name, callback}
--- @param button UnityEngine_UI_Button
function UIItemPreviewChildView:_SetDataButton(data, button)
    if data == nil then
        button.gameObject:SetActive(false)
    else
        button.gameObject:SetActive(true)
        ---@type UnityEngine_UI_Text
        local text = button.transform:GetChild(0):GetComponent(ComponentName.UnityEngine_UI_Text)
        if text ~= nil and data.name ~= nil then
            text.text = data.name
        end
        button.onClick:RemoveAllListeners()
        if data.callback ~= nil then
            button.onClick:AddListener(function()
                data.callback()
                zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
            end)
        end
    end
end

--- @return void
function UIItemPreviewChildView:Hide()
    self:_ReturnPoolIconView()
    self.config.button1.onClick:RemoveAllListeners()
    self.config.button2.onClick:RemoveAllListeners()
    if self.inputView ~= nil then
        self.inputView:ReturnPool()
        self.inputView = nil
    end
end

--- @return void
function UIItemPreviewChildView:_ReturnPoolIconView()
    if self.iconView ~= nil then
        --XDebug.Log("_ReturnPoolIconView" .. LogUtils.ToDetail(self.iconView.iconData))
        self.iconView:ReturnPool()
        self.iconView = nil
        --XDebug.Log("UIItemPreviewChildView:_ReturnPoolIconView")
    end
end