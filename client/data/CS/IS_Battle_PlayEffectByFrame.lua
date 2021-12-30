--- @class IS_Battle_PlayEffectByFrame
IS_Battle_PlayEffectByFrame = Class(IS_Battle_PlayEffectByFrame)

--- @return void
function IS_Battle_PlayEffectByFrame:Ctor()
	--- @type Spine_Unity_SkeletonAnimation
	self.anim = nil
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
	self.particleSystem = nil
	--- @type System_String
	self.name = nil
	--- @type UnityEngine_HideFlags
	self.hideFlags = nil
	--- @type System_Collections_Generic_List`1[IS_Battle_EffectData]
	self.effects = nil
	--- @type System_String
	self.previewAnimation = nil
	--- @type System_String
	self.fileName = nil
end

--- @return System_Void
function IS_Battle_PlayEffectByFrame:Stop()
end

--- @return System_Void
--- @param animName System_String
function IS_Battle_PlayEffectByFrame:PlayAnimationEffectByName(animName)
end

--- @return System_Void
function IS_Battle_PlayEffectByFrame:StopAnimationEffect()
end

--- @return System_Void
--- @param isShowEffectWith System_Boolean
function IS_Battle_PlayEffectByFrame:PreviewAnimation(isShowEffectWith)
end

--- @return System_Void
--- @param xluaUrl System_String
function IS_Battle_PlayEffectByFrame:RevertConfig(xluaUrl)
end

--- @return System_Boolean
function IS_Battle_PlayEffectByFrame:IsInvoking()
end

--- @return System_Void
function IS_Battle_PlayEffectByFrame:CancelInvoke()
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
function IS_Battle_PlayEffectByFrame:Invoke(methodName, time)
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
--- @param repeatRate System_Single
function IS_Battle_PlayEffectByFrame:InvokeRepeating(methodName, time, repeatRate)
end

--- @return System_Void
--- @param methodName System_String
function IS_Battle_PlayEffectByFrame:CancelInvoke(methodName)
end

--- @return System_Boolean
--- @param methodName System_String
function IS_Battle_PlayEffectByFrame:IsInvoking(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
function IS_Battle_PlayEffectByFrame:StartCoroutine(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
--- @param value System_Object
function IS_Battle_PlayEffectByFrame:StartCoroutine(methodName, value)
end

--- @return UnityEngine_Coroutine
--- @param routine System_Collections_IEnumerator
function IS_Battle_PlayEffectByFrame:StartCoroutine(routine)
end

--- @return System_Void
--- @param routine System_Collections_IEnumerator
function IS_Battle_PlayEffectByFrame:StopCoroutine(routine)
end

--- @return System_Void
--- @param routine UnityEngine_Coroutine
function IS_Battle_PlayEffectByFrame:StopCoroutine(routine)
end

--- @return System_Void
--- @param methodName System_String
function IS_Battle_PlayEffectByFrame:StopCoroutine(methodName)
end

--- @return System_Void
function IS_Battle_PlayEffectByFrame:StopAllCoroutines()
end

--- @return UnityEngine_Component
--- @param type System_Type
function IS_Battle_PlayEffectByFrame:GetComponent(type)
end

--- @return CS_T
function IS_Battle_PlayEffectByFrame:GetComponent()
end

--- @return UnityEngine_Component
--- @param type System_String
function IS_Battle_PlayEffectByFrame:GetComponent(type)
end

--- @return UnityEngine_Component
--- @param t System_Type
--- @param includeInactive System_Boolean
function IS_Battle_PlayEffectByFrame:GetComponentInChildren(t, includeInactive)
end

--- @return UnityEngine_Component
--- @param t System_Type
function IS_Battle_PlayEffectByFrame:GetComponentInChildren(t)
end

--- @return CS_T
--- @param includeInactive System_Boolean
function IS_Battle_PlayEffectByFrame:GetComponentInChildren(includeInactive)
end

--- @return CS_T
function IS_Battle_PlayEffectByFrame:GetComponentInChildren()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function IS_Battle_PlayEffectByFrame:GetComponentsInChildren(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function IS_Battle_PlayEffectByFrame:GetComponentsInChildren(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function IS_Battle_PlayEffectByFrame:GetComponentsInChildren(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param result System_Collections_Generic_List`1[T]
function IS_Battle_PlayEffectByFrame:GetComponentsInChildren(includeInactive, result)
end

--- @return CS_T[]
function IS_Battle_PlayEffectByFrame:GetComponentsInChildren()
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function IS_Battle_PlayEffectByFrame:GetComponentsInChildren(results)
end

--- @return UnityEngine_Component
--- @param t System_Type
function IS_Battle_PlayEffectByFrame:GetComponentInParent(t)
end

--- @return CS_T
function IS_Battle_PlayEffectByFrame:GetComponentInParent()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function IS_Battle_PlayEffectByFrame:GetComponentsInParent(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function IS_Battle_PlayEffectByFrame:GetComponentsInParent(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function IS_Battle_PlayEffectByFrame:GetComponentsInParent(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param results System_Collections_Generic_List`1[T]
function IS_Battle_PlayEffectByFrame:GetComponentsInParent(includeInactive, results)
end

--- @return CS_T[]
function IS_Battle_PlayEffectByFrame:GetComponentsInParent()
end

--- @return UnityEngine_Component[]
--- @param type System_Type
function IS_Battle_PlayEffectByFrame:GetComponents(type)
end

--- @return System_Void
--- @param type System_Type
--- @param results System_Collections_Generic_List`1[UnityEngine_Component]
function IS_Battle_PlayEffectByFrame:GetComponents(type, results)
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function IS_Battle_PlayEffectByFrame:GetComponents(results)
end

--- @return CS_T[]
function IS_Battle_PlayEffectByFrame:GetComponents()
end

--- @return System_Boolean
--- @param tag System_String
function IS_Battle_PlayEffectByFrame:CompareTag(tag)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function IS_Battle_PlayEffectByFrame:SendMessageUpwards(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function IS_Battle_PlayEffectByFrame:SendMessageUpwards(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function IS_Battle_PlayEffectByFrame:SendMessageUpwards(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function IS_Battle_PlayEffectByFrame:SendMessageUpwards(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function IS_Battle_PlayEffectByFrame:SendMessage(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function IS_Battle_PlayEffectByFrame:SendMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function IS_Battle_PlayEffectByFrame:SendMessage(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function IS_Battle_PlayEffectByFrame:SendMessage(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
--- @param options UnityEngine_SendMessageOptions
function IS_Battle_PlayEffectByFrame:BroadcastMessage(methodName, parameter, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
function IS_Battle_PlayEffectByFrame:BroadcastMessage(methodName, parameter)
end

--- @return System_Void
--- @param methodName System_String
function IS_Battle_PlayEffectByFrame:BroadcastMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function IS_Battle_PlayEffectByFrame:BroadcastMessage(methodName, options)
end

--- @return System_Int32
function IS_Battle_PlayEffectByFrame:GetInstanceID()
end

--- @return System_Int32
function IS_Battle_PlayEffectByFrame:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function IS_Battle_PlayEffectByFrame:Equals(other)
end

--- @return System_String
function IS_Battle_PlayEffectByFrame:ToString()
end

--- @return System_Type
function IS_Battle_PlayEffectByFrame:GetType()
end
