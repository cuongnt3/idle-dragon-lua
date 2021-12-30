--- @class Hero30001_Skill1 Charon
Hero30001_Skill1 = Class(Hero30001_Skill1, BaseSkill)

--- @return void
--- @param id number id of skill (1: activeSkill, 2-4: passiveSkills)
--- @param hero BaseHero
function Hero30001_Skill1:Ctor(id, hero)
    BaseSkill.Ctor(self, id, hero)

    --- @type BaseTargetSelector
    self.targetSelector = nil

    --- @type DamageSkillHelper
    self.damageSkillHelper = nil

    --- @type number
    self.maxHpToKill = nil

    --- @type number
    self.powerGainWhenKill = nil

    --- @type BaseSkill
    self.skill_2 = nil
end

---------------------------------------- Initialization ----------------------------------------
--- @return BaseSkill
--- @param id number id of skill (1: activeSkill, 2-4: passiveSkills)
--- @param hero BaseHero
function Hero30001_Skill1:CreateInstance(id, hero)
    return Hero30001_Skill1(id, hero)
end

--- @return void
function Hero30001_Skill1:Init()
    self.targetSelector = TargetSelectorBuilder.Create(self.myHero, self.data.targetPosition, TargetTeamType.ENEMY, self.data.targetNumber)

    self.damageSkillHelper = DamageSkillHelper(self)
    self.damageSkillHelper:SetDamage(self.data.damage)

    self.maxHpToKill = self.data.maxHpToKill
    self.powerGainWhenKill = self.data.powerGainWhenKill
end

---------------------------------------- Calculate Active skill ----------------------------------------
--- @return void
--- @param skill BaseSkill
function Hero30001_Skill1:BindingWithSkill_2(skill)
    self.skill_2 = skill
end

--- @return List<BaseActionResult>, boolean turn of this hero should be ended or not
function Hero30001_Skill1:UseActiveSkill()
    local instantKillResults = List()
    
    local targetList = self.targetSelector:SelectTarget(self.myHero.battle)

    local results = self.damageSkillHelper:UseDamageSkill(targetList)
    local isEndTurn = true

    local i = 1
    while i <= targetList:Count() do
        local target = targetList:Get(i)
        if target.hp:GetStatPercent() < self.maxHpToKill and target:IsBoss() == false then
            local result = self:InstantKill(target)
            instantKillResults:Add(result)
        end
        i = i + 1
    end

    results:AddAll(instantKillResults)
    return results, isEndTurn
end

--- @return InstantKillResult
--- @param target BaseHero
function Hero30001_Skill1:InstantKill(target)
    target.hp:Dead(self.myHero, TakeDamageReason.INSTANT_KILL)
    PowerUtils.GainPower(self.myHero, self.myHero, self.powerGainWhenKill, false)

    local result = InstantKillResult(self.myHero, target)
    ActionLogUtils.AddLog(self.myHero.battle, result)

    if self.skill_2 ~= nil then
        self.skill_2:OnKill(target)
    end

    return result
end

return Hero30001_Skill1