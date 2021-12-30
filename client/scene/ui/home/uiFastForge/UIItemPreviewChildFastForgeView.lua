

--- @class UIItemPreviewChildFastForgeView
UIItemPreviewChildFastForgeView = Class(UIItemPreviewChildFastForgeView)

--- @return void
--- @param transform UnityEngine_Transform
function UIItemPreviewChildFastForgeView:Ctor(transform)
    ---@type UIItemPreviewChildFastForgeConfig
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
end

--- @return void
--- @param data {type, id, setNumber, button1{name, callback}, button2{name, callback}, callbackReplace, info, input{number, min, max, onChangeInput}, moneyType}
function UIItemPreviewChildFastForgeView:Show(data)
    local color = UIUtils.color_rarity_1
    self.type = data.type
    self.id = data.id
    self.class = data.class
    self.faction = data.faction
    self.setNumber = data.setNumber
    self.rate = data.rate
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
    --for i = 1, self.config.textContent.childCount - 1 do
    --    self.config.textContent:GetChild(i).gameObject:SetActive(false)
    --end
    local textContent = self.config.textContent:GetChild(0):GetComponent(ComponentName.UnityEngine_UI_Text)
    if self.type == ResourceType.ItemEquip
            or self.type == ResourceType.ItemStone
            or self.type == ResourceType.ItemArtifact
            or self.type == ResourceType.Skin
            or self.type == ResourceType.Talent then
        LanguageUtils.SetDescriptionItemData(self.config.textContent, self.type, self.id, self.faction, self.class, self.setNumber)
        local rarity = ResourceMgr.GetServiceConfig():GetItemRarity(data.type, data.id)
        color = UIUtils.GetColorRarity(rarity)
        textContent.gameObject:SetActive(false)
        Coroutine.start(function()
            coroutine.waitforendofframe()

            textContent.gameObject:SetActive(true)

        end)
        --self.config.textSkillName.text = string.format("<color=#%s>%s</color>", color, self.config.textSkillName.text)
        --self.config.textActiveSkill.text = string.format("<color=#%s>%s</color>", color, self.config.textActiveSkill.text)
    else
        ---@type UnityEngine_UI_Text
        textContent.text = LanguageUtils.GetStringResourceInfo(self.type, self.id)
    end
    self.config.textContent.gameObject:SetActive(true)
end

--- @return void
function UIItemPreviewChildFastForgeView:Hide()
    self:_ReturnPoolIconView()
end

--- @return void
function UIItemPreviewChildFastForgeView:_ReturnPoolIconView()
    if self.iconView ~= nil then
        --XDebug.Log("_ReturnPoolIconView" .. LogUtils.ToDetail(self.iconView.iconData))
        self.iconView:ReturnPool()
        self.iconView = nil
        --XDebug.Log("UIItemPreviewChildView:_ReturnPoolIconView")
    end
end