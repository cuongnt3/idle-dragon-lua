--- @class UnityEngine_EventSystems_BaseInputModule
UnityEngine_EventSystems_BaseInputModule = Class(UnityEngine_EventSystems_BaseInputModule)

--- @return void
function UnityEngine_EventSystems_BaseInputModule:Ctor()
	--- @type UnityEngine_EventSystems_BaseInput
	self.input = nil
	--- @type UnityEngine_EventSystems_BaseInput
	self.inputOverride = nil
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
function UnityEngine_EventSystems_BaseInputModule:Process()
end

--- @return System_Boolean
--- @param pointerId System_Int32
function UnityEngine_EventSystems_BaseInputModule:IsPointerOverGameObject(pointerId)
end

--- @return System_Boolean
function UnityEngine_EventSystems_BaseInputModule:ShouldActivateModule()
end

--- @return System_Void
function UnityEngine_EventSystems_BaseInputModule:DeactivateModule()
end

--- @return System_Void
function UnityEngine_EventSystems_BaseInputModule:ActivateModule()
end

--- @return System_Void
function UnityEngine_EventSystems_BaseInputModule:UpdateModule()
end

--- @return System_Boolean
function UnityEngine_EventSystems_BaseInputModule:IsModuleSupported()
end

--- @return System_Boolean
function UnityEngine_EventSystems_BaseInputModule:IsActive()
end

--- @return System_Boolean
function UnityEngine_EventSystems_BaseInputModule:IsDestroyed()
end

--- @return System_Boolean
function UnityEngine_EventSystems_BaseInputModule:IsInvoking()
end

--- @return System_Void
function UnityEngine_EventSystems_BaseInputModule:CancelInvoke()
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
function UnityEngine_EventSystems_BaseInputModule:Invoke(methodName, time)
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
--- @param repeatRate System_Single
function UnityEngine_EventSystems_BaseInputModule:InvokeRepeating(methodName, time, repeatRate)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_EventSystems_BaseInputModule:CancelInvoke(methodName)
end

--- @return System_Boolean
--- @param methodName System_String
function UnityEngine_EventSystems_BaseInputModule:IsInvoking(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
function UnityEngine_EventSystems_BaseInputModule:StartCoroutine(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_EventSystems_BaseInputModule:StartCoroutine(methodName, value)
end

--- @return UnityEngine_Coroutine
--- @param routine System_Collections_IEnumerator
function UnityEngine_EventSystems_BaseInputModule:StartCoroutine(routine)
end

--- @return System_Void
--- @param routine System_Collections_IEnumerator
function UnityEngine_EventSystems_BaseInputModule:StopCoroutine(routine)
end

--- @return System_Void
--- @param routine UnityEngine_Coroutine
function UnityEngine_EventSystems_BaseInputModule:StopCoroutine(routine)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_EventSystems_BaseInputModule:StopCoroutine(methodName)
end

--- @return System_Void
function UnityEngine_EventSystems_BaseInputModule:StopAllCoroutines()
end

--- @return UnityEngine_Component
--- @param type System_Type
function UnityEngine_EventSystems_BaseInputModule:GetComponent(type)
end

--- @return CS_T
function UnityEngine_EventSystems_BaseInputModule:GetComponent()
end

--- @return UnityEngine_Component
--- @param type System_String
function UnityEngine_EventSystems_BaseInputModule:GetComponent(type)
end

--- @return UnityEngine_Component
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_EventSystems_BaseInputModule:GetComponentInChildren(t, includeInactive)
end

--- @return UnityEngine_Component
--- @param t System_Type
function UnityEngine_EventSystems_BaseInputModule:GetComponentInChildren(t)
end

--- @return CS_T
--- @param includeInactive System_Boolean
function UnityEngine_EventSystems_BaseInputModule:GetComponentInChildren(includeInactive)
end

--- @return CS_T
function UnityEngine_EventSystems_BaseInputModule:GetComponentInChildren()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_EventSystems_BaseInputModule:GetComponentsInChildren(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function UnityEngine_EventSystems_BaseInputModule:GetComponentsInChildren(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function UnityEngine_EventSystems_BaseInputModule:GetComponentsInChildren(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param result System_Collections_Generic_List`1[T]
function UnityEngine_EventSystems_BaseInputModule:GetComponentsInChildren(includeInactive, result)
end

--- @return CS_T[]
function UnityEngine_EventSystems_BaseInputModule:GetComponentsInChildren()
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_EventSystems_BaseInputModule:GetComponentsInChildren(results)
end

--- @return UnityEngine_Component
--- @param t System_Type
function UnityEngine_EventSystems_BaseInputModule:GetComponentInParent(t)
end

--- @return CS_T
function UnityEngine_EventSystems_BaseInputModule:GetComponentInParent()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_EventSystems_BaseInputModule:GetComponentsInParent(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function UnityEngine_EventSystems_BaseInputModule:GetComponentsInParent(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function UnityEngine_EventSystems_BaseInputModule:GetComponentsInParent(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_EventSystems_BaseInputModule:GetComponentsInParent(includeInactive, results)
end

--- @return CS_T[]
function UnityEngine_EventSystems_BaseInputModule:GetComponentsInParent()
end

--- @return UnityEngine_Component[]
--- @param type System_Type
function UnityEngine_EventSystems_BaseInputModule:GetComponents(type)
end

--- @return System_Void
--- @param type System_Type
--- @param results System_Collections_Generic_List`1[UnityEngine_Component]
function UnityEngine_EventSystems_BaseInputModule:GetComponents(type, results)
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_EventSystems_BaseInputModule:GetComponents(results)
end

--- @return CS_T[]
function UnityEngine_EventSystems_BaseInputModule:GetComponents()
end

--- @return System_Boolean
--- @param tag System_String
function UnityEngine_EventSystems_BaseInputModule:CompareTag(tag)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_EventSystems_BaseInputModule:SendMessageUpwards(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_EventSystems_BaseInputModule:SendMessageUpwards(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_EventSystems_BaseInputModule:SendMessageUpwards(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_EventSystems_BaseInputModule:SendMessageUpwards(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_EventSystems_BaseInputModule:SendMessage(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_EventSystems_BaseInputModule:SendMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_EventSystems_BaseInputModule:SendMessage(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_EventSystems_BaseInputModule:SendMessage(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_EventSystems_BaseInputModule:BroadcastMessage(methodName, parameter, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
function UnityEngine_EventSystems_BaseInputModule:BroadcastMessage(methodName, parameter)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_EventSystems_BaseInputModule:BroadcastMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_EventSystems_BaseInputModule:BroadcastMessage(methodName, options)
end

--- @return System_Int32
function UnityEngine_EventSystems_BaseInputModule:GetInstanceID()
end

--- @return System_Int32
function UnityEngine_EventSystems_BaseInputModule:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function UnityEngine_EventSystems_BaseInputModule:Equals(other)
end

--- @return System_String
function UnityEngine_EventSystems_BaseInputModule:ToString()
end

--- @return System_Type
function UnityEngine_EventSystems_BaseInputModule:GetType()
end
