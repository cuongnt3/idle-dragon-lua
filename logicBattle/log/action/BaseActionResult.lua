--- @class BaseActionResult
BaseActionResult = Class(BaseActionResult)

--- @return void
--- @param initiator BaseHero
--- @param target BaseHero
--- @param type ActionResultType
function BaseActionResult:Ctor(initiator, target, type)
    --- @type number
    self.index = nil

    --- @type BaseHero
    self.initiator = initiator

    --- @type BaseHero
    self.target = target

    --- @type ActionResultType
    self.type = type

    --- @type number
    self.targetHpPercent = target.hp:GetStatPercent()
end

--- @return void
function BaseActionResult:RefreshHeroStatus()
    self.targetHpPercent = self.target.hp:GetStatPercent()
end

--- @return string
--- @param actionName string
function BaseActionResult:GetPrefix(actionName)
    return string.format("\n[%s] %s => %s (hp = %s)", actionName,
            self.initiator:ToString(), self.target:ToString(), self.targetHpPercent)
end

--- @return string
function BaseActionResult:ToString()
    assert(false, "this method should be overridden by child class")
end