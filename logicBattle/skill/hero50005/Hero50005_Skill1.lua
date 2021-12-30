--- @class Hero50005_Skill1 GuardianOfLight
Hero50005_Skill1 = Class(Hero50005_Skill1, BaseSkill)

--- @return void
--- @param id number id of skill (1: activeSkill, 2-4: passiveSkills)
--- @param hero BaseHero
function Hero50005_Skill1:Ctor(id, hero)
    BaseSkill.Ctor(self, id, hero)

    --- @type BaseTargetSelector
    self.enemyTargetSelector = nil

    --- @type BaseTargetSelector
    self.allyTargetSelector = nil

    --- @type DamageSkillHelper
    self.damageSkillHelper = nil

    --- @type number
    self.effectPercent = nil

    --- @type number
    self.effectDuration = nil
end

---------------------------------------- Initialization ----------------------------------------
--- @return BaseSkill
--- @param id number id of skill (1: activeSkill, 2-4: passiveSkills)
--- @param hero BaseHero
function Hero50005_Skill1:CreateInstance(id, hero)
    return Hero50005_Skill1(id, hero)
end

--- @return void
function Hero50005_Skill1:Init()
    self.enemyTargetSelector = TargetSelectorBuilder.Create(self.myHero, self.data.enemyTargetPosition,
            TargetTeamType.ENEMY, self.data.enemyTargetNumber)

    self.allyTargetSelector = TargetSelectorBuilder.Create(self.myHero, self.data.allyTargetPosition,
            TargetTeamType.ALLY, self.data.allyTargetNumber)

    self.damageSkillHelper = DamageSkillHelper(self)
    self.damageSkillHelper:SetActionPerTarget(self.InflictEffect)
    self.damageSkillHelper:SetDamage(self.data.damage)

    self.effectPercent = self.data.effectPercent
    self.effectDuration = self.data.effectDuration
end

---------------------------------------- Calculate Active skill ----------------------------------------
--- @return List<BaseActionResult>, boolean turn of this hero should be ended or not
function Hero50005_Skill1:UseActiveSkill()
    local enemyTargetList = self.enemyTargetSelector:SelectTarget(self.myHero.battle)
    local results = self.damageSkillHelper:UseDamageSkill(enemyTargetList)

    self:BuffLightShield()
    local isEndTurn = true

    return results, isEndTurn
end

--- @return void
function Hero50005_Skill1:BuffLightShield()
    local allyTargetList = self.allyTargetSelector:SelectTarget(self.myHero.battle)
    local i = 1
    while i <= allyTargetList:Count() do
        local target = allyTargetList:Get(i)

        if target.effectController:IsContainEffectType(EffectType.LIGHT_SHIELD) == false then
            local lightShield = LightShield(self.myHero, target, self.effectPercent)
            lightShield:SetDuration(self.effectDuration)
            target.effectController:AddEffect(lightShield)
        end

        i = i + 1
    end
end

return Hero50005_Skill1