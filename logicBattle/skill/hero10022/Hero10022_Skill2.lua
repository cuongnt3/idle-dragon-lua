--- @class Hero10022_Skill2 AquaMage
Hero10022_Skill2 = Class(Hero10022_Skill2, BaseSkill)

---------------------------------------- Initialization ----------------------------------------
--- @return BaseSkill
--- @param id number id of skill (1: activeSkill, 2-4: passiveSkills)
--- @param hero BaseHero
function Hero10022_Skill2:CreateInstance(id, hero)
    return Hero10022_Skill2(id, hero)
end

--- @return void
function Hero10022_Skill2:Init()
    local statChangerSkillHelper = StatChangerSkillHelper(self, self.data.bonuses)
    statChangerSkillHelper:AddStatChangerEffect(self.myHero, self.myHero)
end

return Hero10022_Skill2