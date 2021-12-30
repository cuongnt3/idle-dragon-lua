--- @class CS_AnimationCallback
CS_AnimationCallback = Class(CS_AnimationCallback)

--- @return void
function CS_AnimationCallback:Ctor()
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
	--- @type System_Action
	self.callbackFinishAnimation = nil
end

--- @return System_Void
function CS_AnimationCallback:OnFinishAnimation()
end

--- @return System_Boolean
function CS_AnimationCallback:IsInvoking()
end

--- @return System_Void
function CS_AnimationCallback:CancelInvoke()
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
function CS_AnimationCallback:Invoke(methodName, time)
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
--- @param repeatRate System_Single
function CS_AnimationCallback:InvokeRepeating(methodName, time, repeatRate)
end

--- @return System_Void
--- @param methodName System_String
function CS_AnimationCallback:CancelInvoke(methodName)
end

--- @return System_Boolean
--- @param methodName System_String
function CS_AnimationCallback:IsInvoking(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
function CS_AnimationCallback:StartCoroutine(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
--- @param value System_Object
function CS_AnimationCallback:StartCoroutine(methodName, value)
end

--- @return UnityEngine_Coroutine
--- @param routine System_Collections_IEnumerator
function CS_AnimationCallback:StartCoroutine(routine)
end

--- @return System_Void
--- @param routine System_Collections_IEnumerator
function CS_AnimationCallback:StopCoroutine(routine)
end

--- @return System_Void
--- @param routine UnityEngine_Coroutine
function CS_AnimationCallback:StopCoroutine(routine)
end

--- @return System_Void
--- @param methodName System_String
function CS_AnimationCallback:StopCoroutine(methodName)
end

--- @return System_Void
function CS_AnimationCallback:StopAllCoroutines()
end

--- @return UnityEngine_Component
--- @param type System_Type
function CS_AnimationCallback:GetComponent(type)
end

--- @return CS_T
function CS_AnimationCallback:GetComponent()
end

--- @return UnityEngine_Component
--- @param type System_String
function CS_AnimationCallback:GetComponent(type)
end

--- @return UnityEngine_Component
--- @param t System_Type
--- @param includeInactive System_Boolean
function CS_AnimationCallback:GetComponentInChildren(t, includeInactive)
end

--- @return UnityEngine_Component
--- @param t System_Type
function CS_AnimationCallback:GetComponentInChildren(t)
end

--- @return CS_T
--- @param includeInactive System_Boolean
function CS_AnimationCallback:GetComponentInChildren(includeInactive)
end

--- @return CS_T
function CS_AnimationCallback:GetComponentInChildren()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function CS_AnimationCallback:GetComponentsInChildren(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function CS_AnimationCallback:GetComponentsInChildren(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function CS_AnimationCallback:GetComponentsInChildren(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param result System_Collections_Generic_List`1[T]
function CS_AnimationCallback:GetComponentsInChildren(includeInactive, result)
end

--- @return CS_T[]
function CS_AnimationCallback:GetComponentsInChildren()
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function CS_AnimationCallback:GetComponentsInChildren(results)
end

--- @return UnityEngine_Component
--- @param t System_Type
function CS_AnimationCallback:GetComponentInParent(t)
end

--- @return CS_T
function CS_AnimationCallback:GetComponentInParent()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function CS_AnimationCallback:GetComponentsInParent(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function CS_AnimationCallback:GetComponentsInParent(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function CS_AnimationCallback:GetComponentsInParent(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param results System_Collections_Generic_List`1[T]
function CS_AnimationCallback:GetComponentsInParent(includeInactive, results)
end

--- @return CS_T[]
function CS_AnimationCallback:GetComponentsInParent()
end

--- @return UnityEngine_Component[]
--- @param type System_Type
function CS_AnimationCallback:GetComponents(type)
end

--- @return System_Void
--- @param type System_Type
--- @param results System_Collections_Generic_List`1[UnityEngine_Component]
function CS_AnimationCallback:GetComponents(type, results)
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function CS_AnimationCallback:GetComponents(results)
end

--- @return CS_T[]
function CS_AnimationCallback:GetComponents()
end

--- @return System_Boolean
--- @param tag System_String
function CS_AnimationCallback:CompareTag(tag)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function CS_AnimationCallback:SendMessageUpwards(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function CS_AnimationCallback:SendMessageUpwards(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function CS_AnimationCallback:SendMessageUpwards(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function CS_AnimationCallback:SendMessageUpwards(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function CS_AnimationCallback:SendMessage(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function CS_AnimationCallback:SendMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function CS_AnimationCallback:SendMessage(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function CS_AnimationCallback:SendMessage(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
--- @param options UnityEngine_SendMessageOptions
function CS_AnimationCallback:BroadcastMessage(methodName, parameter, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
function CS_AnimationCallback:BroadcastMessage(methodName, parameter)
end

--- @return System_Void
--- @param methodName System_String
function CS_AnimationCallback:BroadcastMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function CS_AnimationCallback:BroadcastMessage(methodName, options)
end

--- @return System_Int32
function CS_AnimationCallback:GetInstanceID()
end

--- @return System_Int32
function CS_AnimationCallback:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function CS_AnimationCallback:Equals(other)
end

--- @return System_String
function CS_AnimationCallback:ToString()
end

--- @return System_Type
function CS_AnimationCallback:GetType()
end
