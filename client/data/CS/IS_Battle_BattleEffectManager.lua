--- @class IS_Battle_BattleEffectManager
IS_Battle_BattleEffectManager = Class(IS_Battle_BattleEffectManager)

--- @return void
function IS_Battle_BattleEffectManager:Ctor()
	--- @type System_Boolean
	self.useGUILayout = nil
	--- @type System_Boolean
	self.runInEditMode = nil
	--- @type System_Boolean
	self.enabled = nil
	--- @type System_Boolean
	self.isActiveAndEnabled = nil
	--- @type UnityEngine_Transform
	self.transform = nil
	--- @type UnityEngine_GameObject
	self.gameObject = nil
	--- @type System_String
	self.tag = nil
	--- @type UnityEngine_Component
	self.rigidbody = nil
	--- @type UnityEngine_Component
	self.rigidbody2D = nil
	--- @type UnityEngine_Component
	self.camera = nil
	--- @type UnityEngine_Component
	self.light = nil
	--- @type UnityEngine_Component
	self.animation = nil
	--- @type UnityEngine_Component
	self.constantForce = nil
	--- @type UnityEngine_Component
	self.renderer = nil
	--- @type UnityEngine_Component
	self.audio = nil
	--- @type UnityEngine_Component
	self.guiText = nil
	--- @type UnityEngine_Component
	self.networkView = nil
	--- @type UnityEngine_Component
	self.guiElement = nil
	--- @type UnityEngine_Component
	self.guiTexture = nil
	--- @type UnityEngine_Component
	self.collider = nil
	--- @type UnityEngine_Component
	self.collider2D = nil
	--- @type UnityEngine_Component
	self.hingeJoint = nil
	--- @type UnityEngine_Component
	self.particleEmitter = nil
	--- @type UnityEngine_Component
	self.particleSystem = nil
	--- @type System_String
	self.name = nil
	--- @type UnityEngine_HideFlags
	self.hideFlags = nil
end

--- @return System_Void
function IS_Battle_BattleEffectManager:PreloadGeneralBattleEffect()
end

--- @return System_Void
--- @param effectType System_String
--- @param effectName System_String
function IS_Battle_BattleEffectManager:PreloadEffect(effectType, effectName)
end

--- @return IS_Battle_BattleEffect
--- @param effectType System_String
--- @param effectName System_String
function IS_Battle_BattleEffectManager:GetBattleEffectByType(effectType, effectName)
end

--- @return IS_Battle_BattleEffect
--- @param effectType System_Int32
function IS_Battle_BattleEffectManager:GetEffect(effectType)
end

--- @return IS_Battle_BattleEffect
--- @param effectName System_String
function IS_Battle_BattleEffectManager:GetEffect(effectName)
end

--- @return IS_Battle_BattleTextLog
--- @param effectName System_String
function IS_Battle_BattleEffectManager:GetBattleTextLog(effectName)
end

--- @return IS_Battle_BattleStatusBar
function IS_Battle_BattleEffectManager:GetHeroStatusBar()
end

--- @return IS_Battle_BattleEffectIcon
--- @param objectName System_String
--- @param effectId System_Single
--- @param isBuff System_Boolean
function IS_Battle_BattleEffectManager:GetBattleEffectIcon(objectName, effectId, isBuff)
end

--- @return IS_Battle_BattleEffect
--- @param statType System_Int32
function IS_Battle_BattleEffectManager:GetAddOrStealStatEffect(statType)
end

--- @return IS_Battle_BattleEffect
--- @param factionType System_Int32
function IS_Battle_BattleEffectManager:GetRebornOrReviveEffect(factionType)
end

--- @return System_Void
--- @param duration System_Single
--- @param strengthX System_Single
--- @param strengthY System_Single
--- @param vibrato System_Int32
--- @param randomness System_Single
function IS_Battle_BattleEffectManager:DoShake(duration, strengthX, strengthY, vibrato, randomness)
end

--- @return System_Void
--- @param coverDuration System_Single
--- @param fadeInDuration System_Single
--- @param fadeOutDuration System_Single
--- @param coverAlpha System_Single
--- @param onEndFadeIn System_Action
--- @param onEndFade System_Action
function IS_Battle_BattleEffectManager:DoCoverBattle(coverDuration, fadeInDuration, fadeOutDuration, coverAlpha, onEndFadeIn, onEndFade)
end

--- @return System_Boolean
function IS_Battle_BattleEffectManager:IsInvoking()
end

--- @return System_Void
function IS_Battle_BattleEffectManager:CancelInvoke()
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
function IS_Battle_BattleEffectManager:Invoke(methodName, time)
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
--- @param repeatRate System_Single
function IS_Battle_BattleEffectManager:InvokeRepeating(methodName, time, repeatRate)
end

--- @return System_Void
--- @param methodName System_String
function IS_Battle_BattleEffectManager:CancelInvoke(methodName)
end

--- @return System_Boolean
--- @param methodName System_String
function IS_Battle_BattleEffectManager:IsInvoking(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
function IS_Battle_BattleEffectManager:StartCoroutine(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
--- @param value System_Object
function IS_Battle_BattleEffectManager:StartCoroutine(methodName, value)
end

--- @return UnityEngine_Coroutine
--- @param routine System_Collections_IEnumerator
function IS_Battle_BattleEffectManager:StartCoroutine(routine)
end

--- @return System_Void
--- @param routine System_Collections_IEnumerator
function IS_Battle_BattleEffectManager:StopCoroutine(routine)
end

--- @return System_Void
--- @param routine UnityEngine_Coroutine
function IS_Battle_BattleEffectManager:StopCoroutine(routine)
end

--- @return System_Void
--- @param methodName System_String
function IS_Battle_BattleEffectManager:StopCoroutine(methodName)
end

--- @return System_Void
function IS_Battle_BattleEffectManager:StopAllCoroutines()
end

--- @return UnityEngine_Component
--- @param type System_Type
function IS_Battle_BattleEffectManager:GetComponent(type)
end

--- @return CS_T
function IS_Battle_BattleEffectManager:GetComponent()
end

--- @return UnityEngine_Component
--- @param type System_String
function IS_Battle_BattleEffectManager:GetComponent(type)
end

--- @return UnityEngine_Component
--- @param t System_Type
--- @param includeInactive System_Boolean
function IS_Battle_BattleEffectManager:GetComponentInChildren(t, includeInactive)
end

--- @return UnityEngine_Component
--- @param t System_Type
function IS_Battle_BattleEffectManager:GetComponentInChildren(t)
end

--- @return CS_T
--- @param includeInactive System_Boolean
function IS_Battle_BattleEffectManager:GetComponentInChildren(includeInactive)
end

--- @return CS_T
function IS_Battle_BattleEffectManager:GetComponentInChildren()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function IS_Battle_BattleEffectManager:GetComponentsInChildren(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function IS_Battle_BattleEffectManager:GetComponentsInChildren(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function IS_Battle_BattleEffectManager:GetComponentsInChildren(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param result System_Collections_Generic_List`1[T]
function IS_Battle_BattleEffectManager:GetComponentsInChildren(includeInactive, result)
end

--- @return CS_T[]
function IS_Battle_BattleEffectManager:GetComponentsInChildren()
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function IS_Battle_BattleEffectManager:GetComponentsInChildren(results)
end

--- @return UnityEngine_Component
--- @param t System_Type
function IS_Battle_BattleEffectManager:GetComponentInParent(t)
end

--- @return CS_T
function IS_Battle_BattleEffectManager:GetComponentInParent()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function IS_Battle_BattleEffectManager:GetComponentsInParent(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function IS_Battle_BattleEffectManager:GetComponentsInParent(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function IS_Battle_BattleEffectManager:GetComponentsInParent(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param results System_Collections_Generic_List`1[T]
function IS_Battle_BattleEffectManager:GetComponentsInParent(includeInactive, results)
end

--- @return CS_T[]
function IS_Battle_BattleEffectManager:GetComponentsInParent()
end

--- @return UnityEngine_Component[]
--- @param type System_Type
function IS_Battle_BattleEffectManager:GetComponents(type)
end

--- @return System_Void
--- @param type System_Type
--- @param results System_Collections_Generic_List`1[UnityEngine_Component]
function IS_Battle_BattleEffectManager:GetComponents(type, results)
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function IS_Battle_BattleEffectManager:GetComponents(results)
end

--- @return CS_T[]
function IS_Battle_BattleEffectManager:GetComponents()
end

--- @return System_Boolean
--- @param tag System_String
function IS_Battle_BattleEffectManager:CompareTag(tag)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function IS_Battle_BattleEffectManager:SendMessageUpwards(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function IS_Battle_BattleEffectManager:SendMessageUpwards(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function IS_Battle_BattleEffectManager:SendMessageUpwards(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function IS_Battle_BattleEffectManager:SendMessageUpwards(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function IS_Battle_BattleEffectManager:SendMessage(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function IS_Battle_BattleEffectManager:SendMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function IS_Battle_BattleEffectManager:SendMessage(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function IS_Battle_BattleEffectManager:SendMessage(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
--- @param options UnityEngine_SendMessageOptions
function IS_Battle_BattleEffectManager:BroadcastMessage(methodName, parameter, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
function IS_Battle_BattleEffectManager:BroadcastMessage(methodName, parameter)
end

--- @return System_Void
--- @param methodName System_String
function IS_Battle_BattleEffectManager:BroadcastMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function IS_Battle_BattleEffectManager:BroadcastMessage(methodName, options)
end

--- @return System_Int32
function IS_Battle_BattleEffectManager:GetInstanceID()
end

--- @return System_Int32
function IS_Battle_BattleEffectManager:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function IS_Battle_BattleEffectManager:Equals(other)
end

--- @return System_String
function IS_Battle_BattleEffectManager:ToString()
end

--- @return System_Type
function IS_Battle_BattleEffectManager:GetType()
end
