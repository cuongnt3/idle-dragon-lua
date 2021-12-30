--- @class IS_Component_Scale
IS_Component_Scale = Class(IS_Component_Scale)

--- @return void
function IS_Component_Scale:Ctor()
	--- @type UnityEngine_Vector2
	self.localScale = nil
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

--- @return DG_Tweening_Tweener
--- @param scale UnityEngine_Vector2
--- @param time System_Single
--- @param loops System_Int32
--- @param onFinish System_Action
function IS_Component_Scale:Execute(scale, time, loops, onFinish)
end

--- @return System_Boolean
function IS_Component_Scale:IsInvoking()
end

--- @return System_Void
function IS_Component_Scale:CancelInvoke()
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
function IS_Component_Scale:Invoke(methodName, time)
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
--- @param repeatRate System_Single
function IS_Component_Scale:InvokeRepeating(methodName, time, repeatRate)
end

--- @return System_Void
--- @param methodName System_String
function IS_Component_Scale:CancelInvoke(methodName)
end

--- @return System_Boolean
--- @param methodName System_String
function IS_Component_Scale:IsInvoking(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
function IS_Component_Scale:StartCoroutine(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
--- @param value System_Object
function IS_Component_Scale:StartCoroutine(methodName, value)
end

--- @return UnityEngine_Coroutine
--- @param routine System_Collections_IEnumerator
function IS_Component_Scale:StartCoroutine(routine)
end

--- @return System_Void
--- @param routine System_Collections_IEnumerator
function IS_Component_Scale:StopCoroutine(routine)
end

--- @return System_Void
--- @param routine UnityEngine_Coroutine
function IS_Component_Scale:StopCoroutine(routine)
end

--- @return System_Void
--- @param methodName System_String
function IS_Component_Scale:StopCoroutine(methodName)
end

--- @return System_Void
function IS_Component_Scale:StopAllCoroutines()
end

--- @return UnityEngine_Component
--- @param type System_Type
function IS_Component_Scale:GetComponent(type)
end

--- @return CS_T
function IS_Component_Scale:GetComponent()
end

--- @return UnityEngine_Component
--- @param type System_String
function IS_Component_Scale:GetComponent(type)
end

--- @return UnityEngine_Component
--- @param t System_Type
--- @param includeInactive System_Boolean
function IS_Component_Scale:GetComponentInChildren(t, includeInactive)
end

--- @return UnityEngine_Component
--- @param t System_Type
function IS_Component_Scale:GetComponentInChildren(t)
end

--- @return CS_T
--- @param includeInactive System_Boolean
function IS_Component_Scale:GetComponentInChildren(includeInactive)
end

--- @return CS_T
function IS_Component_Scale:GetComponentInChildren()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function IS_Component_Scale:GetComponentsInChildren(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function IS_Component_Scale:GetComponentsInChildren(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function IS_Component_Scale:GetComponentsInChildren(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param result System_Collections_Generic_List`1[T]
function IS_Component_Scale:GetComponentsInChildren(includeInactive, result)
end

--- @return CS_T[]
function IS_Component_Scale:GetComponentsInChildren()
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function IS_Component_Scale:GetComponentsInChildren(results)
end

--- @return UnityEngine_Component
--- @param t System_Type
function IS_Component_Scale:GetComponentInParent(t)
end

--- @return CS_T
function IS_Component_Scale:GetComponentInParent()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function IS_Component_Scale:GetComponentsInParent(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function IS_Component_Scale:GetComponentsInParent(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function IS_Component_Scale:GetComponentsInParent(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param results System_Collections_Generic_List`1[T]
function IS_Component_Scale:GetComponentsInParent(includeInactive, results)
end

--- @return CS_T[]
function IS_Component_Scale:GetComponentsInParent()
end

--- @return UnityEngine_Component[]
--- @param type System_Type
function IS_Component_Scale:GetComponents(type)
end

--- @return System_Void
--- @param type System_Type
--- @param results System_Collections_Generic_List`1[UnityEngine_Component]
function IS_Component_Scale:GetComponents(type, results)
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function IS_Component_Scale:GetComponents(results)
end

--- @return CS_T[]
function IS_Component_Scale:GetComponents()
end

--- @return System_Boolean
--- @param tag System_String
function IS_Component_Scale:CompareTag(tag)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function IS_Component_Scale:SendMessageUpwards(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function IS_Component_Scale:SendMessageUpwards(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function IS_Component_Scale:SendMessageUpwards(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function IS_Component_Scale:SendMessageUpwards(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function IS_Component_Scale:SendMessage(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function IS_Component_Scale:SendMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function IS_Component_Scale:SendMessage(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function IS_Component_Scale:SendMessage(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
--- @param options UnityEngine_SendMessageOptions
function IS_Component_Scale:BroadcastMessage(methodName, parameter, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
function IS_Component_Scale:BroadcastMessage(methodName, parameter)
end

--- @return System_Void
--- @param methodName System_String
function IS_Component_Scale:BroadcastMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function IS_Component_Scale:BroadcastMessage(methodName, options)
end

--- @return System_Int32
function IS_Component_Scale:GetInstanceID()
end

--- @return System_Int32
function IS_Component_Scale:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function IS_Component_Scale:Equals(other)
end

--- @return System_String
function IS_Component_Scale:ToString()
end

--- @return System_Type
function IS_Component_Scale:GetType()
end
