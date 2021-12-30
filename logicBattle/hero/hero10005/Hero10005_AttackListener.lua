--- @class Hero10005_AttackListener
Hero10005_AttackListener = Class(Hero10005_AttackListener, AttackListener)

--- @return void
--- @param hero BaseHero
function Hero10005_AttackListener:Ctor(hero)
    AttackListener.Ctor(self, hero)

    --- @type BaseSkill
    self.skill_3 = nil

    --- @type BaseSkill
    self.skill_4 = nil
end

--- @return number
--- @param skill BaseSkill
function Hero10005_AttackListener:BindingWithSkill_3(skill)
    self.skill_3 = skill
end

--- @return number
--- @param skill BaseSkill
function Hero10005_AttackListener:BindingWithSkill_4(skill)
    self.skill_4 = skill
end

--- @return void
--- @param enemyDefender BaseHero
--- @param totalDamage number
--- @param dodgeType DodgeType
function Hero10005_AttackListener:OnDealDamageToEnemy(enemyDefender, totalDamage, dodgeType)
    if self.skill_3 ~= nil then
        self.skill_3:OnDealDamageToEnemy(enemyDefender, totalDamage, dodgeType)
    end
end

--- @return void
--- @param enemyAttacker BaseHero
--- @param totalDamage number
function Hero10005_AttackListener:OnTakeDamageFromEnemy(enemyAttacker, totalDamage)
    if self.skill_4 ~= nil then
        self.skill_4:OnTakeDamageFromEnemy(enemyAttacker, totalDamage)
    end
end