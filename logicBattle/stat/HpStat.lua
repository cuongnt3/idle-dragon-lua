--- @class HpStat : BaseHeroStatIntegral
HpStat = Class(HpStat, BaseHeroStatIntegral)

--- @return void
--- @param hero BaseHero
function HpStat:Ctor(hero)
    BaseHeroStat.Ctor(self, hero, StatType.HP, StatValueType.RAW)

    --- @type boolean
    self.isDead = false

    --- @type boolean
    self.canRevive = true

    --- @type List<DamageItemOption>
    self.damageItemOptionList = List()
end

--- @return void
function HpStat:Calculate()
    if self.myHero.battle.battlePhase == BattlePhase.PREPARE_BATTLE then
        BaseHeroStatIntegral.Calculate(self)
        self:SetStatPercent(self.myHero.startState:GetHpPercent())
    else
        local statPercent = self:GetStatPercent()
        BaseHeroStatIntegral.Calculate(self)

        self._totalValue = math.floor(statPercent * self._maxValue)
    end
end

--- @return void
--- @param itemOption DamageItemOption
function HpStat:AddDamageItemOption(itemOption)
    self.damageItemOptionList:Add(itemOption)
end
---------------------------------------- Getters ----------------------------------------
--- @return boolean
function HpStat:IsDead()
    return self.isDead
end

--- @return boolean
function HpStat:CanHeal()
    return self.myHero.effectController:CanHeal()
end

--- @return boolean
function HpStat:CanRevive()
    return self.canRevive
end

--- @return string
function HpStat:ToString()
    return string.format("hp = %s/%s\n", self:GetValue(), self._maxValue)
end

---------------------------------------- Setters ----------------------------------------
--- @return number damage
--- @param initiator BaseHero
--- @param reason TakeDamageReason
--- @param damage number
function HpStat:TakeDamage(initiator, reason, damage)
    if self.isDead == false then
        damage = self:OnTakeDamage(initiator, reason, damage)
        self._totalValue = self._totalValue - damage
        self:_LimitStat()

        if self:IsMin() then
            self:Dead(initiator, reason)
        end
        EventUtils.TriggerEventTakeDamage(initiator, self.myHero, reason, damage)

        return damage
    end

    return 0
end

--- @return boolean, number healAmount
--- @param initiator BaseHero
--- @param reason HealReason
--- @param healAmount number
function HpStat:Heal(initiator, reason, healAmount)
    if self.isDead == false and self:CanHeal() then
        healAmount = self:OnHeal(initiator, reason, healAmount)
        self._totalValue = self._totalValue + healAmount
        self:_LimitStat()

        return true, healAmount
    end

    return false, 0
end

--- @return void
--- @param initiator BaseHero
--- @param reason TakeDamageReason
function HpStat:Dead(initiator, reason)
    if self.isDead == false then
        self.isDead = true

        self:SetToMin()
        self.myHero.power:SetToMin()
        self.myHero.effectController:OnDead()

        EventUtils.TriggerEventDead(initiator, self.myHero, reason)
    end
end

--- @return boolean
--- @param initiator BaseHero
function HpStat:Revive(initiator)
    if self.isDead == true and self.canRevive == true and
            self.myHero.effectController:IsContainEffectType(EffectType.CURSE_MARK) == false then
        self.isDead = false

        self:Calculate()
        self:SetToMax()
        self.myHero.power:SetToMin()
        self.myHero.effectController:OnRevive()

        EventUtils.TriggerEventRevive(initiator, self.myHero)
        return true
    end

    return false
end

--- @return void
--- @param canRevive boolean
function HpStat:SetCanRevive(canRevive)
    self.canRevive = canRevive
end

---------------------------------------- Helpers ----------------------------------------
--- @return number
--- @param initiator BaseHero
--- @param reason TakeDamageReason
--- @param damage number
function HpStat:OnTakeDamage(initiator, reason, damage)
    damage = math.floor(self.myHero.effectController.effectListener:OnTakeDamage(initiator, reason, damage))
    damage = math.floor(self.myHero.battle.bondManager:OnTakeDamage(initiator, self.myHero, reason, damage))
    damage = math.floor(self.myHero.effectController.effectListener:OnLastChance(initiator, reason, damage))

    for i = 1, self.damageItemOptionList:Count() do
        local itemOption = self.damageItemOptionList:Get(i)
        damage = MathUtils.Truncate(itemOption:CalculateDamage(initiator, damage))
    end

    if damage < 0 then
        damage = 0
    end
    return damage
end

--- @return number
--- @param initiator BaseHero
--- @param reason HealReason
--- @param healAmount number
function HpStat:OnHeal(initiator, reason, healAmount)
    healAmount = math.floor(self.myHero.effectController.effectListener:OnHeal(initiator, reason, healAmount))

    if healAmount < 0 then
        healAmount = 0
    end
    return MathUtils.Truncate(healAmount)
end