--- @class UnityEngine_UI_ScrollRect
UnityEngine_UI_ScrollRect = Class(UnityEngine_UI_ScrollRect)

--- @return void
function UnityEngine_UI_ScrollRect:Ctor()
	--- @type UnityEngine_RectTransform
	self.content = nil
	--- @type System_Boolean
	self.horizontal = nil
	--- @type System_Boolean
	self.vertical = nil
	--- @type UnityEngine_UI_ScrollRect_MovementType
	self.movementType = nil
	--- @type System_Single
	self.elasticity = nil
	--- @type System_Boolean
	self.inertia = nil
	--- @type System_Single
	self.decelerationRate = nil
	--- @type System_Single
	self.scrollSensitivity = nil
	--- @type UnityEngine_RectTransform
	self.viewport = nil
	--- @type UnityEngine_UI_Scrollbar
	self.horizontalScrollbar = nil
	--- @type UnityEngine_UI_Scrollbar
	self.verticalScrollbar = nil
	--- @type UnityEngine_UI_ScrollRect_ScrollbarVisibility
	self.horizontalScrollbarVisibility = nil
	--- @type UnityEngine_UI_ScrollRect_ScrollbarVisibility
	self.verticalScrollbarVisibility = nil
	--- @type System_Single
	self.horizontalScrollbarSpacing = nil
	--- @type System_Single
	self.verticalScrollbarSpacing = nil
	--- @type UnityEngine_UI_ScrollRect_ScrollRectEvent
	self.onValueChanged = nil
	--- @type UnityEngine_Vector2
	self.velocity = nil
	--- @type UnityEngine_Vector2
	self.normalizedPosition = nil
	--- @type System_Single
	self.horizontalNormalizedPosition = nil
	--- @type System_Single
	self.verticalNormalizedPosition = nil
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
--- @param executing UnityEngine_UI_CanvasUpdate
function UnityEngine_UI_ScrollRect:Rebuild(executing)
end

--- @return System_Void
function UnityEngine_UI_ScrollRect:LayoutComplete()
end

--- @return System_Void
function UnityEngine_UI_ScrollRect:GraphicUpdateComplete()
end

--- @return System_Boolean
function UnityEngine_UI_ScrollRect:IsActive()
end

--- @return System_Void
function UnityEngine_UI_ScrollRect:StopMovement()
end

--- @return System_Void
--- @param data UnityEngine_EventSystems_PointerEventData
function UnityEngine_UI_ScrollRect:OnScroll(data)
end

--- @return System_Void
--- @param eventData UnityEngine_EventSystems_PointerEventData
function UnityEngine_UI_ScrollRect:OnInitializePotentialDrag(eventData)
end

--- @return System_Void
--- @param eventData UnityEngine_EventSystems_PointerEventData
function UnityEngine_UI_ScrollRect:OnBeginDrag(eventData)
end

--- @return System_Void
--- @param eventData UnityEngine_EventSystems_PointerEventData
function UnityEngine_UI_ScrollRect:OnEndDrag(eventData)
end

--- @return System_Void
--- @param eventData UnityEngine_EventSystems_PointerEventData
function UnityEngine_UI_ScrollRect:OnDrag(eventData)
end

--- @return System_Void
function UnityEngine_UI_ScrollRect:CalculateLayoutInputHorizontal()
end

--- @return System_Void
function UnityEngine_UI_ScrollRect:CalculateLayoutInputVertical()
end

--- @return System_Void
function UnityEngine_UI_ScrollRect:SetLayoutHorizontal()
end

--- @return System_Void
function UnityEngine_UI_ScrollRect:SetLayoutVertical()
end

--- @return System_Boolean
function UnityEngine_UI_ScrollRect:IsDestroyed()
end

--- @return System_Boolean
function UnityEngine_UI_ScrollRect:IsInvoking()
end

--- @return System_Void
function UnityEngine_UI_ScrollRect:CancelInvoke()
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
function UnityEngine_UI_ScrollRect:Invoke(methodName, time)
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
--- @param repeatRate System_Single
function UnityEngine_UI_ScrollRect:InvokeRepeating(methodName, time, repeatRate)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_UI_ScrollRect:CancelInvoke(methodName)
end

--- @return System_Boolean
--- @param methodName System_String
function UnityEngine_UI_ScrollRect:IsInvoking(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
function UnityEngine_UI_ScrollRect:StartCoroutine(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_UI_ScrollRect:StartCoroutine(methodName, value)
end

--- @return UnityEngine_Coroutine
--- @param routine System_Collections_IEnumerator
function UnityEngine_UI_ScrollRect:StartCoroutine(routine)
end

--- @return System_Void
--- @param routine System_Collections_IEnumerator
function UnityEngine_UI_ScrollRect:StopCoroutine(routine)
end

--- @return System_Void
--- @param routine UnityEngine_Coroutine
function UnityEngine_UI_ScrollRect:StopCoroutine(routine)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_UI_ScrollRect:StopCoroutine(methodName)
end

--- @return System_Void
function UnityEngine_UI_ScrollRect:StopAllCoroutines()
end

--- @return UnityEngine_Component
--- @param type System_Type
function UnityEngine_UI_ScrollRect:GetComponent(type)
end

--- @return CS_T
function UnityEngine_UI_ScrollRect:GetComponent()
end

--- @return UnityEngine_Component
--- @param type System_String
function UnityEngine_UI_ScrollRect:GetComponent(type)
end

--- @return UnityEngine_Component
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_UI_ScrollRect:GetComponentInChildren(t, includeInactive)
end

--- @return UnityEngine_Component
--- @param t System_Type
function UnityEngine_UI_ScrollRect:GetComponentInChildren(t)
end

--- @return CS_T
--- @param includeInactive System_Boolean
function UnityEngine_UI_ScrollRect:GetComponentInChildren(includeInactive)
end

--- @return CS_T
function UnityEngine_UI_ScrollRect:GetComponentInChildren()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_UI_ScrollRect:GetComponentsInChildren(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function UnityEngine_UI_ScrollRect:GetComponentsInChildren(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function UnityEngine_UI_ScrollRect:GetComponentsInChildren(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param result System_Collections_Generic_List`1[T]
function UnityEngine_UI_ScrollRect:GetComponentsInChildren(includeInactive, result)
end

--- @return CS_T[]
function UnityEngine_UI_ScrollRect:GetComponentsInChildren()
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_UI_ScrollRect:GetComponentsInChildren(results)
end

--- @return UnityEngine_Component
--- @param t System_Type
function UnityEngine_UI_ScrollRect:GetComponentInParent(t)
end

--- @return CS_T
function UnityEngine_UI_ScrollRect:GetComponentInParent()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_UI_ScrollRect:GetComponentsInParent(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function UnityEngine_UI_ScrollRect:GetComponentsInParent(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function UnityEngine_UI_ScrollRect:GetComponentsInParent(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_UI_ScrollRect:GetComponentsInParent(includeInactive, results)
end

--- @return CS_T[]
function UnityEngine_UI_ScrollRect:GetComponentsInParent()
end

--- @return UnityEngine_Component[]
--- @param type System_Type
function UnityEngine_UI_ScrollRect:GetComponents(type)
end

--- @return System_Void
--- @param type System_Type
--- @param results System_Collections_Generic_List`1[UnityEngine_Component]
function UnityEngine_UI_ScrollRect:GetComponents(type, results)
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_UI_ScrollRect:GetComponents(results)
end

--- @return CS_T[]
function UnityEngine_UI_ScrollRect:GetComponents()
end

--- @return System_Boolean
--- @param tag System_String
function UnityEngine_UI_ScrollRect:CompareTag(tag)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_ScrollRect:SendMessageUpwards(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_UI_ScrollRect:SendMessageUpwards(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_UI_ScrollRect:SendMessageUpwards(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_ScrollRect:SendMessageUpwards(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_UI_ScrollRect:SendMessage(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_UI_ScrollRect:SendMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_ScrollRect:SendMessage(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_ScrollRect:SendMessage(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_ScrollRect:BroadcastMessage(methodName, parameter, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
function UnityEngine_UI_ScrollRect:BroadcastMessage(methodName, parameter)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_UI_ScrollRect:BroadcastMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_ScrollRect:BroadcastMessage(methodName, options)
end

--- @return System_Int32
function UnityEngine_UI_ScrollRect:GetInstanceID()
end

--- @return System_Int32
function UnityEngine_UI_ScrollRect:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function UnityEngine_UI_ScrollRect:Equals(other)
end

--- @return System_String
function UnityEngine_UI_ScrollRect:ToString()
end

--- @return System_Type
function UnityEngine_UI_ScrollRect:GetType()
end
