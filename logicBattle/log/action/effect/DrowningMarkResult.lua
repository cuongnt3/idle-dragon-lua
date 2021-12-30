--- @class DrowningMarkResult
DrowningMarkResult = Class(DrowningMarkResult, BaseActionResult)

--- @return void
--- @param initiator BaseHero
--- @param target BaseHero
--- @param remainingRound number
--- @param drowningMarkChangeType DrowningMarkChangeType
function DrowningMarkResult:Ctor(initiator, target, remainingRound, drowningMarkChangeType)
    BaseActionResult.Ctor(self, initiator, target, ActionResultType.DROWNING_MARK)

    --- @type number
    self.remainingRound = remainingRound

    --- @type DrowningMarkChangeType
    self.drowningMarkChangeType = drowningMarkChangeType
end

--- @return string
function DrowningMarkResult:ToString()
    local result = string.format("%s, remainingRound = %s, changeType = %s\n",
            BaseActionResult.GetPrefix(self, "DROWNING_MARK"), self.remainingRound, self.drowningMarkChangeType)
    return result
end