--- @class CS_Reporter
CS_Reporter = Class(CS_Reporter)

--- @return void
function CS_Reporter:Ctor()
	--- @type System_Single
	self.TotalMemUsage = nil
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
	--- @type System_Collections_Generic_List`1[ButtonDataTool]
	self.buttons = nil
	--- @type System_Boolean
	self.show = nil
	--- @type System_String
	self.UserData = nil
	--- @type System_Single
	self.fps = nil
	--- @type System_String
	self.fpsText = nil
	--- @type CS_Images
	self.images = nil
	--- @type UnityEngine_Vector2
	self.size = nil
	--- @type System_Single
	self.maxSize = nil
	--- @type System_Int32
	self.numOfCircleToShow = nil
	--- @type System_String
	self.patchText = nil
	--- @type System_Boolean
	self.Initialized = nil
end

--- @return System_Void
function CS_Reporter:Initialize()
end

--- @return System_Void
function CS_Reporter:OnGUIDraw()
end

--- @return System_Void
function CS_Reporter:GenBattleCsv()
end

--- @return System_Boolean
function CS_Reporter:IsInvoking()
end

--- @return System_Void
function CS_Reporter:CancelInvoke()
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
function CS_Reporter:Invoke(methodName, time)
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
--- @param repeatRate System_Single
function CS_Reporter:InvokeRepeating(methodName, time, repeatRate)
end

--- @return System_Void
--- @param methodName System_String
function CS_Reporter:CancelInvoke(methodName)
end

--- @return System_Boolean
--- @param methodName System_String
function CS_Reporter:IsInvoking(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
function CS_Reporter:StartCoroutine(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
--- @param value System_Object
function CS_Reporter:StartCoroutine(methodName, value)
end

--- @return UnityEngine_Coroutine
--- @param routine System_Collections_IEnumerator
function CS_Reporter:StartCoroutine(routine)
end

--- @return System_Void
--- @param routine System_Collections_IEnumerator
function CS_Reporter:StopCoroutine(routine)
end

--- @return System_Void
--- @param routine UnityEngine_Coroutine
function CS_Reporter:StopCoroutine(routine)
end

--- @return System_Void
--- @param methodName System_String
function CS_Reporter:StopCoroutine(methodName)
end

--- @return System_Void
function CS_Reporter:StopAllCoroutines()
end

--- @return UnityEngine_Component
--- @param type System_Type
function CS_Reporter:GetComponent(type)
end

--- @return CS_T
function CS_Reporter:GetComponent()
end

--- @return UnityEngine_Component
--- @param type System_String
function CS_Reporter:GetComponent(type)
end

--- @return UnityEngine_Component
--- @param t System_Type
--- @param includeInactive System_Boolean
function CS_Reporter:GetComponentInChildren(t, includeInactive)
end

--- @return UnityEngine_Component
--- @param t System_Type
function CS_Reporter:GetComponentInChildren(t)
end

--- @return CS_T
--- @param includeInactive System_Boolean
function CS_Reporter:GetComponentInChildren(includeInactive)
end

--- @return CS_T
function CS_Reporter:GetComponentInChildren()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function CS_Reporter:GetComponentsInChildren(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function CS_Reporter:GetComponentsInChildren(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function CS_Reporter:GetComponentsInChildren(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param result System_Collections_Generic_List`1[T]
function CS_Reporter:GetComponentsInChildren(includeInactive, result)
end

--- @return CS_T[]
function CS_Reporter:GetComponentsInChildren()
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function CS_Reporter:GetComponentsInChildren(results)
end

--- @return UnityEngine_Component
--- @param t System_Type
function CS_Reporter:GetComponentInParent(t)
end

--- @return CS_T
function CS_Reporter:GetComponentInParent()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function CS_Reporter:GetComponentsInParent(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function CS_Reporter:GetComponentsInParent(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function CS_Reporter:GetComponentsInParent(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param results System_Collections_Generic_List`1[T]
function CS_Reporter:GetComponentsInParent(includeInactive, results)
end

--- @return CS_T[]
function CS_Reporter:GetComponentsInParent()
end

--- @return UnityEngine_Component[]
--- @param type System_Type
function CS_Reporter:GetComponents(type)
end

--- @return System_Void
--- @param type System_Type
--- @param results System_Collections_Generic_List`1[UnityEngine_Component]
function CS_Reporter:GetComponents(type, results)
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function CS_Reporter:GetComponents(results)
end

--- @return CS_T[]
function CS_Reporter:GetComponents()
end

--- @return System_Boolean
--- @param tag System_String
function CS_Reporter:CompareTag(tag)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function CS_Reporter:SendMessageUpwards(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function CS_Reporter:SendMessageUpwards(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function CS_Reporter:SendMessageUpwards(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function CS_Reporter:SendMessageUpwards(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function CS_Reporter:SendMessage(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function CS_Reporter:SendMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function CS_Reporter:SendMessage(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function CS_Reporter:SendMessage(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
--- @param options UnityEngine_SendMessageOptions
function CS_Reporter:BroadcastMessage(methodName, parameter, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
function CS_Reporter:BroadcastMessage(methodName, parameter)
end

--- @return System_Void
--- @param methodName System_String
function CS_Reporter:BroadcastMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function CS_Reporter:BroadcastMessage(methodName, options)
end

--- @return System_Int32
function CS_Reporter:GetInstanceID()
end

--- @return System_Int32
function CS_Reporter:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function CS_Reporter:Equals(other)
end

--- @return System_String
function CS_Reporter:ToString()
end

--- @return System_Type
function CS_Reporter:GetType()
end
