--- @class Hero80017_Skill1 Gloz
Hero80017_Skill1 = Class(Hero80017_Skill1, BaseSkill)

--- @return void
--- @param id number id of skill (1: activeSkill, 2-4: passiveSkills)
--- @param hero BaseHero
function Hero80017_Skill1:Ctor(id, hero)
    BaseSkill.Ctor(self, id, hero)

    --- @type DamageSkillHelper
    self.damageSkillHelper = nil

    --- @type BaseTargetSelector
    self.targetSelector = nil
end

--- @return BaseSkill
--- @param id number id of skill (1: activeSkill, 2-4: passiveSkills)
--- @param hero BaseHero
function Hero80017_Skill1:CreateInstance(id, hero)
    return Hero80017_Skill1(id, hero)
end

--- @return void
function Hero80017_Skill1:Init()
    self.targetSelector = TargetSelectorBuilder.Create(self.myHero, self.data.targetPosition, TargetTeamType.ENEMY, self.data.targetNumber)

    self.damageSkillHelper = DamageSkillHelper(self)
    self.damageSkillHelper:SetDamage(self.data.damage)
end

----------------------------------- Battle -------------------------------------------
--- @return List<BaseActionResult>, boolean turn of this hero should be ended or not
function Hero80017_Skill1:UseActiveSkill()
    local targetList = self.targetSelector:SelectTarget(self.myHero.battle)
    local results = self.damageSkillHelper:UseDamageSkill(targetList)
    local isEndTurn = true

    return results, isEndTurn
end

return Hero80017_Skill1