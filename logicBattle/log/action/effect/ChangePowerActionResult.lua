--- @class ChangePowerActionResult
ChangePowerActionResult = Class(ChangePowerActionResult, BaseActionResult)

--- @return void
--- @param initiator BaseHero
--- @param target BaseHero
function ChangePowerActionResult:Ctor(initiator, target)
    BaseActionResult.Ctor(self, initiator, target, ActionResultType.CHANGE_POWER)

    --- @type number
    self.initiatorPowerPercent = initiator.power:GetStatPercent()

    --- @type number
    self.targetPowerPercent = target.power:GetStatPercent()
end

--- @return string
function ChangePowerActionResult:ToString()
    local result = string.format("%s, power = %s\n",
            BaseActionResult.GetPrefix(self, "CHANGE_POWER"), self.targetPowerPercent)
    return result
end