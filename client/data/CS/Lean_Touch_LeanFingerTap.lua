--- @class Lean_Touch_LeanFingerTap
Lean_Touch_LeanFingerTap = Class(Lean_Touch_LeanFingerTap)

--- @return void
function Lean_Touch_LeanFingerTap:Ctor()
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
	--- @type System_Action`1[UnityEngine_Vector2]
	self.onPosition = nil
end

--- @return System_Void
--- @param camera UnityEngine_Camera
--- @param rect UnityEngine_RectTransform
function Lean_Touch_LeanFingerTap:Init(camera, rect)
end

--- @return System_Boolean
function Lean_Touch_LeanFingerTap:IsInvoking()
end

--- @return System_Void
function Lean_Touch_LeanFingerTap:CancelInvoke()
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
function Lean_Touch_LeanFingerTap:Invoke(methodName, time)
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
--- @param repeatRate System_Single
function Lean_Touch_LeanFingerTap:InvokeRepeating(methodName, time, repeatRate)
end

--- @return System_Void
--- @param methodName System_String
function Lean_Touch_LeanFingerTap:CancelInvoke(methodName)
end

--- @return System_Boolean
--- @param methodName System_String
function Lean_Touch_LeanFingerTap:IsInvoking(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
function Lean_Touch_LeanFingerTap:StartCoroutine(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
--- @param value System_Object
function Lean_Touch_LeanFingerTap:StartCoroutine(methodName, value)
end

--- @return UnityEngine_Coroutine
--- @param routine System_Collections_IEnumerator
function Lean_Touch_LeanFingerTap:StartCoroutine(routine)
end

--- @return System_Void
--- @param routine System_Collections_IEnumerator
function Lean_Touch_LeanFingerTap:StopCoroutine(routine)
end

--- @return System_Void
--- @param routine UnityEngine_Coroutine
function Lean_Touch_LeanFingerTap:StopCoroutine(routine)
end

--- @return System_Void
--- @param methodName System_String
function Lean_Touch_LeanFingerTap:StopCoroutine(methodName)
end

--- @return System_Void
function Lean_Touch_LeanFingerTap:StopAllCoroutines()
end

--- @return UnityEngine_Component
--- @param type System_Type
function Lean_Touch_LeanFingerTap:GetComponent(type)
end

--- @return CS_T
function Lean_Touch_LeanFingerTap:GetComponent()
end

--- @return UnityEngine_Component
--- @param type System_String
function Lean_Touch_LeanFingerTap:GetComponent(type)
end

--- @return UnityEngine_Component
--- @param t System_Type
--- @param includeInactive System_Boolean
function Lean_Touch_LeanFingerTap:GetComponentInChildren(t, includeInactive)
end

--- @return UnityEngine_Component
--- @param t System_Type
function Lean_Touch_LeanFingerTap:GetComponentInChildren(t)
end

--- @return CS_T
--- @param includeInactive System_Boolean
function Lean_Touch_LeanFingerTap:GetComponentInChildren(includeInactive)
end

--- @return CS_T
function Lean_Touch_LeanFingerTap:GetComponentInChildren()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function Lean_Touch_LeanFingerTap:GetComponentsInChildren(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function Lean_Touch_LeanFingerTap:GetComponentsInChildren(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function Lean_Touch_LeanFingerTap:GetComponentsInChildren(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param result System_Collections_Generic_List`1[T]
function Lean_Touch_LeanFingerTap:GetComponentsInChildren(includeInactive, result)
end

--- @return CS_T[]
function Lean_Touch_LeanFingerTap:GetComponentsInChildren()
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function Lean_Touch_LeanFingerTap:GetComponentsInChildren(results)
end

--- @return UnityEngine_Component
--- @param t System_Type
function Lean_Touch_LeanFingerTap:GetComponentInParent(t)
end

--- @return CS_T
function Lean_Touch_LeanFingerTap:GetComponentInParent()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function Lean_Touch_LeanFingerTap:GetComponentsInParent(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function Lean_Touch_LeanFingerTap:GetComponentsInParent(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function Lean_Touch_LeanFingerTap:GetComponentsInParent(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param results System_Collections_Generic_List`1[T]
function Lean_Touch_LeanFingerTap:GetComponentsInParent(includeInactive, results)
end

--- @return CS_T[]
function Lean_Touch_LeanFingerTap:GetComponentsInParent()
end

--- @return UnityEngine_Component[]
--- @param type System_Type
function Lean_Touch_LeanFingerTap:GetComponents(type)
end

--- @return System_Void
--- @param type System_Type
--- @param results System_Collections_Generic_List`1[UnityEngine_Component]
function Lean_Touch_LeanFingerTap:GetComponents(type, results)
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function Lean_Touch_LeanFingerTap:GetComponents(results)
end

--- @return CS_T[]
function Lean_Touch_LeanFingerTap:GetComponents()
end

--- @return System_Boolean
--- @param tag System_String
function Lean_Touch_LeanFingerTap:CompareTag(tag)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function Lean_Touch_LeanFingerTap:SendMessageUpwards(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function Lean_Touch_LeanFingerTap:SendMessageUpwards(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function Lean_Touch_LeanFingerTap:SendMessageUpwards(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function Lean_Touch_LeanFingerTap:SendMessageUpwards(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function Lean_Touch_LeanFingerTap:SendMessage(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function Lean_Touch_LeanFingerTap:SendMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function Lean_Touch_LeanFingerTap:SendMessage(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function Lean_Touch_LeanFingerTap:SendMessage(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
--- @param options UnityEngine_SendMessageOptions
function Lean_Touch_LeanFingerTap:BroadcastMessage(methodName, parameter, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
function Lean_Touch_LeanFingerTap:BroadcastMessage(methodName, parameter)
end

--- @return System_Void
--- @param methodName System_String
function Lean_Touch_LeanFingerTap:BroadcastMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function Lean_Touch_LeanFingerTap:BroadcastMessage(methodName, options)
end

--- @return System_Int32
function Lean_Touch_LeanFingerTap:GetInstanceID()
end

--- @return System_Int32
function Lean_Touch_LeanFingerTap:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function Lean_Touch_LeanFingerTap:Equals(other)
end

--- @return System_String
function Lean_Touch_LeanFingerTap:ToString()
end

--- @return System_Type
function Lean_Touch_LeanFingerTap:GetType()
end
