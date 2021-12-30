--- @class DeadActionResult : BaseActionResult
DeadActionResult = Class(DeadActionResult, BaseActionResult)

--- @return void
--- @param eventData table
function DeadActionResult:Ctor(eventData)
    BaseActionResult.Ctor(self, eventData.initiator, eventData.target, ActionResultType.DEAD)

    --- @type TakeDamageReason
    self.reason = eventData.reason

    --- @type boolean
    self.deadAndWait = false
end

--- @return string
function DeadActionResult:ToString()
    local result = string.format("%s, reason = %s\n",
            BaseActionResult.GetPrefix(self, "DEAD"), self.reason)
    return result
end