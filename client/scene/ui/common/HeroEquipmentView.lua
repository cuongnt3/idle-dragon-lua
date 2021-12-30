require "lua.client.scene.ui.home.uiHeroMenu2.UISlotEquip"

--- @class HeroEquipmentView
HeroEquipmentView = Class(HeroEquipmentView)

function HeroEquipmentView:Ctor(transform)
    --- @type HeroEquipmentViewConfig
    self.config = UIBaseConfig(transform)

    ---@type UnityEngine_GameObject
    self.particleUnlock = nil
    ---@type UnityEngine_GameObject
    self.particleLockStone = nil
    ---@type UnityEngine_GameObject
    self.particleLockTalent = nil

    --- @type ItemIconView
    self.stone = nil
    --- @type ItemIconView
    self.talent = nil

    self.allowEquip = false

    self:InitSlots()
end

--- @param anchor UnityEngine_RectTransform
function HeroEquipmentView:EnableParticleUnlock(anchor, isEnable)
    if isEnable == true then
        if self.particleUnlock == nil then
            self.particleUnlock = ResourceLoadUtils.LoadUIEffect("fx_ui_equip_unlock", anchor)
        else
            UIUtils.SetParent(self.particleUnlock.transform, anchor)
        end
        self.particleUnlock.gameObject:SetActive(true)
    else
        if self.particleUnlock ~= nil then
            self.particleUnlock.gameObject:SetActive(false)
        end
    end
end

function HeroEquipmentView:EnableParticleLockStone(isEnable)
    if isEnable == true then
        if self.particleLockStone == nil then
            self.particleLockStone = ResourceLoadUtils.LoadUIEffect("fx_ui_equip_iconlock", self.config.stone)
        end
        self.particleLockStone.gameObject:SetActive(true)
    else
        if self.particleLockStone ~= nil then
            self.particleLockStone.gameObject:SetActive(false)
        end
    end
end

function HeroEquipmentView:EnableParticleLockTalent(isEnable)
    if isEnable == true then
        if self.particleLockTalent == nil then
            self.particleLockTalent = ResourceLoadUtils.LoadUIEffect("fx_ui_equip_iconlock", self.config.talentItemAnchor)
        end
        self.particleLockTalent.gameObject:SetActive(true)
    else
        if self.particleLockTalent ~= nil then
            self.particleLockTalent.gameObject:SetActive(false)
        end
    end
end

function HeroEquipmentView:AllowEquip(allow)
    self.allowEquip = allow
end

function HeroEquipmentView:InitSlots()
    ---@type UISlotEquip[]
    self.slotEquip = {}

    --- @return UISlotEquip
    local defineSlot = function(anchor, slotType)
        local uiSlotEquip = UISlotEquip(anchor)
        uiSlotEquip.config.button.onClick:AddListener(function()
            zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
            self:SelectSlot(slotType)
        end)
        self.slotEquip[slotType] = uiSlotEquip
        return uiSlotEquip
    end

    self.weapon = defineSlot(self.config.weapon, SlotEquipmentType.Weapon)
    self.armor = defineSlot(self.config.armor, SlotEquipmentType.Armor)
    self.helmet = defineSlot(self.config.helmet, SlotEquipmentType.Helm)
    self.ring = defineSlot(self.config.ring, SlotEquipmentType.Accessory)
    self.artifact = defineSlot(self.config.artifact, SlotEquipmentType.Artifact)
    self.stoneSlot = defineSlot(self.config.stone, SlotEquipmentType.Stone)
    self.talentSlot = defineSlot(self.config.talent, SlotEquipmentType.Talent)
end

function HeroEquipmentView:InitLocalization()
    self.config.textUnlockTalent.text = string.format(LanguageUtils.LocalizeCommon("unlock_star"), ResourceMgr.GetHeroRefreshTalentConfig():GetStarUnlockTalent())
    self.config.textUnlockStone.text = string.format(LanguageUtils.LocalizeCommon("unlock_level"), 40)
end

function HeroEquipmentView:EnableTalentSlot(isEnable)
    self.config.talent.gameObject:SetActive(isEnable)
end

--- @param heroResource HeroResource
function HeroEquipmentView:ShowItems(heroResource, onSelectItem)
    self.heroResource = heroResource
    self.onSelectItem = onSelectItem

    local itemDict = heroResource.heroItem

    self:EnableParticleLockStone(false)

    self:EnableParticleLockTalent(false)

    for i = 1, SlotEquipmentType.Artifact do
        self:SetItemSlot(i, itemDict:Get(i))
    end

    self:ShowStone(heroResource, itemDict:Get(SlotEquipmentType.Stone))

    self:ShowTalent(heroResource, itemDict:Get(SlotEquipmentType.Talent))
end

function HeroEquipmentView:ShowStone(heroResource, stoneId)
    if stoneId ~= nil and stoneId > 0 then
        if self.stone == nil then
            self.stone = SmartPool.Instance:SpawnLuaUIPool(UIPoolType.ItemIconView, self.config.stone)
        end
        self.stone.config.gameObject:SetActive(true)
        self.stone:SetIconData(ItemIconData.CreateInstance(ResourceType.ItemStone, stoneId))
    else
        if self.stone ~= nil then
            self.stone.config.gameObject:SetActive(false)
        end
        if heroResource.heroLevel >= 40 then
            self.config.textUnlockStone.gameObject:SetActive(false)

            self:EnableParticleLockStone(self.allowEquip)
        else
            self.config.textUnlockStone.gameObject:SetActive(self.allowEquip)
        end
    end
end

function HeroEquipmentView:ShowTalent(heroResource, talentId)
    if talentId and talentId > 0 then
        if self.talent == nil then
            self.talent = SmartPool.Instance:SpawnLuaUIPool(UIPoolType.ItemIconView, self.config.talentItemAnchor)
            self.talent:ActiveBorderTalent(true)
        end
        self.talent.config.gameObject:SetActive(true)
        self.talent:SetIconData(ItemIconData.CreateInstance(ResourceType.Talent, talentId))
    else
        if self.talent ~= nil then
            self.talent.config.gameObject:SetActive(false)
        end
        if heroResource.heroStar >= 13 then
            self.config.textUnlockTalent.gameObject:SetActive(false)

            self:EnableParticleLockTalent(self.allowEquip)
        else
            self.config.textUnlockTalent.gameObject:SetActive(self.allowEquip)
        end
    end
end

--- @param slotEquipmentType SlotEquipmentType
--- @param itemId number
function HeroEquipmentView:SetItemSlot(slotEquipmentType, itemId)
    ---@type UISlotEquip
    local slot = self.slotEquip[slotEquipmentType]
    if slot == nil then
        return
    end
    if itemId ~= nil and itemId > 0 then
        if slot.itemEquipView == nil then
            slot.itemEquipView = SmartPool.Instance:SpawnLuaUIPool(UIPoolType.ItemIconView, slot.config.transform)
        end
        slot.itemEquipView.config.gameObject:SetActive(true)
        local sortId = itemId
        if slotEquipmentType <= SlotEquipmentType.Accessory then
            slot.itemEquipView:SetIconData(ItemIconData.CreateInstance(ResourceType.ItemEquip, itemId))
            sortId = self:GetIdMaxTier(slotEquipmentType, itemId)
        elseif slotEquipmentType == SlotEquipmentType.Artifact then
            slot.itemEquipView:SetIconData(ItemIconData.CreateInstance(ResourceType.ItemArtifact, itemId))
            sortId = self:GetIdMaxArtifact(itemId)
        elseif slotEquipmentType == SlotEquipmentType.Talent then
            slot.itemEquipView:SetIconData(ItemIconData.CreateInstance(ResourceType.Talent, itemId))
        end
        slot.itemEquipView:ActiveNotification(sortId ~= itemId and self.allowEquip)
    else
        if slot.itemEquipView ~= nil then
            slot.itemEquipView:ReturnPool()
            slot.itemEquipView = nil
        end
    end
end

---@return number
---@param equipmentType number
---@param idDefault number
function HeroEquipmentView:GetIdMaxTier(equipmentType, idDefault)
    local items = InventoryUtils.GetEquipment(equipmentType, 1)
    local count = items:Count()
    local sortId = idDefault
    local tier = -1
    if sortId ~= nil then
        tier = ResourceMgr.GetServiceConfig():GetItems().equipmentDataEntries:Get(sortId).tier
    end
    if count > 0 then
        local id = items:Get(1)
        local newTier = ResourceMgr.GetServiceConfig():GetItems().equipmentDataEntries:Get(id).tier
        if sortId == nil or (newTier > tier) or (newTier == tier and (ResourceMgr.GetServiceConfig():GetItems().equipmentDataEntries:IsContainKey(sortId - 1) or ResourceMgr.GetServiceConfig():GetItems().equipmentDataEntries.IsContainKey(sortId + 1))) then
            sortId = id
            tier = newTier
        end
    end
    return sortId
end

---@return number
---@param idDefault number
function HeroEquipmentView:GetIdMaxArtifact(idDefault)
    local items = InventoryUtils.GetArtifact(1)
    local count = items:Count()
    local sortId = idDefault
    if count > 0 then
        local id = items:Get(1)
        if sortId ~= nil then
            local tempId = items:Get(1)
            if sortId ~= tempId then
                local artifactDataEntries = ResourceMgr.GetServiceConfig():GetItems().artifactDataEntries
                local item1 = artifactDataEntries:Get(sortId)
                local item2 = artifactDataEntries:Get(tempId)
                if (item2.rarity > item1.rarity) or (item2.rarity == item1.rarity and item2.star > item1.star) then
                    sortId = tempId
                end
            end
        else
            sortId = id
        end
    end
    return sortId
end

function HeroEquipmentView:OnHide()
    self:HideEquip()
end

function HeroEquipmentView:HideEquip()
    if self.stone ~= nil then
        self.stone:ReturnPool()
        self.stone = nil
    end
    if self.talent ~= nil then
        self.talent:ReturnPool()
        self.talent = nil
    end
    for slotEquipmentType = 1, SlotEquipmentType.Artifact do
        ---@type UISlotEquip
        local slot = self.slotEquip[slotEquipmentType]
        if slot.itemEquipView ~= nil then
            slot.itemEquipView:ReturnPool()
            slot.itemEquipView = nil
        end
    end
end

---@return void
---@param slotEquipmentType SlotEquipmentType
function HeroEquipmentView:SelectSlot(slotEquipmentType)
    if self.onSelectItem ~= nil then
        self.onSelectItem(slotEquipmentType)
    end
end

function HeroEquipmentView:EnableIconPlus(isEnable)
    --- @param v UISlotEquip
    for k, v in pairs(self.slotEquip) do
        v:ActiveAddImage(isEnable)
    end
end