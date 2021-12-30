--- @class Hero50017_Skill1 LightWarrior
Hero50017_Skill1 = Class(Hero50017_Skill1, BaseSkill)

--- @return void
--- @param id number id of skill (1: activeSkill, 2-4: passiveSkills)
--- @param hero BaseHero
function Hero50017_Skill1:Ctor(id, hero)
    BaseSkill.Ctor(self, id, hero)

    --- @type DamageSkillHelper
    self.damageSkillHelper = nil

    --- @type BaseTargetSelector
    self.targetSelector = nil

    --- @type StatChangerSkillHelper
    self.statChangerSkillHelper = nil
end

--- @return BaseSkill
--- @param id number id of skill (1: activeSkill, 2-4: passiveSkills)
--- @param hero BaseHero
function Hero50017_Skill1:CreateInstance(id, hero)
    return Hero50017_Skill1(id, hero)
end

--- @return void
function Hero50017_Skill1:Init()
    self.stunChance = self.data.stunChance
    self.stunDuration = self.data.stunDuration

    self.targetSelector = TargetSelectorBuilder.Create(self.myHero, self.data.targetPosition,
            TargetTeamType.ENEMY, self.data.targetNumber)

    self.statChangerSkillHelper = StatChangerSkillHelper(self, self.data.bonuses)
    self.statChangerSkillHelper:SetInfo(true, self.data.effectDuration)
    self.statChangerSkillHelper:SetPersistentType(EffectPersistentType.NON_PERSISTENT)

    self.damageSkillHelper = DamageSkillHelper(self)
    self.damageSkillHelper:SetActionPerTarget(self.InflictEffect)
    self.damageSkillHelper:SetDamage(self.data.damage)
end

----------------------------------- Battle -------------------------------------------
--- @return List<BaseActionResult>, boolean turn of this hero should be ended or not
function Hero50017_Skill1:UseActiveSkill()
    local targetList = self.targetSelector:SelectTarget(self.myHero.battle)

    local results = self.damageSkillHelper:UseDamageSkill(targetList)
    local isEndTurn = true

    self.statChangerSkillHelper:AddStatChangerEffect(self.myHero, self.myHero)

    return results, isEndTurn
end

--- @return void
--- @param target BaseHero
function Hero50017_Skill1:InflictEffect(target)
    if self.myHero.randomHelper:RandomRate(self.stunChance) then
        local ccEffect = EffectUtils.CreateCCEffect(self.myHero, target, EffectType.STUN, self.stunDuration)
        target.effectController:AddEffect(ccEffect)
    end
end

return Hero50017_Skill1