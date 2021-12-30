--- @class ResistEffectResult
ResistEffectResult = Class(ResistEffectResult, BaseActionResult)

--- @return void
--- @param initiator BaseHero
--- @param target BaseHero
--- @param effectType EffectType
function ResistEffectResult:Ctor(initiator, target, effectType)
    BaseActionResult.Ctor(self, initiator, target, ActionResultType.RESIST_EFFECT)

    --- @type number
    self.effectType = effectType
end

--- @return string
function ResistEffectResult:ToString()
    local result = string.format("%s, effectType = %s\n",
            BaseActionResult.GetPrefix(self, "RESIST_EFFECT"), self.effectType)
    return result
end