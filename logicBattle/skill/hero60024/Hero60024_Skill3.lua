--- @class Hero60024_Skill3 Dark Priest
Hero60024_Skill3 = Class(Hero60024_Skill3, BaseSkill)

---------------------------------------- Initialization ----------------------------------------
--- @return BaseSkill
--- @param id number id of skill (1: activeSkill, 2-4: passiveSkills)
--- @param hero BaseHero
function Hero60024_Skill3:CreateInstance(id, hero)
    return Hero60024_Skill3(id, hero)
end

--- @return void
function Hero60024_Skill3:Init()
    local statChangerSkillHelper = StatChangerSkillHelper(self, self.data.bonuses)
    statChangerSkillHelper:AddStatChangerEffect(self.myHero, self.myHero)
end

return Hero60024_Skill3