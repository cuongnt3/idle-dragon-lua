--- @class UnityEngine_UI_VerticalLayoutGroup
UnityEngine_UI_VerticalLayoutGroup = Class(UnityEngine_UI_VerticalLayoutGroup)

--- @return void
function UnityEngine_UI_VerticalLayoutGroup:Ctor()
	--- @type System_Single
	self.spacing = nil
	--- @type System_Boolean
	self.childForceExpandWidth = nil
	--- @type System_Boolean
	self.childForceExpandHeight = nil
	--- @type System_Boolean
	self.childControlWidth = nil
	--- @type System_Boolean
	self.childControlHeight = nil
	--- @type UnityEngine_RectOffset
	self.padding = nil
	--- @type UnityEngine_TextAnchor
	self.childAlignment = nil
	--- @type System_Single
	self.minWidth = nil
	--- @type System_Single
	self.preferredWidth = nil
	--- @type System_Single
	self.flexibleWidth = nil
	--- @type System_Single
	self.minHeight = nil
	--- @type System_Single
	self.preferredHeight = nil
	--- @type System_Single
	self.flexibleHeight = nil
	--- @type System_Int32
	self.layoutPriority = nil
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
function UnityEngine_UI_VerticalLayoutGroup:CalculateLayoutInputHorizontal()
end

--- @return System_Void
function UnityEngine_UI_VerticalLayoutGroup:CalculateLayoutInputVertical()
end

--- @return System_Void
function UnityEngine_UI_VerticalLayoutGroup:SetLayoutHorizontal()
end

--- @return System_Void
function UnityEngine_UI_VerticalLayoutGroup:SetLayoutVertical()
end

--- @return System_Boolean
function UnityEngine_UI_VerticalLayoutGroup:IsActive()
end

--- @return System_Boolean
function UnityEngine_UI_VerticalLayoutGroup:IsDestroyed()
end

--- @return System_Boolean
function UnityEngine_UI_VerticalLayoutGroup:IsInvoking()
end

--- @return System_Void
function UnityEngine_UI_VerticalLayoutGroup:CancelInvoke()
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
function UnityEngine_UI_VerticalLayoutGroup:Invoke(methodName, time)
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
--- @param repeatRate System_Single
function UnityEngine_UI_VerticalLayoutGroup:InvokeRepeating(methodName, time, repeatRate)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_UI_VerticalLayoutGroup:CancelInvoke(methodName)
end

--- @return System_Boolean
--- @param methodName System_String
function UnityEngine_UI_VerticalLayoutGroup:IsInvoking(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
function UnityEngine_UI_VerticalLayoutGroup:StartCoroutine(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_UI_VerticalLayoutGroup:StartCoroutine(methodName, value)
end

--- @return UnityEngine_Coroutine
--- @param routine System_Collections_IEnumerator
function UnityEngine_UI_VerticalLayoutGroup:StartCoroutine(routine)
end

--- @return System_Void
--- @param routine System_Collections_IEnumerator
function UnityEngine_UI_VerticalLayoutGroup:StopCoroutine(routine)
end

--- @return System_Void
--- @param routine UnityEngine_Coroutine
function UnityEngine_UI_VerticalLayoutGroup:StopCoroutine(routine)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_UI_VerticalLayoutGroup:StopCoroutine(methodName)
end

--- @return System_Void
function UnityEngine_UI_VerticalLayoutGroup:StopAllCoroutines()
end

--- @return UnityEngine_Component
--- @param type System_Type
function UnityEngine_UI_VerticalLayoutGroup:GetComponent(type)
end

--- @return CS_T
function UnityEngine_UI_VerticalLayoutGroup:GetComponent()
end

--- @return UnityEngine_Component
--- @param type System_String
function UnityEngine_UI_VerticalLayoutGroup:GetComponent(type)
end

--- @return UnityEngine_Component
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_UI_VerticalLayoutGroup:GetComponentInChildren(t, includeInactive)
end

--- @return UnityEngine_Component
--- @param t System_Type
function UnityEngine_UI_VerticalLayoutGroup:GetComponentInChildren(t)
end

--- @return CS_T
--- @param includeInactive System_Boolean
function UnityEngine_UI_VerticalLayoutGroup:GetComponentInChildren(includeInactive)
end

--- @return CS_T
function UnityEngine_UI_VerticalLayoutGroup:GetComponentInChildren()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_UI_VerticalLayoutGroup:GetComponentsInChildren(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function UnityEngine_UI_VerticalLayoutGroup:GetComponentsInChildren(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function UnityEngine_UI_VerticalLayoutGroup:GetComponentsInChildren(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param result System_Collections_Generic_List`1[T]
function UnityEngine_UI_VerticalLayoutGroup:GetComponentsInChildren(includeInactive, result)
end

--- @return CS_T[]
function UnityEngine_UI_VerticalLayoutGroup:GetComponentsInChildren()
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_UI_VerticalLayoutGroup:GetComponentsInChildren(results)
end

--- @return UnityEngine_Component
--- @param t System_Type
function UnityEngine_UI_VerticalLayoutGroup:GetComponentInParent(t)
end

--- @return CS_T
function UnityEngine_UI_VerticalLayoutGroup:GetComponentInParent()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_UI_VerticalLayoutGroup:GetComponentsInParent(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function UnityEngine_UI_VerticalLayoutGroup:GetComponentsInParent(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function UnityEngine_UI_VerticalLayoutGroup:GetComponentsInParent(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_UI_VerticalLayoutGroup:GetComponentsInParent(includeInactive, results)
end

--- @return CS_T[]
function UnityEngine_UI_VerticalLayoutGroup:GetComponentsInParent()
end

--- @return UnityEngine_Component[]
--- @param type System_Type
function UnityEngine_UI_VerticalLayoutGroup:GetComponents(type)
end

--- @return System_Void
--- @param type System_Type
--- @param results System_Collections_Generic_List`1[UnityEngine_Component]
function UnityEngine_UI_VerticalLayoutGroup:GetComponents(type, results)
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_UI_VerticalLayoutGroup:GetComponents(results)
end

--- @return CS_T[]
function UnityEngine_UI_VerticalLayoutGroup:GetComponents()
end

--- @return System_Boolean
--- @param tag System_String
function UnityEngine_UI_VerticalLayoutGroup:CompareTag(tag)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_VerticalLayoutGroup:SendMessageUpwards(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_UI_VerticalLayoutGroup:SendMessageUpwards(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_UI_VerticalLayoutGroup:SendMessageUpwards(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_VerticalLayoutGroup:SendMessageUpwards(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_UI_VerticalLayoutGroup:SendMessage(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_UI_VerticalLayoutGroup:SendMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_VerticalLayoutGroup:SendMessage(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_VerticalLayoutGroup:SendMessage(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_VerticalLayoutGroup:BroadcastMessage(methodName, parameter, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
function UnityEngine_UI_VerticalLayoutGroup:BroadcastMessage(methodName, parameter)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_UI_VerticalLayoutGroup:BroadcastMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_VerticalLayoutGroup:BroadcastMessage(methodName, options)
end

--- @return System_Int32
function UnityEngine_UI_VerticalLayoutGroup:GetInstanceID()
end

--- @return System_Int32
function UnityEngine_UI_VerticalLayoutGroup:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function UnityEngine_UI_VerticalLayoutGroup:Equals(other)
end

--- @return System_String
function UnityEngine_UI_VerticalLayoutGroup:ToString()
end

--- @return System_Type
function UnityEngine_UI_VerticalLayoutGroup:GetType()
end
