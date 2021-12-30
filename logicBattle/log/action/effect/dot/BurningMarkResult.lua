--- @class BurningMarkResult
BurningMarkResult = Class(BurningMarkResult, DotEffectResult)

--- @return void
--- @param initiator BaseHero
--- @param target BaseHero
--- @param remainingRound number
function BurningMarkResult:Ctor(initiator, target, remainingRound)
    DotEffectResult.Ctor(self, initiator, target, ActionResultType.BURNING_MARK, remainingRound)
end

--- @return string
function BurningMarkResult:ToString()
    return DotEffectResult.ToString(self, "BURN_MARK")
end