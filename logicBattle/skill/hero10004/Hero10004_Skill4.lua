--- @class Hero10004_Skill4 Frosthardy
Hero10004_Skill4 = Class(Hero10004_Skill4, BaseSkill)

--- @return void
--- @param id number id of skill (1: activeSkill, 2-4: passiveSkills)
--- @param hero BaseHero
function Hero10004_Skill4:Ctor(id, hero)
    BaseSkill.Ctor(self, id, hero)

    --- @type EffectType
    self.immuneEffectType = nil
end

---------------------------------------- Initialization ----------------------------------------
--- @return BaseSkill
--- @param id number id of skill (1: activeSkill, 2-4: passiveSkills)
--- @param hero BaseHero
function Hero10004_Skill4:CreateInstance(id, hero)
    return Hero10004_Skill4(id, hero)
end

--- @return void
function Hero10004_Skill4:Init()
    local statChangerSkillHelper = StatChangerSkillHelper(self, self.data.bonuses)
    statChangerSkillHelper:AddStatChangerEffect(self.myHero, self.myHero)

    self.immuneEffectType = self.data.immuneEffectType

    self.myHero.effectController:BindingWithSkill_4(self)
end

---------------------------------------- Calculate ----------------------------------------
--- @return void
function Hero10004_Skill4:CanAdd(effect)
    if effect.type == self.immuneEffectType then
        return false
    end
    return true
end

return Hero10004_Skill4