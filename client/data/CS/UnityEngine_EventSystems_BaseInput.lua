--- @class UnityEngine_EventSystems_BaseInput
UnityEngine_EventSystems_BaseInput = Class(UnityEngine_EventSystems_BaseInput)

--- @return void
function UnityEngine_EventSystems_BaseInput:Ctor()
	--- @type System_String
	self.compositionString = nil
	--- @type UnityEngine_IMECompositionMode
	self.imeCompositionMode = nil
	--- @type UnityEngine_Vector2
	self.compositionCursorPos = nil
	--- @type System_Boolean
	self.mousePresent = nil
	--- @type UnityEngine_Vector2
	self.mousePosition = nil
	--- @type UnityEngine_Vector2
	self.mouseScrollDelta = nil
	--- @type System_Boolean
	self.touchSupported = nil
	--- @type System_Int32
	self.touchCount = nil
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

--- @return System_Boolean
--- @param button System_Int32
function UnityEngine_EventSystems_BaseInput:GetMouseButtonDown(button)
end

--- @return System_Boolean
--- @param button System_Int32
function UnityEngine_EventSystems_BaseInput:GetMouseButtonUp(button)
end

--- @return System_Boolean
--- @param button System_Int32
function UnityEngine_EventSystems_BaseInput:GetMouseButton(button)
end

--- @return UnityEngine_Touch
--- @param index System_Int32
function UnityEngine_EventSystems_BaseInput:GetTouch(index)
end

--- @return System_Single
--- @param axisName System_String
function UnityEngine_EventSystems_BaseInput:GetAxisRaw(axisName)
end

--- @return System_Boolean
--- @param buttonName System_String
function UnityEngine_EventSystems_BaseInput:GetButtonDown(buttonName)
end

--- @return System_Boolean
function UnityEngine_EventSystems_BaseInput:IsActive()
end

--- @return System_Boolean
function UnityEngine_EventSystems_BaseInput:IsDestroyed()
end

--- @return System_Boolean
function UnityEngine_EventSystems_BaseInput:IsInvoking()
end

--- @return System_Void
function UnityEngine_EventSystems_BaseInput:CancelInvoke()
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
function UnityEngine_EventSystems_BaseInput:Invoke(methodName, time)
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
--- @param repeatRate System_Single
function UnityEngine_EventSystems_BaseInput:InvokeRepeating(methodName, time, repeatRate)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_EventSystems_BaseInput:CancelInvoke(methodName)
end

--- @return System_Boolean
--- @param methodName System_String
function UnityEngine_EventSystems_BaseInput:IsInvoking(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
function UnityEngine_EventSystems_BaseInput:StartCoroutine(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_EventSystems_BaseInput:StartCoroutine(methodName, value)
end

--- @return UnityEngine_Coroutine
--- @param routine System_Collections_IEnumerator
function UnityEngine_EventSystems_BaseInput:StartCoroutine(routine)
end

--- @return System_Void
--- @param routine System_Collections_IEnumerator
function UnityEngine_EventSystems_BaseInput:StopCoroutine(routine)
end

--- @return System_Void
--- @param routine UnityEngine_Coroutine
function UnityEngine_EventSystems_BaseInput:StopCoroutine(routine)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_EventSystems_BaseInput:StopCoroutine(methodName)
end

--- @return System_Void
function UnityEngine_EventSystems_BaseInput:StopAllCoroutines()
end

--- @return UnityEngine_Component
--- @param type System_Type
function UnityEngine_EventSystems_BaseInput:GetComponent(type)
end

--- @return CS_T
function UnityEngine_EventSystems_BaseInput:GetComponent()
end

--- @return UnityEngine_Component
--- @param type System_String
function UnityEngine_EventSystems_BaseInput:GetComponent(type)
end

--- @return UnityEngine_Component
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_EventSystems_BaseInput:GetComponentInChildren(t, includeInactive)
end

--- @return UnityEngine_Component
--- @param t System_Type
function UnityEngine_EventSystems_BaseInput:GetComponentInChildren(t)
end

--- @return CS_T
--- @param includeInactive System_Boolean
function UnityEngine_EventSystems_BaseInput:GetComponentInChildren(includeInactive)
end

--- @return CS_T
function UnityEngine_EventSystems_BaseInput:GetComponentInChildren()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_EventSystems_BaseInput:GetComponentsInChildren(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function UnityEngine_EventSystems_BaseInput:GetComponentsInChildren(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function UnityEngine_EventSystems_BaseInput:GetComponentsInChildren(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param result System_Collections_Generic_List`1[T]
function UnityEngine_EventSystems_BaseInput:GetComponentsInChildren(includeInactive, result)
end

--- @return CS_T[]
function UnityEngine_EventSystems_BaseInput:GetComponentsInChildren()
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_EventSystems_BaseInput:GetComponentsInChildren(results)
end

--- @return UnityEngine_Component
--- @param t System_Type
function UnityEngine_EventSystems_BaseInput:GetComponentInParent(t)
end

--- @return CS_T
function UnityEngine_EventSystems_BaseInput:GetComponentInParent()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_EventSystems_BaseInput:GetComponentsInParent(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function UnityEngine_EventSystems_BaseInput:GetComponentsInParent(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function UnityEngine_EventSystems_BaseInput:GetComponentsInParent(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_EventSystems_BaseInput:GetComponentsInParent(includeInactive, results)
end

--- @return CS_T[]
function UnityEngine_EventSystems_BaseInput:GetComponentsInParent()
end

--- @return UnityEngine_Component[]
--- @param type System_Type
function UnityEngine_EventSystems_BaseInput:GetComponents(type)
end

--- @return System_Void
--- @param type System_Type
--- @param results System_Collections_Generic_List`1[UnityEngine_Component]
function UnityEngine_EventSystems_BaseInput:GetComponents(type, results)
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_EventSystems_BaseInput:GetComponents(results)
end

--- @return CS_T[]
function UnityEngine_EventSystems_BaseInput:GetComponents()
end

--- @return System_Boolean
--- @param tag System_String
function UnityEngine_EventSystems_BaseInput:CompareTag(tag)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_EventSystems_BaseInput:SendMessageUpwards(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_EventSystems_BaseInput:SendMessageUpwards(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_EventSystems_BaseInput:SendMessageUpwards(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_EventSystems_BaseInput:SendMessageUpwards(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_EventSystems_BaseInput:SendMessage(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_EventSystems_BaseInput:SendMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_EventSystems_BaseInput:SendMessage(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_EventSystems_BaseInput:SendMessage(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_EventSystems_BaseInput:BroadcastMessage(methodName, parameter, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
function UnityEngine_EventSystems_BaseInput:BroadcastMessage(methodName, parameter)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_EventSystems_BaseInput:BroadcastMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_EventSystems_BaseInput:BroadcastMessage(methodName, options)
end

--- @return System_Int32
function UnityEngine_EventSystems_BaseInput:GetInstanceID()
end

--- @return System_Int32
function UnityEngine_EventSystems_BaseInput:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function UnityEngine_EventSystems_BaseInput:Equals(other)
end

--- @return System_String
function UnityEngine_EventSystems_BaseInput:ToString()
end

--- @return System_Type
function UnityEngine_EventSystems_BaseInput:GetType()
end
