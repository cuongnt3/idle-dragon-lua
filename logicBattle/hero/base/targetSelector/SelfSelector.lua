--- @class SelfSelector
SelfSelector = Class(SelfSelector, BaseTargetSelector)

--- @return List<BaseHero>
--- @param availableTargets List<BaseHero>
function SelfSelector:SelectSuitableTargets(availableTargets)
    return availableTargets
end