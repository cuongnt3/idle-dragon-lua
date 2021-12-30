--- @class Hero60011_AttackListener Diadora
Hero60011_AttackListener = Class(Hero60011_AttackListener, AttackListener)

function Hero60011_AttackListener:Ctor(hero)
    AttackListener.Ctor(self, hero)

    ---@type BaseSkill
    self.skill_4 = nil
end

--- @return void
--- @param skill BaseSkill
function Hero60011_AttackListener:BindingWithSkill_4(skill)
    self.skill_4 = skill
end

--- @return void
--- @param enemyDefender BaseHero
--- @param totalDamage number
--- @param dodgeType DodgeType
function Hero60011_AttackListener:OnDealDamageToEnemy(enemyDefender, totalDamage, dodgeType)
    if self.skill_4 ~= nil then
        self.skill_4:OnDealDamageToEnemy(enemyDefender, totalDamage, dodgeType)
    end
end
