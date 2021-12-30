--- @class SameLineTargetSelector
SameLineTargetSelector = Class(SameLineTargetSelector, BaseTargetSelector)

--- @return List<BaseHero>
--- @param availableTargets List<BaseHero>
function SameLineTargetSelector:SelectSuitableTargets(availableTargets)
    local targets = List()
    local i = 1
    while i <= availableTargets:Count() do
        local hero = availableTargets:Get(i)
        if hero.positionInfo.isFrontLine == self.myHero.positionInfo.isFrontLine then
            targets:Add(hero)
        end
        i = i + 1
    end

    return targets
end