--- @class IS_Battle_Battle
IS_Battle_Battle = Class(IS_Battle_Battle)

--- @return void
function IS_Battle_Battle:Ctor()
	--- @type IS_Battle_BattleTeamManager
	self.battleTeamManager = nil
	--- @type IS_Battle_BattleEffectManager
	self.battleEffectManager = nil
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
--- @param timeScale System_Single
function IS_Battle_Battle:SetTimeScale(timeScale)
end

--- @return System_Void
function IS_Battle_Battle:ClearTimingActions()
end

--- @return System_Void
--- @param act System_Action
--- @param timeTrigger System_Single
function IS_Battle_Battle:AddTimingAction(act, timeTrigger)
end

--- @return System_Void
function IS_Battle_Battle:DoTimingActions()
end

--- @return System_Void
function IS_Battle_Battle:KillTimingCoroutine()
end

--- @return System_Boolean
function IS_Battle_Battle:IsInvoking()
end

--- @return System_Void
function IS_Battle_Battle:CancelInvoke()
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
function IS_Battle_Battle:Invoke(methodName, time)
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
--- @param repeatRate System_Single
function IS_Battle_Battle:InvokeRepeating(methodName, time, repeatRate)
end

--- @return System_Void
--- @param methodName System_String
function IS_Battle_Battle:CancelInvoke(methodName)
end

--- @return System_Boolean
--- @param methodName System_String
function IS_Battle_Battle:IsInvoking(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
function IS_Battle_Battle:StartCoroutine(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
--- @param value System_Object
function IS_Battle_Battle:StartCoroutine(methodName, value)
end

--- @return UnityEngine_Coroutine
--- @param routine System_Collections_IEnumerator
function IS_Battle_Battle:StartCoroutine(routine)
end

--- @return System_Void
--- @param routine System_Collections_IEnumerator
function IS_Battle_Battle:StopCoroutine(routine)
end

--- @return System_Void
--- @param routine UnityEngine_Coroutine
function IS_Battle_Battle:StopCoroutine(routine)
end

--- @return System_Void
--- @param methodName System_String
function IS_Battle_Battle:StopCoroutine(methodName)
end

--- @return System_Void
function IS_Battle_Battle:StopAllCoroutines()
end

--- @return UnityEngine_Component
--- @param type System_Type
function IS_Battle_Battle:GetComponent(type)
end

--- @return CS_T
function IS_Battle_Battle:GetComponent()
end

--- @return UnityEngine_Component
--- @param type System_String
function IS_Battle_Battle:GetComponent(type)
end

--- @return UnityEngine_Component
--- @param t System_Type
--- @param includeInactive System_Boolean
function IS_Battle_Battle:GetComponentInChildren(t, includeInactive)
end

--- @return UnityEngine_Component
--- @param t System_Type
function IS_Battle_Battle:GetComponentInChildren(t)
end

--- @return CS_T
--- @param includeInactive System_Boolean
function IS_Battle_Battle:GetComponentInChildren(includeInactive)
end

--- @return CS_T
function IS_Battle_Battle:GetComponentInChildren()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function IS_Battle_Battle:GetComponentsInChildren(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function IS_Battle_Battle:GetComponentsInChildren(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function IS_Battle_Battle:GetComponentsInChildren(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param result System_Collections_Generic_List`1[T]
function IS_Battle_Battle:GetComponentsInChildren(includeInactive, result)
end

--- @return CS_T[]
function IS_Battle_Battle:GetComponentsInChildren()
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function IS_Battle_Battle:GetComponentsInChildren(results)
end

--- @return UnityEngine_Component
--- @param t System_Type
function IS_Battle_Battle:GetComponentInParent(t)
end

--- @return CS_T
function IS_Battle_Battle:GetComponentInParent()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function IS_Battle_Battle:GetComponentsInParent(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function IS_Battle_Battle:GetComponentsInParent(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function IS_Battle_Battle:GetComponentsInParent(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param results System_Collections_Generic_List`1[T]
function IS_Battle_Battle:GetComponentsInParent(includeInactive, results)
end

--- @return CS_T[]
function IS_Battle_Battle:GetComponentsInParent()
end

--- @return UnityEngine_Component[]
--- @param type System_Type
function IS_Battle_Battle:GetComponents(type)
end

--- @return System_Void
--- @param type System_Type
--- @param results System_Collections_Generic_List`1[UnityEngine_Component]
function IS_Battle_Battle:GetComponents(type, results)
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function IS_Battle_Battle:GetComponents(results)
end

--- @return CS_T[]
function IS_Battle_Battle:GetComponents()
end

--- @return System_Boolean
--- @param tag System_String
function IS_Battle_Battle:CompareTag(tag)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function IS_Battle_Battle:SendMessageUpwards(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function IS_Battle_Battle:SendMessageUpwards(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function IS_Battle_Battle:SendMessageUpwards(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function IS_Battle_Battle:SendMessageUpwards(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function IS_Battle_Battle:SendMessage(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function IS_Battle_Battle:SendMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function IS_Battle_Battle:SendMessage(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function IS_Battle_Battle:SendMessage(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
--- @param options UnityEngine_SendMessageOptions
function IS_Battle_Battle:BroadcastMessage(methodName, parameter, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
function IS_Battle_Battle:BroadcastMessage(methodName, parameter)
end

--- @return System_Void
--- @param methodName System_String
function IS_Battle_Battle:BroadcastMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function IS_Battle_Battle:BroadcastMessage(methodName, options)
end

--- @return System_Int32
function IS_Battle_Battle:GetInstanceID()
end

--- @return System_Int32
function IS_Battle_Battle:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function IS_Battle_Battle:Equals(other)
end

--- @return System_String
function IS_Battle_Battle:ToString()
end

--- @return System_Type
function IS_Battle_Battle:GetType()
end
