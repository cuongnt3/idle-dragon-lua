--- @class CS_ResourceMgr
CS_ResourceMgr = Class(CS_ResourceMgr)

--- @return void
function CS_ResourceMgr:Ctor()
	--- @type CS_EffectMgr
	self.effectMgr = nil
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

--- @return CS_AudioData
--- @param name System_String
function CS_ResourceMgr:GetAudioData(name)
end

--- @return System_Void
function CS_ResourceMgr:Initialize()
end

--- @return UnityEngine_GameObject
--- @param type System_String
--- @param name System_String
function CS_ResourceMgr:SpawnAsset(type, name)
end

--- @return UnityEngine_Transform
--- @param name System_String
--- @param parent UnityEngine_Transform
function CS_ResourceMgr:SpawnUIPool(name, parent)
end

--- @return System_Void
--- @param type System_String
--- @param name System_String
--- @param quantity System_Int32
function CS_ResourceMgr:PreloadAsset(type, name, quantity)
end

--- @return System_Void
--- @param obj UnityEngine_GameObject
function CS_ResourceMgr:DespawnAsset(obj)
end

--- @return System_Void
--- @param type System_String
--- @param name System_String
function CS_ResourceMgr:DestroyAsset(type, name)
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
function CS_ResourceMgr:Invoke(methodName, time)
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
--- @param repeatRate System_Single
function CS_ResourceMgr:InvokeRepeating(methodName, time, repeatRate)
end

--- @return System_Void
function CS_ResourceMgr:CancelInvoke()
end

--- @return System_Void
--- @param methodName System_String
function CS_ResourceMgr:CancelInvoke(methodName)
end

--- @return System_Boolean
--- @param methodName System_String
function CS_ResourceMgr:IsInvoking(methodName)
end

--- @return System_Boolean
function CS_ResourceMgr:IsInvoking()
end

--- @return UnityEngine_Coroutine
--- @param routine System_Collections_IEnumerator
function CS_ResourceMgr:StartCoroutine(routine)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
--- @param value System_Object
function CS_ResourceMgr:StartCoroutine(methodName, value)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
function CS_ResourceMgr:StartCoroutine(methodName)
end

--- @return System_Void
--- @param methodName System_String
function CS_ResourceMgr:StopCoroutine(methodName)
end

--- @return System_Void
--- @param routine System_Collections_IEnumerator
function CS_ResourceMgr:StopCoroutine(routine)
end

--- @return System_Void
--- @param routine UnityEngine_Coroutine
function CS_ResourceMgr:StopCoroutine(routine)
end

--- @return System_Void
function CS_ResourceMgr:StopAllCoroutines()
end

--- @return UnityEngine_Component
--- @param type System_Type
function CS_ResourceMgr:GetComponent(type)
end

--- @return CS_T
function CS_ResourceMgr:GetComponent()
end

--- @return UnityEngine_Component
--- @param type System_String
function CS_ResourceMgr:GetComponent(type)
end

--- @return UnityEngine_Component
--- @param t System_Type
--- @param includeInactive System_Boolean
function CS_ResourceMgr:GetComponentInChildren(t, includeInactive)
end

--- @return UnityEngine_Component
--- @param t System_Type
function CS_ResourceMgr:GetComponentInChildren(t)
end

--- @return CS_T
function CS_ResourceMgr:GetComponentInChildren()
end

--- @return CS_T
--- @param includeInactive System_Boolean
function CS_ResourceMgr:GetComponentInChildren(includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function CS_ResourceMgr:GetComponentsInChildren(t)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function CS_ResourceMgr:GetComponentsInChildren(t, includeInactive)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function CS_ResourceMgr:GetComponentsInChildren(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param result System_Collections_Generic_List`1[T]
function CS_ResourceMgr:GetComponentsInChildren(includeInactive, result)
end

--- @return CS_T[]
function CS_ResourceMgr:GetComponentsInChildren()
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function CS_ResourceMgr:GetComponentsInChildren(results)
end

--- @return UnityEngine_Component
--- @param t System_Type
function CS_ResourceMgr:GetComponentInParent(t)
end

--- @return CS_T
function CS_ResourceMgr:GetComponentInParent()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function CS_ResourceMgr:GetComponentsInParent(t)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function CS_ResourceMgr:GetComponentsInParent(t, includeInactive)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function CS_ResourceMgr:GetComponentsInParent(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param results System_Collections_Generic_List`1[T]
function CS_ResourceMgr:GetComponentsInParent(includeInactive, results)
end

--- @return CS_T[]
function CS_ResourceMgr:GetComponentsInParent()
end

--- @return UnityEngine_Component[]
--- @param type System_Type
function CS_ResourceMgr:GetComponents(type)
end

--- @return System_Void
--- @param type System_Type
--- @param results System_Collections_Generic_List`1[UnityEngine_Component]
function CS_ResourceMgr:GetComponents(type, results)
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function CS_ResourceMgr:GetComponents(results)
end

--- @return CS_T[]
function CS_ResourceMgr:GetComponents()
end

--- @return System_Boolean
--- @param tag System_String
function CS_ResourceMgr:CompareTag(tag)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function CS_ResourceMgr:SendMessageUpwards(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function CS_ResourceMgr:SendMessageUpwards(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function CS_ResourceMgr:SendMessageUpwards(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function CS_ResourceMgr:SendMessageUpwards(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function CS_ResourceMgr:SendMessage(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function CS_ResourceMgr:SendMessage(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function CS_ResourceMgr:SendMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function CS_ResourceMgr:SendMessage(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
--- @param options UnityEngine_SendMessageOptions
function CS_ResourceMgr:BroadcastMessage(methodName, parameter, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
function CS_ResourceMgr:BroadcastMessage(methodName, parameter)
end

--- @return System_Void
--- @param methodName System_String
function CS_ResourceMgr:BroadcastMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function CS_ResourceMgr:BroadcastMessage(methodName, options)
end

--- @return System_String
function CS_ResourceMgr:ToString()
end

--- @return System_Int32
function CS_ResourceMgr:GetInstanceID()
end

--- @return System_Int32
function CS_ResourceMgr:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function CS_ResourceMgr:Equals(other)
end

--- @return System_Type
function CS_ResourceMgr:GetType()
end
