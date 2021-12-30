--- @class Hero40004_Skill1 Cennunos
Hero40004_Skill1 = Class(Hero40004_Skill1, BaseSkill)

--- @return void
--- @param id number id of skill (1: activeSkill, 2-4: passiveSkills)
--- @param hero BaseHero
function Hero40004_Skill1:Ctor(id, hero)
    BaseSkill.Ctor(self, id, hero)

    --- @type DamageSkillHelper
    self.damageSkillHelper = nil

    --- @type BaseTargetSelector
    self.targetSelector = nil

    --- @type number percent of damage deal by attack
    self.damage = 0

    --- @type number
    self.effectChance = 0

    --- @type number
    self.effectType = 0

    --- @type number
    self.effectDuration = 0

end

--- @return BaseSkill
--- @param id number id of skill (1: activeSkill, 2-4: passiveSkills)
--- @param hero BaseHero
function Hero40004_Skill1:CreateInstance(id, hero)
    return Hero40004_Skill1(id, hero)

end

--- @return void
function Hero40004_Skill1:Init()
    self.effectChance = self.data.effectChance
    self.effectType = self.data.effectType
    self.effectDuration = self.data.effectDuration

    self.targetSelector = TargetSelectorBuilder.Create(self.myHero, self.data.targetPosition,
            TargetTeamType.ENEMY, self.data.targetNumber)

    self.damageSkillHelper = DamageSkillHelper(self)
    self.damageSkillHelper:SetActionPerTarget(self.SilenceTarget)
    self.damageSkillHelper:SetDamage(self.data.damage)
end

----------------------------------- Battle -------------------------------------------
--- @return List<BaseActionResult>, boolean turn of this hero should be ended or not
function Hero40004_Skill1:UseActiveSkill()
    local targetList = self.targetSelector:SelectTarget(self.myHero.battle)
    local results = self.damageSkillHelper:UseDamageSkill(targetList)
    local isEndTurn = true

    return results, isEndTurn
end

--- @return void
--- @param target BaseHero
function Hero40004_Skill1:SilenceTarget(target)
    if self.myHero.randomHelper:RandomRate(self.effectChance) then
        local silenceEffect = SilenceEffect(self.myHero, target, self.effectDuration)
        target.effectController:AddEffect(silenceEffect)
    end
end

return Hero40004_Skill1