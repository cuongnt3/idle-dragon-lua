--- @class Summoner4_Skill2_2 Assassin
Summoner4_Skill2_2 = Class(Summoner4_Skill2_2, BaseSkill)

---------------------------------------- Initialization ----------------------------------------
--- @return BaseSkill
--- @param id number id of skill (1: activeSkill, 2-4: passiveSkills)
--- @param hero BaseHero
function Summoner4_Skill2_2:CreateInstance(id, hero)
    return Summoner4_Skill2_2(id, hero)
end

--- @return void
function Summoner4_Skill2_2:Init()
    local statChangerSkillHelper = StatChangerSkillHelper(self, self.data.bonuses)

    local targetSelector = TargetSelectorBuilder.Create(self.myHero, self.data.targetPosition,
            TargetTeamType.ALLY, self.data.targetNumber)

    if targetSelector.targetPositionType == TargetPositionType.PREFER_HERO_CLASS then
        targetSelector:SetAffectedClass(self.data.targetClass)
    end

    local targetList = targetSelector:SelectTarget(self.myHero.battle)
    local i = 1
    while i <= targetList:Count() do
        local target = targetList:Get(i)
        if target.originInfo.class == self.data.targetClass then
            statChangerSkillHelper:AddStatChangerEffect(self.myHero, target)
        end
        i = i + 1
    end
end

return Summoner4_Skill2_2