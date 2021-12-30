--- @class Hero60003_SkillListener Enule
Hero60003_SkillListener = Class(Hero60003_SkillListener, SkillListener)

function Hero60003_SkillListener:Ctor(hero)
    SkillListener.Ctor(self, hero)

    ---@type BaseSkill
    self.skill_4 = nil
end

--- @return void
--- @param skill BaseSkill
function Hero60003_SkillListener:BindingWithSkill_4(skill)
    self.skill_4 = skill
end

----------------------------------------------Battle-----------------------------------------
--- @return void
--- @param enemyTarget BaseHero
--- @param totalDamage number
function Hero60003_SkillListener:OnDealCritDamage(enemyTarget, totalDamage)
    if self.skill_4 ~= nil then
        self.skill_4:OnDealCritDamage(enemyTarget, totalDamage)
    end
end