--- @class Hero40011_Skill1 Neutar
Hero40011_Skill1 = Class(Hero40011_Skill1, BaseSkill)

--- @return void
--- @param id number id of skill (1: activeSkill, 2-4: passiveSkills)
--- @param hero BaseHero
function Hero40011_Skill1:Ctor(id, hero)
    BaseSkill.Ctor(self, id, hero)

    --- @type BaseTargetSelector
    self.targetSelector = nil

    --- @type DamageSkillHelper
    self.damageSkillHelper = nil

    --- @type HeroClassType
    self.effectTriggerClass = nil
    --- @type EffectType
    self.effectType = nil
    --- @type number
    self.effectChance = nil
    --- @type number
    self.effectDuration = nil
end

---------------------------------------- Initialization ----------------------------------------
--- @return BaseSkill
--- @param id number id of skill (1: activeSkill, 2-4: passiveSkills)
--- @param hero BaseHero
function Hero40011_Skill1:CreateInstance(id, hero)
    return Hero40011_Skill1(id, hero)
end

--- @return void
function Hero40011_Skill1:Init()
    self.effectTriggerClass = self.data.effectTriggerClass
    self.effectType = self.data.effectType
    self.effectChance = self.data.effectChance
    self.effectDuration = self.data.effectDuration

    self.targetSelector = TargetSelectorBuilder.Create(self.myHero, self.data.targetPosition, TargetTeamType.ENEMY, self.data.targetNumber)

    self.damageSkillHelper = DamageSkillHelper(self)
    self.damageSkillHelper:SetActionPerTarget(self.InflictEffect)
    self.damageSkillHelper:SetDamage(self.data.damage)
end

---------------------------------------- Calculate ----------------------------------------
--- @return List<BaseActionResult>, boolean turn of this hero should be ended or not
function Hero40011_Skill1:UseActiveSkill()
    local targetList = self.targetSelector:SelectTarget(self.myHero.battle)

    local results = self.damageSkillHelper:UseDamageSkill(targetList)
    local isEndTurn = true

    return results, isEndTurn
end

--- @return void
--- @param target BaseHero
function Hero40011_Skill1:InflictEffect(target)
    if target.originInfo.class == self.effectTriggerClass and self.myHero.randomHelper:RandomRate(self.effectChance) then
        local ccEffect = EffectUtils.CreateCCEffect(self.myHero, target, self.effectType, self.effectDuration)
        target.effectController:AddEffect(ccEffect)
    end
end

return Hero40011_Skill1