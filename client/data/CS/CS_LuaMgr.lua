--- @class CS_LuaMgr
CS_LuaMgr = Class(CS_LuaMgr)

--- @return void
function CS_LuaMgr:Ctor()
	--- @type XLua_LuaEnv
	self.luaEnv = nil
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
--- @param zgMgr CS_ZgMgr
function CS_LuaMgr:Initialize(zgMgr)
end

--- @return System_Void
function CS_LuaMgr:Initialize()
end

--- @return System_Void
function CS_LuaMgr:Run()
end

--- @return System_Boolean
function CS_LuaMgr:IsInvoking()
end

--- @return System_Void
function CS_LuaMgr:CancelInvoke()
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
function CS_LuaMgr:Invoke(methodName, time)
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
--- @param repeatRate System_Single
function CS_LuaMgr:InvokeRepeating(methodName, time, repeatRate)
end

--- @return System_Void
--- @param methodName System_String
function CS_LuaMgr:CancelInvoke(methodName)
end

--- @return System_Boolean
--- @param methodName System_String
function CS_LuaMgr:IsInvoking(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
function CS_LuaMgr:StartCoroutine(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
--- @param value System_Object
function CS_LuaMgr:StartCoroutine(methodName, value)
end

--- @return UnityEngine_Coroutine
--- @param routine System_Collections_IEnumerator
function CS_LuaMgr:StartCoroutine(routine)
end

--- @return System_Void
--- @param routine System_Collections_IEnumerator
function CS_LuaMgr:StopCoroutine(routine)
end

--- @return System_Void
--- @param routine UnityEngine_Coroutine
function CS_LuaMgr:StopCoroutine(routine)
end

--- @return System_Void
--- @param methodName System_String
function CS_LuaMgr:StopCoroutine(methodName)
end

--- @return System_Void
function CS_LuaMgr:StopAllCoroutines()
end

--- @return UnityEngine_Component
--- @param type System_Type
function CS_LuaMgr:GetComponent(type)
end

--- @return CS_T
function CS_LuaMgr:GetComponent()
end

--- @return UnityEngine_Component
--- @param type System_String
function CS_LuaMgr:GetComponent(type)
end

--- @return UnityEngine_Component
--- @param t System_Type
--- @param includeInactive System_Boolean
function CS_LuaMgr:GetComponentInChildren(t, includeInactive)
end

--- @return UnityEngine_Component
--- @param t System_Type
function CS_LuaMgr:GetComponentInChildren(t)
end

--- @return CS_T
--- @param includeInactive System_Boolean
function CS_LuaMgr:GetComponentInChildren(includeInactive)
end

--- @return CS_T
function CS_LuaMgr:GetComponentInChildren()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function CS_LuaMgr:GetComponentsInChildren(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function CS_LuaMgr:GetComponentsInChildren(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function CS_LuaMgr:GetComponentsInChildren(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param result System_Collections_Generic_List`1[T]
function CS_LuaMgr:GetComponentsInChildren(includeInactive, result)
end

--- @return CS_T[]
function CS_LuaMgr:GetComponentsInChildren()
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function CS_LuaMgr:GetComponentsInChildren(results)
end

--- @return UnityEngine_Component
--- @param t System_Type
function CS_LuaMgr:GetComponentInParent(t)
end

--- @return CS_T
function CS_LuaMgr:GetComponentInParent()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function CS_LuaMgr:GetComponentsInParent(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function CS_LuaMgr:GetComponentsInParent(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function CS_LuaMgr:GetComponentsInParent(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param results System_Collections_Generic_List`1[T]
function CS_LuaMgr:GetComponentsInParent(includeInactive, results)
end

--- @return CS_T[]
function CS_LuaMgr:GetComponentsInParent()
end

--- @return UnityEngine_Component[]
--- @param type System_Type
function CS_LuaMgr:GetComponents(type)
end

--- @return System_Void
--- @param type System_Type
--- @param results System_Collections_Generic_List`1[UnityEngine_Component]
function CS_LuaMgr:GetComponents(type, results)
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function CS_LuaMgr:GetComponents(results)
end

--- @return CS_T[]
function CS_LuaMgr:GetComponents()
end

--- @return System_Boolean
--- @param tag System_String
function CS_LuaMgr:CompareTag(tag)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function CS_LuaMgr:SendMessageUpwards(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function CS_LuaMgr:SendMessageUpwards(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function CS_LuaMgr:SendMessageUpwards(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function CS_LuaMgr:SendMessageUpwards(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function CS_LuaMgr:SendMessage(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function CS_LuaMgr:SendMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function CS_LuaMgr:SendMessage(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function CS_LuaMgr:SendMessage(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
--- @param options UnityEngine_SendMessageOptions
function CS_LuaMgr:BroadcastMessage(methodName, parameter, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
function CS_LuaMgr:BroadcastMessage(methodName, parameter)
end

--- @return System_Void
--- @param methodName System_String
function CS_LuaMgr:BroadcastMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function CS_LuaMgr:BroadcastMessage(methodName, options)
end

--- @return System_Int32
function CS_LuaMgr:GetInstanceID()
end

--- @return System_Int32
function CS_LuaMgr:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function CS_LuaMgr:Equals(other)
end

--- @return System_String
function CS_LuaMgr:ToString()
end

--- @return System_Type
function CS_LuaMgr:GetType()
end
