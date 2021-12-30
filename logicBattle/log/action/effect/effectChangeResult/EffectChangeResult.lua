--- @class EffectChangeResult
EffectChangeResult = Class(EffectChangeResult, BaseActionResult)

--- @return void
--- @param effect BaseEffect
--- @param effectLogType EffectLogType
--- @param persistentType EffectPersistentType
--- @param isBuff boolean
--- @param effectChangeType EffectChangeType
function EffectChangeResult:Ctor(effect, effectLogType, persistentType, isBuff, effectChangeType)
    BaseActionResult.Ctor(self, effect.initiator, effect.myHero, ActionResultType.CHANGE_EFFECT)

    --- @type EffectChangeType
    self.effectChangeType = effectChangeType

    --- @type number
    self.effectLogType = effectLogType

    --- @type number
    self.persistentType = persistentType

    --- @type boolean
    self.isBuff = isBuff
end

--- @return string
function EffectChangeResult:ToString()
    local effectString
    if self.effectChangeType == EffectChangeType.ADD then
        effectString = "ADD_EFFECT"
    else
        effectString = "REMOVE_EFFECT"
    end

    local result = string.format("%s, type = %s, persistentType = %s, isBuff = %s\n",
            BaseActionResult.GetPrefix(self, effectString), self.effectLogType, self.persistentType, tostring(self.isBuff))
    return result
end

