--- @class IS_Audio_AudioMgr
IS_Audio_AudioMgr = Class(IS_Audio_AudioMgr)

--- @return void
function IS_Audio_AudioMgr:Ctor()
	--- @type System_Single
	self.globalVolume = nil
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
function IS_Audio_AudioMgr:Initialize()
end

--- @return UnityEngine_AudioSource
--- @param type IS_Enum_AudioType
function IS_Audio_AudioMgr:GetAudioSource(type)
end

--- @return System_Void
--- @param type IS_Enum_AudioType
--- @param vol System_Single
function IS_Audio_AudioMgr:SetVolume(type, vol)
end

--- @return System_Single
--- @param type IS_Enum_AudioType
function IS_Audio_AudioMgr:GetVolume(type)
end

--- @return System_Void
--- @param package System_String
--- @param name System_String
function IS_Audio_AudioMgr:PlayMusic(package, name)
end

--- @return System_Void
--- @param package System_String
--- @param name System_String
function IS_Audio_AudioMgr:PlaySoundByName(package, name)
end

--- @return System_Void
--- @param package System_String
--- @param index System_Int32
function IS_Audio_AudioMgr:PlaySoundByIndex(package, index)
end

--- @return System_Void
--- @param package System_String
--- @param name System_String
function IS_Audio_AudioMgr:PlayUISound(package, name)
end

--- @return System_Void
--- @param fadeOutSeconds System_Single
function IS_Audio_AudioMgr:StopAll(fadeOutSeconds)
end

--- @return System_Void
function IS_Audio_AudioMgr:PauseAll()
end

--- @return System_Void
function IS_Audio_AudioMgr:ResumeAll()
end

--- @return System_Boolean
function IS_Audio_AudioMgr:IsInvoking()
end

--- @return System_Void
function IS_Audio_AudioMgr:CancelInvoke()
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
function IS_Audio_AudioMgr:Invoke(methodName, time)
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
--- @param repeatRate System_Single
function IS_Audio_AudioMgr:InvokeRepeating(methodName, time, repeatRate)
end

--- @return System_Void
--- @param methodName System_String
function IS_Audio_AudioMgr:CancelInvoke(methodName)
end

--- @return System_Boolean
--- @param methodName System_String
function IS_Audio_AudioMgr:IsInvoking(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
function IS_Audio_AudioMgr:StartCoroutine(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
--- @param value System_Object
function IS_Audio_AudioMgr:StartCoroutine(methodName, value)
end

--- @return UnityEngine_Coroutine
--- @param routine System_Collections_IEnumerator
function IS_Audio_AudioMgr:StartCoroutine(routine)
end

--- @return System_Void
--- @param routine System_Collections_IEnumerator
function IS_Audio_AudioMgr:StopCoroutine(routine)
end

--- @return System_Void
--- @param routine UnityEngine_Coroutine
function IS_Audio_AudioMgr:StopCoroutine(routine)
end

--- @return System_Void
--- @param methodName System_String
function IS_Audio_AudioMgr:StopCoroutine(methodName)
end

--- @return System_Void
function IS_Audio_AudioMgr:StopAllCoroutines()
end

--- @return UnityEngine_Component
--- @param type System_Type
function IS_Audio_AudioMgr:GetComponent(type)
end

--- @return CS_T
function IS_Audio_AudioMgr:GetComponent()
end

--- @return UnityEngine_Component
--- @param type System_String
function IS_Audio_AudioMgr:GetComponent(type)
end

--- @return UnityEngine_Component
--- @param t System_Type
--- @param includeInactive System_Boolean
function IS_Audio_AudioMgr:GetComponentInChildren(t, includeInactive)
end

--- @return UnityEngine_Component
--- @param t System_Type
function IS_Audio_AudioMgr:GetComponentInChildren(t)
end

--- @return CS_T
--- @param includeInactive System_Boolean
function IS_Audio_AudioMgr:GetComponentInChildren(includeInactive)
end

--- @return CS_T
function IS_Audio_AudioMgr:GetComponentInChildren()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function IS_Audio_AudioMgr:GetComponentsInChildren(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function IS_Audio_AudioMgr:GetComponentsInChildren(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function IS_Audio_AudioMgr:GetComponentsInChildren(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param result System_Collections_Generic_List`1[T]
function IS_Audio_AudioMgr:GetComponentsInChildren(includeInactive, result)
end

--- @return CS_T[]
function IS_Audio_AudioMgr:GetComponentsInChildren()
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function IS_Audio_AudioMgr:GetComponentsInChildren(results)
end

--- @return UnityEngine_Component
--- @param t System_Type
function IS_Audio_AudioMgr:GetComponentInParent(t)
end

--- @return CS_T
function IS_Audio_AudioMgr:GetComponentInParent()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function IS_Audio_AudioMgr:GetComponentsInParent(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function IS_Audio_AudioMgr:GetComponentsInParent(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function IS_Audio_AudioMgr:GetComponentsInParent(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param results System_Collections_Generic_List`1[T]
function IS_Audio_AudioMgr:GetComponentsInParent(includeInactive, results)
end

--- @return CS_T[]
function IS_Audio_AudioMgr:GetComponentsInParent()
end

--- @return UnityEngine_Component[]
--- @param type System_Type
function IS_Audio_AudioMgr:GetComponents(type)
end

--- @return System_Void
--- @param type System_Type
--- @param results System_Collections_Generic_List`1[UnityEngine_Component]
function IS_Audio_AudioMgr:GetComponents(type, results)
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function IS_Audio_AudioMgr:GetComponents(results)
end

--- @return CS_T[]
function IS_Audio_AudioMgr:GetComponents()
end

--- @return System_Boolean
--- @param tag System_String
function IS_Audio_AudioMgr:CompareTag(tag)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function IS_Audio_AudioMgr:SendMessageUpwards(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function IS_Audio_AudioMgr:SendMessageUpwards(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function IS_Audio_AudioMgr:SendMessageUpwards(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function IS_Audio_AudioMgr:SendMessageUpwards(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function IS_Audio_AudioMgr:SendMessage(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function IS_Audio_AudioMgr:SendMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function IS_Audio_AudioMgr:SendMessage(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function IS_Audio_AudioMgr:SendMessage(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
--- @param options UnityEngine_SendMessageOptions
function IS_Audio_AudioMgr:BroadcastMessage(methodName, parameter, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
function IS_Audio_AudioMgr:BroadcastMessage(methodName, parameter)
end

--- @return System_Void
--- @param methodName System_String
function IS_Audio_AudioMgr:BroadcastMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function IS_Audio_AudioMgr:BroadcastMessage(methodName, options)
end

--- @return System_Int32
function IS_Audio_AudioMgr:GetInstanceID()
end

--- @return System_Int32
function IS_Audio_AudioMgr:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function IS_Audio_AudioMgr:Equals(other)
end

--- @return System_String
function IS_Audio_AudioMgr:ToString()
end

--- @return System_Type
function IS_Audio_AudioMgr:GetType()
end
