--- @class Hero40004_Skill3 Cennunos
Hero40004_Skill3 = Class(Hero40004_Skill3, BaseSkill)

--- @return BaseSkill
--- @param id number id of skill (1: activeSkill, 2-4: passiveSkills)
--- @param hero BaseHero
function Hero40004_Skill3:CreateInstance(id, hero)
    return Hero40004_Skill3(id, hero)
end

--- @return void
function Hero40004_Skill3:Init()
    local targetSelector = TargetSelectorBuilder.Create(self.myHero, self.data.targetPosition,
            TargetTeamType.ENEMY, self.data.targetNumber)
    self.myHero.attackController:SetSelector(targetSelector)
    self.myHero.battleHelper:SetBasicAttackMultiplier(self.data.damageAttack)

    local statChangerSkillHelper = StatChangerSkillHelper(self, self.data.bonuses)
    statChangerSkillHelper:AddStatChangerEffect(self.myHero, self.myHero)
end

return Hero40004_Skill3