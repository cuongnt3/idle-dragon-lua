--- @class Hero30012_AttackListener
Hero30012_AttackListener = Class(Hero30012_AttackListener, AttackListener)

--- @return void
--- @param hero BaseHero
function Hero30012_AttackListener:Ctor(hero)
    AttackListener.Ctor(self, hero)

    --- @type BaseSkill
    self.skill_4 = nil
end

--- @return number
--- @param skill BaseSkill
function Hero30012_AttackListener:BindingWithSkill_4(skill)
    self.skill_4 = skill
end

--- @return void
--- @param enemyDefender BaseHero
--- @param totalDamage number
--- @param dodgeType DodgeType
function Hero30012_AttackListener:OnDealDamageToEnemy(enemyDefender, totalDamage, dodgeType)
    if self.skill_4 ~= nil then
        self.skill_4:OnDealDamageToEnemy(enemyDefender, totalDamage, dodgeType)
    end
end


