--- @class Hero60006_Skill4 Eitri
Hero60006_Skill4 = Class(Hero60006_Skill4, BaseSkill)

--- @return void
--- @param id number
--- @param hero BaseHero
function Hero60006_Skill4:Ctor(id, hero)
    BaseSkill.Ctor(self, id, hero)

    --- @type number
    self.healthTrigger = nil
    --- @type number
    self.statBuffDuration = nil

    --- @type number
    self.statBuffType_1 = nil
    --- @type number
    self.statBuffAmount_1 = nil

    --- @type number
    self.statBuffType_2 = nil
    --- @type number
    self.statBuffAmount_2 = nil

    --- @type number
    self.statBuffType_3 = nil
    --- @type number
    self.statBuffAmount_3 = nil

    --- @type boolean
    self.isActive = false
end

--- @return BaseSkill
--- @param id number
--- @param hero BaseHero
function Hero60006_Skill4:CreateInstance(id, hero)
    return Hero60006_Skill4(id, hero)
end

--- @return void
function Hero60006_Skill4:Init()
    self.healthTrigger = self.data.healthTrigger
    self.statBuffDuration = self.data.statBuffDuration

    self.statBuffType_1 = self.data.statBuffType_1
    self.statBuffAmount_1 = self.data.statBuffAmount_1

    self.statBuffType_2 = self.data.statBuffType_2
    self.statBuffAmount_2 = self.data.statBuffAmount_2

    self.statBufType_3 = self.data.statBufType_3
    self.statBuffAmount_3 = self.data.statBuffAmount_3

    local listener = EventListener(self.myHero, self, self.TakeDamage)
    self.myHero.battle.eventManager:AddListener(EventType.HERO_TAKE_DAMAGE, listener)
end

-------------------------------------------BATTLE------------------------------
--- @return number
--- @param eventData table
function Hero60006_Skill4:TakeDamage(eventData)
    local target = eventData.target
    --- @type HpStat
    if target == self.myHero and self.myHero:IsDead() == false then
        if self.isActive == false and self.myHero.hp:GetStatPercent() < self.healthTrigger then
            self:BuffPassive()
            self.isActive = true
        end
    end
end

--- @return void
function Hero60006_Skill4:BuffPassive()
    local effectBuffPassive = StatChangerEffect(self.myHero, self.myHero, true)
    effectBuffPassive:SetPersistentType(EffectPersistentType.EFFECT_SPECIAL_UPDATABLE)
    effectBuffPassive:SetDuration(self.statBuffDuration)
    local effectBuff_1 = StatChanger(true)
    local effectBuff_2 = StatChanger(true)
    local effectBuff_3 = StatChanger(true)

    effectBuff_1:SetInfo(self.statBuffType_1, StatChangerCalculationType.PERCENT_ADD, self.statBuffAmount_1)
    effectBuff_2:SetInfo(self.statBuffType_2, StatChangerCalculationType.PERCENT_ADD, self.statBuffAmount_2)
    effectBuff_3:SetInfo(self.statBufType_3, StatChangerCalculationType.PERCENT_ADD, self.statBuffAmount_3)

    effectBuffPassive:AddStatChanger(effectBuff_1)
    effectBuffPassive:AddStatChanger(effectBuff_2)
    effectBuffPassive:AddStatChanger(effectBuff_3)

    self.myHero.effectController:AddEffect(effectBuffPassive)
end

return Hero60006_Skill4
