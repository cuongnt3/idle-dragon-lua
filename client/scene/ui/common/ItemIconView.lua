--- @class ItemIconView : MotionIconView
ItemIconView = Class(ItemIconView, MotionIconView)

--- @return void
function ItemIconView:Ctor()
    MotionIconView.Ctor(self)
end
--- @return void
function ItemIconView:SetPrefabName()
    self.prefabName = 'item_icon_view'
    self.uiPoolType = UIPoolType.ItemIconView
end

--- @return void
--- @param transform UnityEngine_Transform
function ItemIconView:SetConfig(transform)
    MotionIconView.SetConfig(self, transform)
    ---@type ItemIconConfig
    self.config = UIBaseConfig(transform)
end

--- @return void
--- @param iconData ItemIconData
function ItemIconView:SetIconData(iconData)
    assert(iconData)
    --- @type ItemIconData
    self.iconData = ItemIconData.Clone(iconData)
    self:UpdateView()
    self:DefaultShow()
end

--- @return void
---@param func function
function ItemIconView:AddListener(func)
    self:EnableButton(true)
    self.config.button.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        if func then
            func()
        end
    end)
end

--- @return void
function ItemIconView:RemoveAllListeners()
    self:EnableButton(false)
    self.config.button.onClick:RemoveAllListeners()
end

--- @return void
--- @param enabled boolean
function ItemIconView:EnableButton(enabled)
    if self.config.frame ~= nil then
        self.config.frame.raycastTarget = enabled
    else
        self.config.item.raycastTarget = enabled
    end
    UIUtils.SetInteractableButton(self.config.button, enabled)
end

--- @return void
function ItemIconView:UpdateView()
    self:_SetIcon(self.iconData.itemId)
    self:_SetStar(self.iconData.star)
    self:_SetQuantity(self.iconData.quantity)
    self:_SetRarity(self.iconData.rarity)
    self:_SetFaction()
end

--- @return void
function ItemIconView:ReturnPool()
    MotionIconView.ReturnPool(self)
end

---@return void
function ItemIconView:GetPathEquipment()
    return ResourceLoadUtils.iconEquipments
end

---@return void
function ItemIconView:GetPathArtifact()
    return ResourceLoadUtils.iconArtifacts
end

---@return void
function ItemIconView:GetPathCurrency()
    return ResourceLoadUtils.iconCurrencies
end

---@return void
---@param id number
function ItemIconView:_SetIcon(id)
    local sprite
    if self.id == -1 then
        sprite = ResourceLoadUtils.LoadTexture("IconRandom", "rd", ComponentName.UnityEngine_Sprite)
    else
        if self.iconData.type == ResourceType.ItemEquip then
            if id ~= nil and id > 0 then
                sprite = ResourceLoadUtils.LoadSpriteFromAtlas(self:GetPathEquipment(), id)
            else
                sprite = ResourceLoadUtils.LoadSpriteFromAtlas(ResourceLoadUtils.equipmentRandom, self.iconData.rarity)
            end
        elseif self.iconData.type == ResourceType.ItemArtifact then
            if id ~= nil and id > 0 then
                sprite = ResourceLoadUtils.LoadSpriteFromAtlas(self:GetPathArtifact(), math.floor(id / 1000))
            else
                sprite = ResourceLoadUtils.LoadSpriteFromAtlas(ResourceLoadUtils.artifactFragments, self.iconData.rarity)
            end
        elseif self.iconData.type == ResourceType.ItemStone then
            ---@type StoneDataConfig
            local stoneData = ResourceMgr.GetServiceConfig():GetItems().stoneDataEntries:Get(id)
            if stoneData ~= nil then
                sprite = ResourceLoadUtils.LoadStonesIcon(stoneData.rarity, stoneData.subId)
            else
                XDebug.Error("stoneData ~= nil id:" .. id)
            end
        elseif self.iconData.type == ResourceType.Talent then
            sprite = ResourceLoadUtils.LoadSpriteFromAtlas(ResourceLoadUtils.iconTalent, id)
        elseif self.iconData.type == ResourceType.ItemFragment then
            sprite = ResourceLoadUtils.LoadSpriteFromAtlas(ResourceLoadUtils.artifactFragments, id)
        elseif self.iconData.type == ResourceType.SummonerExp then
            sprite = ResourceLoadUtils.LoadSpriteFromAtlas(ResourceLoadUtils.iconCurrencies, "exp")
        elseif self.iconData.type == ResourceType.Money then
            sprite = ResourceLoadUtils.LoadSpriteFromAtlas(self:GetPathCurrency(), id)
        else
            sprite = ResourceLoadUtils.LoadSpriteFromAtlas(ResourceLoadUtils.iconCurrencies, -1)
        end
    end
    self.config.item.sprite = sprite
end

--- @return void
--- @param _rarity number
function ItemIconView:_SetRarity(_rarity)
    if self.config.frame ~= nil then
        local rarity = _rarity
        if rarity == nil then
            rarity = 1
        end
        if self.iconData.type == ResourceType.Money then
            self.config.frame.sprite = ResourceLoadUtils.LoadSpriteFromAtlas(ResourceLoadUtils.frameItem, "currency_" .. rarity)
        elseif self.iconData.type == ResourceType.ItemEquip or self.iconData.type == ResourceType.ItemStone or self.iconData.type == ResourceType.ItemArtifact then
            self.config.frame.sprite = ResourceLoadUtils.LoadSpriteFromAtlas(ResourceLoadUtils.frameItem, "item_" .. rarity)
        else
            self.config.frame.sprite = ResourceLoadUtils.LoadSpriteFromAtlas(ResourceLoadUtils.frameItem, "currency_1")
        end
    end
end

--- @return void
--- @param star number
function ItemIconView:_SetStar(star)
    if star ~= nil and star > 0 then
        self.config.starImage.gameObject:SetActive(true)
        UIUtils.SlideImageVertical(self.config.starImage, star)
    else
        self.config.starImage.gameObject:SetActive(false)
    end
end

--- @return void
--- @param quantity number
function ItemIconView:_SetQuantity(quantity)
    if quantity == nil then
        self.config.number.gameObject:SetActive(false)
    else
        self.config.number.gameObject:SetActive(true)
        self.config.number.text = ClientConfigUtils.FormatNumber(quantity)
        --IconView.SetTextTestValue(self, quantity)
        UIUtils.SetTextTestValue(self.config, quantity)
    end
end

--- @return void
--- @param id number
function ItemIconView:_SetFaction()
    if self.config.faction ~= nil then
        self.config.faction.gameObject:SetActive(false)
        if self.iconData.type == ResourceType.ItemArtifact then
            ---@type {itemData}
            local itemData = ResourceMgr.GetServiceConfig():GetItemData(self.iconData.type, self.iconData.itemId)
            ---@param v StatChangerItemOption
            for _, v in pairs(itemData.optionList:GetItems()) do
                if v.type == ItemOptionType.STAT_CHANGE and v.affectedHeroFaction:Count() > 0 then
                    self.config.faction.gameObject:SetActive(true)
                    self.config.faction.sprite = ResourceLoadUtils.LoadFactionIcon(v.affectedHeroFaction:Get(1))
                    break
                end
            end
        end
    end
end

function ItemIconView:_SetTittleDesc(tittle, desc)
end

--- @return void
function ItemIconView:ShowInfo()
    if self.iconData ~= nil then
        PopupMgr.ShowPopup(UIPopupName.UIItemPreview, { ["data1"] = {["type"] = self.iconData.type, ["id"] = self.iconData.itemId, ["rate"] = self.rate}})
    end
end

return ItemIconView


