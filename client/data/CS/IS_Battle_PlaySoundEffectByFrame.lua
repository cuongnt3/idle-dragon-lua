--- @class IS_Battle_PlaySoundEffectByFrame
IS_Battle_PlaySoundEffectByFrame = Class(IS_Battle_PlaySoundEffectByFrame)

--- @return void
function IS_Battle_PlaySoundEffectByFrame:Ctor()
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
	--- @type System_String
	self.fileName = nil
	--- @type System_Collections_Generic_List`1[IS_Battle_SoundEffectData]
	self.soundEffects = nil
	--- @type System_String
	self.previewAnimation = nil
end

--- @return System_Void
--- @param animName System_String
function IS_Battle_PlaySoundEffectByFrame:PlayAnimationEffectByName(animName)
end

--- @return System_Void
function IS_Battle_PlaySoundEffectByFrame:StopAnimationEffect()
end

--- @return System_Void
function IS_Battle_PlaySoundEffectByFrame:PreviewAnimation()
end

--- @return System_Void
function IS_Battle_PlaySoundEffectByFrame:OnValidate()
end

--- @return System_Void
--- @param xluaUrl System_String
function IS_Battle_PlaySoundEffectByFrame:RevertConfig(xluaUrl)
end

--- @return System_Boolean
function IS_Battle_PlaySoundEffectByFrame:IsInvoking()
end

--- @return System_Void
function IS_Battle_PlaySoundEffectByFrame:CancelInvoke()
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
function IS_Battle_PlaySoundEffectByFrame:Invoke(methodName, time)
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
--- @param repeatRate System_Single
function IS_Battle_PlaySoundEffectByFrame:InvokeRepeating(methodName, time, repeatRate)
end

--- @return System_Void
--- @param methodName System_String
function IS_Battle_PlaySoundEffectByFrame:CancelInvoke(methodName)
end

--- @return System_Boolean
--- @param methodName System_String
function IS_Battle_PlaySoundEffectByFrame:IsInvoking(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
function IS_Battle_PlaySoundEffectByFrame:StartCoroutine(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
--- @param value System_Object
function IS_Battle_PlaySoundEffectByFrame:StartCoroutine(methodName, value)
end

--- @return UnityEngine_Coroutine
--- @param routine System_Collections_IEnumerator
function IS_Battle_PlaySoundEffectByFrame:StartCoroutine(routine)
end

--- @return System_Void
--- @param routine System_Collections_IEnumerator
function IS_Battle_PlaySoundEffectByFrame:StopCoroutine(routine)
end

--- @return System_Void
--- @param routine UnityEngine_Coroutine
function IS_Battle_PlaySoundEffectByFrame:StopCoroutine(routine)
end

--- @return System_Void
--- @param methodName System_String
function IS_Battle_PlaySoundEffectByFrame:StopCoroutine(methodName)
end

--- @return System_Void
function IS_Battle_PlaySoundEffectByFrame:StopAllCoroutines()
end

--- @return UnityEngine_Component
--- @param type System_Type
function IS_Battle_PlaySoundEffectByFrame:GetComponent(type)
end

--- @return CS_T
function IS_Battle_PlaySoundEffectByFrame:GetComponent()
end

--- @return UnityEngine_Component
--- @param type System_String
function IS_Battle_PlaySoundEffectByFrame:GetComponent(type)
end

--- @return UnityEngine_Component
--- @param t System_Type
--- @param includeInactive System_Boolean
function IS_Battle_PlaySoundEffectByFrame:GetComponentInChildren(t, includeInactive)
end

--- @return UnityEngine_Component
--- @param t System_Type
function IS_Battle_PlaySoundEffectByFrame:GetComponentInChildren(t)
end

--- @return CS_T
--- @param includeInactive System_Boolean
function IS_Battle_PlaySoundEffectByFrame:GetComponentInChildren(includeInactive)
end

--- @return CS_T
function IS_Battle_PlaySoundEffectByFrame:GetComponentInChildren()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function IS_Battle_PlaySoundEffectByFrame:GetComponentsInChildren(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function IS_Battle_PlaySoundEffectByFrame:GetComponentsInChildren(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function IS_Battle_PlaySoundEffectByFrame:GetComponentsInChildren(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param result System_Collections_Generic_List`1[T]
function IS_Battle_PlaySoundEffectByFrame:GetComponentsInChildren(includeInactive, result)
end

--- @return CS_T[]
function IS_Battle_PlaySoundEffectByFrame:GetComponentsInChildren()
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function IS_Battle_PlaySoundEffectByFrame:GetComponentsInChildren(results)
end

--- @return UnityEngine_Component
--- @param t System_Type
function IS_Battle_PlaySoundEffectByFrame:GetComponentInParent(t)
end

--- @return CS_T
function IS_Battle_PlaySoundEffectByFrame:GetComponentInParent()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function IS_Battle_PlaySoundEffectByFrame:GetComponentsInParent(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function IS_Battle_PlaySoundEffectByFrame:GetComponentsInParent(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function IS_Battle_PlaySoundEffectByFrame:GetComponentsInParent(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param results System_Collections_Generic_List`1[T]
function IS_Battle_PlaySoundEffectByFrame:GetComponentsInParent(includeInactive, results)
end

--- @return CS_T[]
function IS_Battle_PlaySoundEffectByFrame:GetComponentsInParent()
end

--- @return UnityEngine_Component[]
--- @param type System_Type
function IS_Battle_PlaySoundEffectByFrame:GetComponents(type)
end

--- @return System_Void
--- @param type System_Type
--- @param results System_Collections_Generic_List`1[UnityEngine_Component]
function IS_Battle_PlaySoundEffectByFrame:GetComponents(type, results)
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function IS_Battle_PlaySoundEffectByFrame:GetComponents(results)
end

--- @return CS_T[]
function IS_Battle_PlaySoundEffectByFrame:GetComponents()
end

--- @return System_Boolean
--- @param tag System_String
function IS_Battle_PlaySoundEffectByFrame:CompareTag(tag)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function IS_Battle_PlaySoundEffectByFrame:SendMessageUpwards(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function IS_Battle_PlaySoundEffectByFrame:SendMessageUpwards(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function IS_Battle_PlaySoundEffectByFrame:SendMessageUpwards(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function IS_Battle_PlaySoundEffectByFrame:SendMessageUpwards(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function IS_Battle_PlaySoundEffectByFrame:SendMessage(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function IS_Battle_PlaySoundEffectByFrame:SendMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function IS_Battle_PlaySoundEffectByFrame:SendMessage(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function IS_Battle_PlaySoundEffectByFrame:SendMessage(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
--- @param options UnityEngine_SendMessageOptions
function IS_Battle_PlaySoundEffectByFrame:BroadcastMessage(methodName, parameter, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
function IS_Battle_PlaySoundEffectByFrame:BroadcastMessage(methodName, parameter)
end

--- @return System_Void
--- @param methodName System_String
function IS_Battle_PlaySoundEffectByFrame:BroadcastMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function IS_Battle_PlaySoundEffectByFrame:BroadcastMessage(methodName, options)
end

--- @return System_Int32
function IS_Battle_PlaySoundEffectByFrame:GetInstanceID()
end

--- @return System_Int32
function IS_Battle_PlaySoundEffectByFrame:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function IS_Battle_PlaySoundEffectByFrame:Equals(other)
end

--- @return System_String
function IS_Battle_PlaySoundEffectByFrame:ToString()
end

--- @return System_Type
function IS_Battle_PlaySoundEffectByFrame:GetType()
end
