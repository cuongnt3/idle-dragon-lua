--- @class StealStatResult
StealStatResult = Class(StealStatResult, BaseActionResult)

--- @return void
--- @param initiator BaseHero
--- @param target BaseHero
--- @param statType StatType
--- @param amount number
function StealStatResult:Ctor(initiator, target, statType, amount)
    BaseActionResult.Ctor(self, initiator, target, ActionResultType.STEAL_STAT)

    --- @type StatType
    self.statType = statType

    --- @type number
    self.amount = amount
end

--- @return string
function StealStatResult:ToString()
    local result = string.format("%s, STEAL %s of stat %s\n",
            BaseActionResult.GetPrefix(self, "STEAL"), self.amount, self.statType)
    return result
end