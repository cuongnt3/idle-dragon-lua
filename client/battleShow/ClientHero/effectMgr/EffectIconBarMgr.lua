--- @class EffectIconBarMgr
EffectIconBarMgr = Class(EffectIconBarMgr)

--- @param clientHeroEffectMgr ClientHeroEffectMgr
function EffectIconBarMgr:Ctor(clientHeroEffectMgr)
    self.clientHeroEffectMgr = clientHeroEffectMgr
    self.clientBattleShowController = clientHeroEffectMgr.clientBattleShowController
    self.uiHeroStatusBar = clientHeroEffectMgr.uiHeroStatusBar

    --- @type Dictionary {EffectTypeLog, UIBattleEffectIcon}
    self.buffEffectIconDictionary = Dictionary()
    --- @type Dictionary {EffectTypeLog, UIBattleEffectIcon}
    self.debuffEffectIconDictionary = Dictionary()

    --- @type List<UIBattleEffectIcon>
    self.listTier1BattleEffectIcon = List()
    --- @type List<UIBattleEffectIcon>
    self.listTier2BattleEffectIcon = List()
    --- @type List<UIBattleEffectIcon>
    self.listTier3BattleEffectIcon = List()
    --- @type List<UIBattleEffectIcon>
    self.listOtherTierBattleEffectIcon = List()
end

--- @param effectLogType EffectLogType
--- @param clientEffectDetail ClientEffectDetail
function EffectIconBarMgr:UpdateEffectIconType(effectLogType, clientEffectDetail)
    local buffCount = clientEffectDetail.buff
    --- @type UIBattleEffectIcon
    local buffEffectIcon = self.buffEffectIconDictionary:Get(effectLogType)
    if buffEffectIcon ~= nil then
        if buffCount > 0 then
            buffEffectIcon:SetStack(buffCount)
            self:SwapEffectIndexByStackChanged(buffEffectIcon, effectLogType)
        else
            buffEffectIcon:Release()
            self.buffEffectIconDictionary:RemoveByKey(effectLogType)
            self:RemoveUIBattleEffectIcon(buffEffectIcon, effectLogType)
        end
    else
        if buffCount > 0 then
            buffEffectIcon = self.clientBattleShowController:GetBattleEffectIcon(effectLogType, true)
            buffEffectIcon:SetStack(buffCount)
            self.buffEffectIconDictionary:Add(effectLogType, buffEffectIcon)
            self.uiHeroStatusBar:AddEffectIcon(buffEffectIcon)

            self:SeprateEffectByTier(buffEffectIcon, effectLogType)
        end
    end

    local debuffCount = clientEffectDetail.debuff
    --- @type UIBattleEffectIcon
    local debuffEffectIcon = self.debuffEffectIconDictionary:Get(effectLogType)
    if debuffEffectIcon ~= nil then
        if debuffCount > 0 then
            debuffEffectIcon:SetStack(debuffCount)
            self:SwapEffectIndexByStackChanged(debuffEffectIcon, effectLogType)
        else
            debuffEffectIcon:Release()
            self.debuffEffectIconDictionary:RemoveByKey(effectLogType)
            self:RemoveUIBattleEffectIcon(debuffEffectIcon, effectLogType)
        end
    else
        if debuffCount > 0 then
            debuffEffectIcon = self.clientBattleShowController:GetBattleEffectIcon(effectLogType, false)
            debuffEffectIcon:SetStack(debuffCount)
            self.debuffEffectIconDictionary:Add(effectLogType, debuffEffectIcon)
            self.uiHeroStatusBar:AddEffectIcon(debuffEffectIcon)

            self:SeprateEffectByTier(debuffEffectIcon, effectLogType)
        end
    end
    self.uiHeroStatusBar:UpdateStatusBar()
    self:SerializeEffectIcon()
end

function EffectIconBarMgr:SerializeEffectIcon()
    for i = 1, self.listOtherTierBattleEffectIcon:Count() do
        self.listOtherTierBattleEffectIcon:Get(i):SetAsFirstSibling()
    end
    for i = 1, self.listTier3BattleEffectIcon:Count() do
        self.listTier3BattleEffectIcon:Get(i):SetAsFirstSibling()
    end
    for i = 1, self.listTier2BattleEffectIcon:Count() do
        self.listTier2BattleEffectIcon:Get(i):SetAsFirstSibling()
    end
    for i = 1, self.listTier1BattleEffectIcon:Count() do
        self.listTier1BattleEffectIcon:Get(i):SetAsFirstSibling()
    end
end

function EffectIconBarMgr:SwapEffectIndexByStackChanged(uiBattleEffectIcon, effectLogType)
    local effectTier = ClientConfigUtils.GetEffectTier(effectLogType)
    if effectTier == 1
            and self.listTier1BattleEffectIcon:Count() > 1 then
        local itemAtLastIndex = self.listTier1BattleEffectIcon:Get(self.listTier1BattleEffectIcon:Count())
        if itemAtLastIndex ~= uiBattleEffectIcon then
            for i = 1, self.listTier1BattleEffectIcon:Count() do
                if self.listTier1BattleEffectIcon:Get(i) == uiBattleEffectIcon then
                    self.listTier1BattleEffectIcon:SetItemAtIndex(uiBattleEffectIcon, self.listTier1BattleEffectIcon:Count())
                    self.listTier1BattleEffectIcon:SetItemAtIndex(itemAtLastIndex, i)
                    return
                end
            end
        end
    elseif effectTier == 2
            and self.listTier2BattleEffectIcon:Count() > 1 then
        local itemAtLastIndex = self.listTier2BattleEffectIcon:Get(self.listTier2BattleEffectIcon:Count())
        if itemAtLastIndex ~= uiBattleEffectIcon then
            for i = 1, self.listTier2BattleEffectIcon:Count() do
                if self.listTier2BattleEffectIcon:Get(i) == uiBattleEffectIcon then
                    self.listTier2BattleEffectIcon:SetItemAtIndex(uiBattleEffectIcon, self.listTier2BattleEffectIcon:Count())
                    self.listTier2BattleEffectIcon:SetItemAtIndex(itemAtLastIndex, i)
                    return
                end
            end
        end
    elseif effectTier == 3
            and self.listTier3BattleEffectIcon:Count() > 1 then
        local itemAtLastIndex = self.listTier3BattleEffectIcon:Get(self.listTier3BattleEffectIcon:Count())
        if itemAtLastIndex ~= uiBattleEffectIcon then
            for i = 1, self.listTier3BattleEffectIcon:Count() do
                if self.listTier3BattleEffectIcon:Get(i) == uiBattleEffectIcon then
                    self.listTier3BattleEffectIcon:SetItemAtIndex(uiBattleEffectIcon, self.listTier3BattleEffectIcon:Count())
                    self.listTier3BattleEffectIcon:SetItemAtIndex(itemAtLastIndex, i)
                    return
                end
            end
        end
    elseif self.listOtherTierBattleEffectIcon:Count() > 1 then
        local itemAtLastIndex = self.listOtherTierBattleEffectIcon:Get(self.listOtherTierBattleEffectIcon:Count())
        if itemAtLastIndex ~= uiBattleEffectIcon then
            for i = 1, self.listOtherTierBattleEffectIcon:Count() do
                if self.listOtherTierBattleEffectIcon:Get(i) == uiBattleEffectIcon then
                    self.listOtherTierBattleEffectIcon:SetItemAtIndex(uiBattleEffectIcon, self.listOtherTierBattleEffectIcon:Count())
                    self.listOtherTierBattleEffectIcon:SetItemAtIndex(itemAtLastIndex, i)
                    return
                end
            end
        end
    end
end

--- @param uiBattleEffectIcon UIBattleEffectIcon
--- @param effectLogType EffectLogType
function EffectIconBarMgr:RemoveUIBattleEffectIcon(uiBattleEffectIcon, effectLogType)
    local effectTier = ClientConfigUtils.GetEffectTier(effectLogType)
    if effectTier == 1 then
        self.listTier1BattleEffectIcon:RemoveByReference(uiBattleEffectIcon)
    elseif effectTier == 2 then
        self.listTier2BattleEffectIcon:RemoveByReference(uiBattleEffectIcon)
    elseif effectTier == 3 then
        self.listTier3BattleEffectIcon:RemoveByReference(uiBattleEffectIcon)
    else
        self.listOtherTierBattleEffectIcon:RemoveByReference(uiBattleEffectIcon)
    end
end

--- @param uiBattleEffectIcon UIBattleEffectIcon
--- @param effectLogType EffectLogType
function EffectIconBarMgr:SeprateEffectByTier(uiBattleEffectIcon, effectLogType)
    local effectTier = ClientConfigUtils.GetEffectTier(effectLogType)
    if effectTier == 1 then
        self.listTier1BattleEffectIcon:Add(uiBattleEffectIcon)
    elseif effectTier == 2 then
        self.listTier2BattleEffectIcon:Add(uiBattleEffectIcon)
    elseif effectTier == 3 then
        self.listTier3BattleEffectIcon:Add(uiBattleEffectIcon)
    else
        self.listOtherTierBattleEffectIcon:Add(uiBattleEffectIcon)
    end
end

function EffectIconBarMgr:Release()
    for effectLogType, uiBattleEffectIcon in pairs(self.buffEffectIconDictionary:GetItems()) do
        uiBattleEffectIcon:Release()
        self.buffEffectIconDictionary:RemoveByKey(effectLogType)
    end

    for effectLogType, uiBattleEffectIcon in pairs(self.debuffEffectIconDictionary:GetItems()) do
        uiBattleEffectIcon:Release()
        self.debuffEffectIconDictionary:RemoveByKey(effectLogType)
    end
end