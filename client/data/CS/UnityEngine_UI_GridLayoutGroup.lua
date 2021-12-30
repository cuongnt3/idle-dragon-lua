--- @class UnityEngine_UI_GridLayoutGroup
UnityEngine_UI_GridLayoutGroup = Class(UnityEngine_UI_GridLayoutGroup)

--- @return void
function UnityEngine_UI_GridLayoutGroup:Ctor()
	--- @type UnityEngine_UI_GridLayoutGroup_Corner
	self.startCorner = nil
	--- @type UnityEngine_UI_GridLayoutGroup_Axis
	self.startAxis = nil
	--- @type UnityEngine_Vector2
	self.cellSize = nil
	--- @type UnityEngine_Vector2
	self.spacing = nil
	--- @type UnityEngine_UI_GridLayoutGroup_Constraint
	self.constraint = nil
	--- @type System_Int32
	self.constraintCount = nil
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
	self.particleEmitter = nil
	--- @type UnityEngine_Component
	self.particleSystem = nil
	--- @type System_String
	self.name = nil
	--- @type UnityEngine_HideFlags
	self.hideFlags = nil
end

--- @return System_Void
function UnityEngine_UI_GridLayoutGroup:CalculateLayoutInputHorizontal()
end

--- @return System_Void
function UnityEngine_UI_GridLayoutGroup:CalculateLayoutInputVertical()
end

--- @return System_Void
function UnityEngine_UI_GridLayoutGroup:SetLayoutHorizontal()
end

--- @return System_Void
function UnityEngine_UI_GridLayoutGroup:SetLayoutVertical()
end

--- @return System_Boolean
function UnityEngine_UI_GridLayoutGroup:IsActive()
end

--- @return System_Boolean
function UnityEngine_UI_GridLayoutGroup:IsDestroyed()
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
function UnityEngine_UI_GridLayoutGroup:Invoke(methodName, time)
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
--- @param repeatRate System_Single
function UnityEngine_UI_GridLayoutGroup:InvokeRepeating(methodName, time, repeatRate)
end

--- @return System_Void
function UnityEngine_UI_GridLayoutGroup:CancelInvoke()
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_UI_GridLayoutGroup:CancelInvoke(methodName)
end

--- @return System_Boolean
--- @param methodName System_String
function UnityEngine_UI_GridLayoutGroup:IsInvoking(methodName)
end

--- @return System_Boolean
function UnityEngine_UI_GridLayoutGroup:IsInvoking()
end

--- @return UnityEngine_Coroutine
--- @param routine System_Collections_IEnumerator
function UnityEngine_UI_GridLayoutGroup:StartCoroutine(routine)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_UI_GridLayoutGroup:StartCoroutine(methodName, value)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
function UnityEngine_UI_GridLayoutGroup:StartCoroutine(methodName)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_UI_GridLayoutGroup:StopCoroutine(methodName)
end

--- @return System_Void
--- @param routine System_Collections_IEnumerator
function UnityEngine_UI_GridLayoutGroup:StopCoroutine(routine)
end

--- @return System_Void
--- @param routine UnityEngine_Coroutine
function UnityEngine_UI_GridLayoutGroup:StopCoroutine(routine)
end

--- @return System_Void
function UnityEngine_UI_GridLayoutGroup:StopAllCoroutines()
end

--- @return UnityEngine_Component
--- @param type System_Type
function UnityEngine_UI_GridLayoutGroup:GetComponent(type)
end

--- @return CS_T
function UnityEngine_UI_GridLayoutGroup:GetComponent()
end

--- @return UnityEngine_Component
--- @param type System_String
function UnityEngine_UI_GridLayoutGroup:GetComponent(type)
end

--- @return UnityEngine_Component
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_UI_GridLayoutGroup:GetComponentInChildren(t, includeInactive)
end

--- @return UnityEngine_Component
--- @param t System_Type
function UnityEngine_UI_GridLayoutGroup:GetComponentInChildren(t)
end

--- @return CS_T
function UnityEngine_UI_GridLayoutGroup:GetComponentInChildren()
end

--- @return CS_T
--- @param includeInactive System_Boolean
function UnityEngine_UI_GridLayoutGroup:GetComponentInChildren(includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function UnityEngine_UI_GridLayoutGroup:GetComponentsInChildren(t)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_UI_GridLayoutGroup:GetComponentsInChildren(t, includeInactive)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function UnityEngine_UI_GridLayoutGroup:GetComponentsInChildren(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param result System_Collections_Generic_List`1[T]
function UnityEngine_UI_GridLayoutGroup:GetComponentsInChildren(includeInactive, result)
end

--- @return CS_T[]
function UnityEngine_UI_GridLayoutGroup:GetComponentsInChildren()
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_UI_GridLayoutGroup:GetComponentsInChildren(results)
end

--- @return UnityEngine_Component
--- @param t System_Type
function UnityEngine_UI_GridLayoutGroup:GetComponentInParent(t)
end

--- @return CS_T
function UnityEngine_UI_GridLayoutGroup:GetComponentInParent()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function UnityEngine_UI_GridLayoutGroup:GetComponentsInParent(t)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_UI_GridLayoutGroup:GetComponentsInParent(t, includeInactive)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function UnityEngine_UI_GridLayoutGroup:GetComponentsInParent(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_UI_GridLayoutGroup:GetComponentsInParent(includeInactive, results)
end

--- @return CS_T[]
function UnityEngine_UI_GridLayoutGroup:GetComponentsInParent()
end

--- @return UnityEngine_Component[]
--- @param type System_Type
function UnityEngine_UI_GridLayoutGroup:GetComponents(type)
end

--- @return System_Void
--- @param type System_Type
--- @param results System_Collections_Generic_List`1[UnityEngine_Component]
function UnityEngine_UI_GridLayoutGroup:GetComponents(type, results)
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_UI_GridLayoutGroup:GetComponents(results)
end

--- @return CS_T[]
function UnityEngine_UI_GridLayoutGroup:GetComponents()
end

--- @return System_Boolean
--- @param tag System_String
function UnityEngine_UI_GridLayoutGroup:CompareTag(tag)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_GridLayoutGroup:SendMessageUpwards(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_UI_GridLayoutGroup:SendMessageUpwards(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_UI_GridLayoutGroup:SendMessageUpwards(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_GridLayoutGroup:SendMessageUpwards(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_GridLayoutGroup:SendMessage(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_UI_GridLayoutGroup:SendMessage(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_UI_GridLayoutGroup:SendMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_GridLayoutGroup:SendMessage(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_GridLayoutGroup:BroadcastMessage(methodName, parameter, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
function UnityEngine_UI_GridLayoutGroup:BroadcastMessage(methodName, parameter)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_UI_GridLayoutGroup:BroadcastMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_GridLayoutGroup:BroadcastMessage(methodName, options)
end

--- @return System_String
function UnityEngine_UI_GridLayoutGroup:ToString()
end

--- @return System_Int32
function UnityEngine_UI_GridLayoutGroup:GetInstanceID()
end

--- @return System_Int32
function UnityEngine_UI_GridLayoutGroup:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function UnityEngine_UI_GridLayoutGroup:Equals(other)
end

--- @return System_Type
function UnityEngine_UI_GridLayoutGroup:GetType()
end
