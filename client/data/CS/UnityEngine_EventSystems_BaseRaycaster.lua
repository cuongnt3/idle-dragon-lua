--- @class UnityEngine_EventSystems_BaseRaycaster
UnityEngine_EventSystems_BaseRaycaster = Class(UnityEngine_EventSystems_BaseRaycaster)

--- @return void
function UnityEngine_EventSystems_BaseRaycaster:Ctor()
	--- @type UnityEngine_Camera
	self.eventCamera = nil
	--- @type System_Int32
	self.priority = nil
	--- @type System_Int32
	self.sortOrderPriority = nil
	--- @type System_Int32
	self.renderOrderPriority = nil
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
--- @param eventData UnityEngine_EventSystems_PointerEventData
--- @param resultAppendList System_Collections_Generic_List`1[UnityEngine_EventSystems_RaycastResult]
function UnityEngine_EventSystems_BaseRaycaster:Raycast(eventData, resultAppendList)
end

--- @return System_String
function UnityEngine_EventSystems_BaseRaycaster:ToString()
end

--- @return System_Boolean
function UnityEngine_EventSystems_BaseRaycaster:IsActive()
end

--- @return System_Boolean
function UnityEngine_EventSystems_BaseRaycaster:IsDestroyed()
end

--- @return System_Boolean
function UnityEngine_EventSystems_BaseRaycaster:IsInvoking()
end

--- @return System_Void
function UnityEngine_EventSystems_BaseRaycaster:CancelInvoke()
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
function UnityEngine_EventSystems_BaseRaycaster:Invoke(methodName, time)
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
--- @param repeatRate System_Single
function UnityEngine_EventSystems_BaseRaycaster:InvokeRepeating(methodName, time, repeatRate)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_EventSystems_BaseRaycaster:CancelInvoke(methodName)
end

--- @return System_Boolean
--- @param methodName System_String
function UnityEngine_EventSystems_BaseRaycaster:IsInvoking(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
function UnityEngine_EventSystems_BaseRaycaster:StartCoroutine(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_EventSystems_BaseRaycaster:StartCoroutine(methodName, value)
end

--- @return UnityEngine_Coroutine
--- @param routine System_Collections_IEnumerator
function UnityEngine_EventSystems_BaseRaycaster:StartCoroutine(routine)
end

--- @return System_Void
--- @param routine System_Collections_IEnumerator
function UnityEngine_EventSystems_BaseRaycaster:StopCoroutine(routine)
end

--- @return System_Void
--- @param routine UnityEngine_Coroutine
function UnityEngine_EventSystems_BaseRaycaster:StopCoroutine(routine)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_EventSystems_BaseRaycaster:StopCoroutine(methodName)
end

--- @return System_Void
function UnityEngine_EventSystems_BaseRaycaster:StopAllCoroutines()
end

--- @return UnityEngine_Component
--- @param type System_Type
function UnityEngine_EventSystems_BaseRaycaster:GetComponent(type)
end

--- @return CS_T
function UnityEngine_EventSystems_BaseRaycaster:GetComponent()
end

--- @return UnityEngine_Component
--- @param type System_String
function UnityEngine_EventSystems_BaseRaycaster:GetComponent(type)
end

--- @return UnityEngine_Component
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_EventSystems_BaseRaycaster:GetComponentInChildren(t, includeInactive)
end

--- @return UnityEngine_Component
--- @param t System_Type
function UnityEngine_EventSystems_BaseRaycaster:GetComponentInChildren(t)
end

--- @return CS_T
--- @param includeInactive System_Boolean
function UnityEngine_EventSystems_BaseRaycaster:GetComponentInChildren(includeInactive)
end

--- @return CS_T
function UnityEngine_EventSystems_BaseRaycaster:GetComponentInChildren()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_EventSystems_BaseRaycaster:GetComponentsInChildren(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function UnityEngine_EventSystems_BaseRaycaster:GetComponentsInChildren(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function UnityEngine_EventSystems_BaseRaycaster:GetComponentsInChildren(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param result System_Collections_Generic_List`1[T]
function UnityEngine_EventSystems_BaseRaycaster:GetComponentsInChildren(includeInactive, result)
end

--- @return CS_T[]
function UnityEngine_EventSystems_BaseRaycaster:GetComponentsInChildren()
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_EventSystems_BaseRaycaster:GetComponentsInChildren(results)
end

--- @return UnityEngine_Component
--- @param t System_Type
function UnityEngine_EventSystems_BaseRaycaster:GetComponentInParent(t)
end

--- @return CS_T
function UnityEngine_EventSystems_BaseRaycaster:GetComponentInParent()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_EventSystems_BaseRaycaster:GetComponentsInParent(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function UnityEngine_EventSystems_BaseRaycaster:GetComponentsInParent(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function UnityEngine_EventSystems_BaseRaycaster:GetComponentsInParent(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_EventSystems_BaseRaycaster:GetComponentsInParent(includeInactive, results)
end

--- @return CS_T[]
function UnityEngine_EventSystems_BaseRaycaster:GetComponentsInParent()
end

--- @return UnityEngine_Component[]
--- @param type System_Type
function UnityEngine_EventSystems_BaseRaycaster:GetComponents(type)
end

--- @return System_Void
--- @param type System_Type
--- @param results System_Collections_Generic_List`1[UnityEngine_Component]
function UnityEngine_EventSystems_BaseRaycaster:GetComponents(type, results)
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_EventSystems_BaseRaycaster:GetComponents(results)
end

--- @return CS_T[]
function UnityEngine_EventSystems_BaseRaycaster:GetComponents()
end

--- @return System_Boolean
--- @param tag System_String
function UnityEngine_EventSystems_BaseRaycaster:CompareTag(tag)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_EventSystems_BaseRaycaster:SendMessageUpwards(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_EventSystems_BaseRaycaster:SendMessageUpwards(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_EventSystems_BaseRaycaster:SendMessageUpwards(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_EventSystems_BaseRaycaster:SendMessageUpwards(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_EventSystems_BaseRaycaster:SendMessage(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_EventSystems_BaseRaycaster:SendMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_EventSystems_BaseRaycaster:SendMessage(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_EventSystems_BaseRaycaster:SendMessage(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_EventSystems_BaseRaycaster:BroadcastMessage(methodName, parameter, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
function UnityEngine_EventSystems_BaseRaycaster:BroadcastMessage(methodName, parameter)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_EventSystems_BaseRaycaster:BroadcastMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_EventSystems_BaseRaycaster:BroadcastMessage(methodName, options)
end

--- @return System_Int32
function UnityEngine_EventSystems_BaseRaycaster:GetInstanceID()
end

--- @return System_Int32
function UnityEngine_EventSystems_BaseRaycaster:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function UnityEngine_EventSystems_BaseRaycaster:Equals(other)
end

--- @return System_Type
function UnityEngine_EventSystems_BaseRaycaster:GetType()
end
