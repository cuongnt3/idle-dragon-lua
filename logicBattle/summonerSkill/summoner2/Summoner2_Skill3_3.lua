--- @class Summoner2_Skill3_3 Warrior
Summoner2_Skill3_3 = Class(Summoner2_Skill3_3, BaseSkill)

---------------------------------------- Initialization ----------------------------------------
--- @return BaseSkill
--- @param id number id of skill (1: activeSkill, 2-4: passiveSkills)
--- @param hero BaseHero
function Summoner2_Skill3_3:CreateInstance(id, hero)
    return Summoner2_Skill3_3(id, hero)
end

--- @return void
function Summoner2_Skill3_3:Init()
    local targetSelector = TargetSelectorBuilder.Create(self.myHero, self.data.targetPosition,
            TargetTeamType.ALLY, self.data.targetNumber)

    local targetList = targetSelector:SelectTarget(self.myHero.battle)
    local i = 1
    while i <= targetList:Count() do
        local target = targetList:Get(i)

        local lastChance = LastChance(self.myHero, target)
        lastChance:SetLastChance(self.data.lastChanceRate, self.data.triggerMax, self.data.powerGain)
        lastChance:SetPersistentType(EffectPersistentType.MANUAL_REMOVE)

        target.effectController:AddEffect(lastChance)
        i = i + 1
    end
end

return Summoner2_Skill3_3