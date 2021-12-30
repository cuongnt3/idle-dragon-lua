--- @class UnityEngine_UI_ContentSizeFitter
UnityEngine_UI_ContentSizeFitter = Class(UnityEngine_UI_ContentSizeFitter)

--- @return void
function UnityEngine_UI_ContentSizeFitter:Ctor()
	--- @type UnityEngine_UI_ContentSizeFitter_FitMode
	self.horizontalFit = nil
	--- @type UnityEngine_UI_ContentSizeFitter_FitMode
	self.verticalFit = nil
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
end

--- @return System_Void
function UnityEngine_UI_ContentSizeFitter:SetLayoutHorizontal()
end

--- @return System_Void
function UnityEngine_UI_ContentSizeFitter:SetLayoutVertical()
end

--- @return System_Boolean
function UnityEngine_UI_ContentSizeFitter:IsActive()
end

--- @return System_Boolean
function UnityEngine_UI_ContentSizeFitter:IsDestroyed()
end

--- @return System_Boolean
function UnityEngine_UI_ContentSizeFitter:IsInvoking()
end

--- @return System_Void
function UnityEngine_UI_ContentSizeFitter:CancelInvoke()
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
function UnityEngine_UI_ContentSizeFitter:Invoke(methodName, time)
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
--- @param repeatRate System_Single
function UnityEngine_UI_ContentSizeFitter:InvokeRepeating(methodName, time, repeatRate)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_UI_ContentSizeFitter:CancelInvoke(methodName)
end

--- @return System_Boolean
--- @param methodName System_String
function UnityEngine_UI_ContentSizeFitter:IsInvoking(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
function UnityEngine_UI_ContentSizeFitter:StartCoroutine(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_UI_ContentSizeFitter:StartCoroutine(methodName, value)
end

--- @return UnityEngine_Coroutine
--- @param routine System_Collections_IEnumerator
function UnityEngine_UI_ContentSizeFitter:StartCoroutine(routine)
end

--- @return System_Void
--- @param routine System_Collections_IEnumerator
function UnityEngine_UI_ContentSizeFitter:StopCoroutine(routine)
end

--- @return System_Void
--- @param routine UnityEngine_Coroutine
function UnityEngine_UI_ContentSizeFitter:StopCoroutine(routine)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_UI_ContentSizeFitter:StopCoroutine(methodName)
end

--- @return System_Void
function UnityEngine_UI_ContentSizeFitter:StopAllCoroutines()
end

--- @return UnityEngine_Component
--- @param type System_Type
function UnityEngine_UI_ContentSizeFitter:GetComponent(type)
end

--- @return CS_T
function UnityEngine_UI_ContentSizeFitter:GetComponent()
end

--- @return UnityEngine_Component
--- @param type System_String
function UnityEngine_UI_ContentSizeFitter:GetComponent(type)
end

--- @return UnityEngine_Component
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_UI_ContentSizeFitter:GetComponentInChildren(t, includeInactive)
end

--- @return UnityEngine_Component
--- @param t System_Type
function UnityEngine_UI_ContentSizeFitter:GetComponentInChildren(t)
end

--- @return CS_T
--- @param includeInactive System_Boolean
function UnityEngine_UI_ContentSizeFitter:GetComponentInChildren(includeInactive)
end

--- @return CS_T
function UnityEngine_UI_ContentSizeFitter:GetComponentInChildren()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_UI_ContentSizeFitter:GetComponentsInChildren(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function UnityEngine_UI_ContentSizeFitter:GetComponentsInChildren(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function UnityEngine_UI_ContentSizeFitter:GetComponentsInChildren(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param result System_Collections_Generic_List`1[T]
function UnityEngine_UI_ContentSizeFitter:GetComponentsInChildren(includeInactive, result)
end

--- @return CS_T[]
function UnityEngine_UI_ContentSizeFitter:GetComponentsInChildren()
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_UI_ContentSizeFitter:GetComponentsInChildren(results)
end

--- @return UnityEngine_Component
--- @param t System_Type
function UnityEngine_UI_ContentSizeFitter:GetComponentInParent(t)
end

--- @return CS_T
function UnityEngine_UI_ContentSizeFitter:GetComponentInParent()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_UI_ContentSizeFitter:GetComponentsInParent(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function UnityEngine_UI_ContentSizeFitter:GetComponentsInParent(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function UnityEngine_UI_ContentSizeFitter:GetComponentsInParent(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_UI_ContentSizeFitter:GetComponentsInParent(includeInactive, results)
end

--- @return CS_T[]
function UnityEngine_UI_ContentSizeFitter:GetComponentsInParent()
end

--- @return UnityEngine_Component[]
--- @param type System_Type
function UnityEngine_UI_ContentSizeFitter:GetComponents(type)
end

--- @return System_Void
--- @param type System_Type
--- @param results System_Collections_Generic_List`1[UnityEngine_Component]
function UnityEngine_UI_ContentSizeFitter:GetComponents(type, results)
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_UI_ContentSizeFitter:GetComponents(results)
end

--- @return CS_T[]
function UnityEngine_UI_ContentSizeFitter:GetComponents()
end

--- @return System_Boolean
--- @param tag System_String
function UnityEngine_UI_ContentSizeFitter:CompareTag(tag)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_ContentSizeFitter:SendMessageUpwards(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_UI_ContentSizeFitter:SendMessageUpwards(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_UI_ContentSizeFitter:SendMessageUpwards(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_ContentSizeFitter:SendMessageUpwards(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_UI_ContentSizeFitter:SendMessage(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_UI_ContentSizeFitter:SendMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_ContentSizeFitter:SendMessage(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_ContentSizeFitter:SendMessage(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_ContentSizeFitter:BroadcastMessage(methodName, parameter, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
function UnityEngine_UI_ContentSizeFitter:BroadcastMessage(methodName, parameter)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_UI_ContentSizeFitter:BroadcastMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_ContentSizeFitter:BroadcastMessage(methodName, options)
end

--- @return System_Int32
function UnityEngine_UI_ContentSizeFitter:GetInstanceID()
end

--- @return System_Int32
function UnityEngine_UI_ContentSizeFitter:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function UnityEngine_UI_ContentSizeFitter:Equals(other)
end

--- @return System_String
function UnityEngine_UI_ContentSizeFitter:ToString()
end

--- @return System_Type
function UnityEngine_UI_ContentSizeFitter:GetType()
end
