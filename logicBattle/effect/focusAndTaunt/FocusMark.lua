--- @class FocusMark
FocusMark = Class(FocusMark, BaseEffect)

--- @return void
--- @param initiator BaseHero
--- @param target BaseHero
function FocusMark:Ctor(initiator, target)
    BaseEffect.Ctor(self, initiator, target, EffectType.FOCUS_MARK, true)
    self:SetPersistentType(EffectPersistentType.NON_PERSISTENT)
    self.focusTarget = nil
end

--- @return void
--- @param target BaseHero
function FocusMark:SetFocusTarget(target)
    self.focusTarget = target
end

---------------------------------------- Listeners ----------------------------------------
--- @return void
--- @param target BaseHero
--- call right before add effect to hero
function FocusMark:OnEffectAdd(target)
    target.effectController.effectListener:Register(EffectListenerType.SELECT_TARGET_FOR_BASIC_ATTACK, self)
end

--- @return void
--- @param target BaseHero
--- call right before remove effect from hero
function FocusMark:OnEffectRemove(target)
    target.effectController.effectListener:Unregister(EffectListenerType.SELECT_TARGET_FOR_BASIC_ATTACK, self)
end

--- @return void
--- @param initiator BaseHero
--- @param selectedTargets List<BaseHero>
function FocusMark:OnSelectTargetForBasicAttack(initiator, selectedTargets)
    if selectedTargets ~= nil and selectedTargets:IsContainValue(self.focusTarget) == false then
        selectedTargets:RemoveByIndex(selectedTargets:Count())
        selectedTargets:Add(self.focusTarget)
    end
end

--- @return string
function FocusMark:ToDetailString()
    return string.format("%s, TAUNT MARK %s", self:ToString(), self.focusTarget:ToString())
end
