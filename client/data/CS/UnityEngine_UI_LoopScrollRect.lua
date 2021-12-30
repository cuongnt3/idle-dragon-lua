--- @class UnityEngine_UI_LoopScrollRect
UnityEngine_UI_LoopScrollRect = Class(UnityEngine_UI_LoopScrollRect)

--- @return void
function UnityEngine_UI_LoopScrollRect:Ctor()
	--- @type UnityEngine_RectTransform
	self.content = nil
	--- @type System_Boolean
	self.horizontal = nil
	--- @type System_Boolean
	self.vertical = nil
	--- @type UnityEngine_UI_LoopScrollRect_MovementType
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
	--- @type UnityEngine_UI_LoopScrollRect_ScrollbarVisibility
	self.horizontalScrollbarVisibility = nil
	--- @type UnityEngine_UI_LoopScrollRect_ScrollbarVisibility
	self.verticalScrollbarVisibility = nil
	--- @type System_Single
	self.horizontalScrollbarSpacing = nil
	--- @type System_Single
	self.verticalScrollbarSpacing = nil
	--- @type UnityEngine_UI_LoopScrollRect_ScrollRectEvent
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
	--- @type System_Action
	self.onStopMove = nil
	--- @type System_Action`2[System_Int32,System_Int32]
	self.onUpdateItem = nil
	--- @type UnityEngine_UI_LoopScrollPrefabSource
	self.prefabSource = nil
	--- @type System_Int32
	self.totalCount = nil
	--- @type System_Boolean
	self.reverseDirection = nil
	--- @type System_Single
	self.rubberScale = nil
end

--- @return System_Void
function UnityEngine_UI_LoopScrollRect:ClearCells()
end

--- @return System_Void
--- @param index System_Int32
--- @param speed System_Single
function UnityEngine_UI_LoopScrollRect:ScrollToCell(index, speed)
end

--- @return UnityEngine_Transform
--- @param index System_Int32
function UnityEngine_UI_LoopScrollRect:GetChild(index)
end

--- @return System_Void
function UnityEngine_UI_LoopScrollRect:RefreshCells()
end

--- @return System_Void
--- @param offset System_Int32
function UnityEngine_UI_LoopScrollRect:RefillCellsFromEnd(offset)
end

--- @return System_Void
--- @param offset System_Int32
function UnityEngine_UI_LoopScrollRect:RefillCells(offset)
end

--- @return System_Void
--- @param executing UnityEngine_UI_CanvasUpdate
function UnityEngine_UI_LoopScrollRect:Rebuild(executing)
end

--- @return System_Void
function UnityEngine_UI_LoopScrollRect:LayoutComplete()
end

--- @return System_Void
function UnityEngine_UI_LoopScrollRect:GraphicUpdateComplete()
end

--- @return System_Boolean
function UnityEngine_UI_LoopScrollRect:IsActive()
end

--- @return System_Void
function UnityEngine_UI_LoopScrollRect:StopMovement()
end

--- @return System_Void
--- @param data UnityEngine_EventSystems_PointerEventData
function UnityEngine_UI_LoopScrollRect:OnScroll(data)
end

--- @return System_Void
--- @param eventData UnityEngine_EventSystems_PointerEventData
function UnityEngine_UI_LoopScrollRect:OnInitializePotentialDrag(eventData)
end

--- @return System_Void
--- @param eventData UnityEngine_EventSystems_PointerEventData
function UnityEngine_UI_LoopScrollRect:OnBeginDrag(eventData)
end

--- @return System_Void
--- @param eventData UnityEngine_EventSystems_PointerEventData
function UnityEngine_UI_LoopScrollRect:OnEndDrag(eventData)
end

--- @return System_Void
--- @param eventData UnityEngine_EventSystems_PointerEventData
function UnityEngine_UI_LoopScrollRect:OnDrag(eventData)
end

--- @return System_Void
function UnityEngine_UI_LoopScrollRect:CalculateLayoutInputHorizontal()
end

--- @return System_Void
function UnityEngine_UI_LoopScrollRect:CalculateLayoutInputVertical()
end

--- @return System_Void
function UnityEngine_UI_LoopScrollRect:SetLayoutHorizontal()
end

--- @return System_Void
function UnityEngine_UI_LoopScrollRect:SetLayoutVertical()
end

--- @return System_Boolean
function UnityEngine_UI_LoopScrollRect:IsDestroyed()
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
function UnityEngine_UI_LoopScrollRect:Invoke(methodName, time)
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
--- @param repeatRate System_Single
function UnityEngine_UI_LoopScrollRect:InvokeRepeating(methodName, time, repeatRate)
end

--- @return System_Void
function UnityEngine_UI_LoopScrollRect:CancelInvoke()
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_UI_LoopScrollRect:CancelInvoke(methodName)
end

--- @return System_Boolean
--- @param methodName System_String
function UnityEngine_UI_LoopScrollRect:IsInvoking(methodName)
end

--- @return System_Boolean
function UnityEngine_UI_LoopScrollRect:IsInvoking()
end

--- @return UnityEngine_Coroutine
--- @param routine System_Collections_IEnumerator
function UnityEngine_UI_LoopScrollRect:StartCoroutine(routine)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_UI_LoopScrollRect:StartCoroutine(methodName, value)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
function UnityEngine_UI_LoopScrollRect:StartCoroutine(methodName)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_UI_LoopScrollRect:StopCoroutine(methodName)
end

--- @return System_Void
--- @param routine System_Collections_IEnumerator
function UnityEngine_UI_LoopScrollRect:StopCoroutine(routine)
end

--- @return System_Void
--- @param routine UnityEngine_Coroutine
function UnityEngine_UI_LoopScrollRect:StopCoroutine(routine)
end

--- @return System_Void
function UnityEngine_UI_LoopScrollRect:StopAllCoroutines()
end

--- @return UnityEngine_Component
--- @param type System_Type
function UnityEngine_UI_LoopScrollRect:GetComponent(type)
end

--- @return CS_T
function UnityEngine_UI_LoopScrollRect:GetComponent()
end

--- @return UnityEngine_Component
--- @param type System_String
function UnityEngine_UI_LoopScrollRect:GetComponent(type)
end

--- @return UnityEngine_Component
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_UI_LoopScrollRect:GetComponentInChildren(t, includeInactive)
end

--- @return UnityEngine_Component
--- @param t System_Type
function UnityEngine_UI_LoopScrollRect:GetComponentInChildren(t)
end

--- @return CS_T
function UnityEngine_UI_LoopScrollRect:GetComponentInChildren()
end

--- @return CS_T
--- @param includeInactive System_Boolean
function UnityEngine_UI_LoopScrollRect:GetComponentInChildren(includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function UnityEngine_UI_LoopScrollRect:GetComponentsInChildren(t)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_UI_LoopScrollRect:GetComponentsInChildren(t, includeInactive)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function UnityEngine_UI_LoopScrollRect:GetComponentsInChildren(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param result System_Collections_Generic_List`1[T]
function UnityEngine_UI_LoopScrollRect:GetComponentsInChildren(includeInactive, result)
end

--- @return CS_T[]
function UnityEngine_UI_LoopScrollRect:GetComponentsInChildren()
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_UI_LoopScrollRect:GetComponentsInChildren(results)
end

--- @return UnityEngine_Component
--- @param t System_Type
function UnityEngine_UI_LoopScrollRect:GetComponentInParent(t)
end

--- @return CS_T
function UnityEngine_UI_LoopScrollRect:GetComponentInParent()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function UnityEngine_UI_LoopScrollRect:GetComponentsInParent(t)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_UI_LoopScrollRect:GetComponentsInParent(t, includeInactive)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function UnityEngine_UI_LoopScrollRect:GetComponentsInParent(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_UI_LoopScrollRect:GetComponentsInParent(includeInactive, results)
end

--- @return CS_T[]
function UnityEngine_UI_LoopScrollRect:GetComponentsInParent()
end

--- @return UnityEngine_Component[]
--- @param type System_Type
function UnityEngine_UI_LoopScrollRect:GetComponents(type)
end

--- @return System_Void
--- @param type System_Type
--- @param results System_Collections_Generic_List`1[UnityEngine_Component]
function UnityEngine_UI_LoopScrollRect:GetComponents(type, results)
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_UI_LoopScrollRect:GetComponents(results)
end

--- @return CS_T[]
function UnityEngine_UI_LoopScrollRect:GetComponents()
end

--- @return System_Boolean
--- @param tag System_String
function UnityEngine_UI_LoopScrollRect:CompareTag(tag)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_LoopScrollRect:SendMessageUpwards(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_UI_LoopScrollRect:SendMessageUpwards(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_UI_LoopScrollRect:SendMessageUpwards(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_LoopScrollRect:SendMessageUpwards(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_LoopScrollRect:SendMessage(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_UI_LoopScrollRect:SendMessage(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_UI_LoopScrollRect:SendMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_LoopScrollRect:SendMessage(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_LoopScrollRect:BroadcastMessage(methodName, parameter, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
function UnityEngine_UI_LoopScrollRect:BroadcastMessage(methodName, parameter)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_UI_LoopScrollRect:BroadcastMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_LoopScrollRect:BroadcastMessage(methodName, options)
end

--- @return System_String
function UnityEngine_UI_LoopScrollRect:ToString()
end

--- @return System_Int32
function UnityEngine_UI_LoopScrollRect:GetInstanceID()
end

--- @return System_Int32
function UnityEngine_UI_LoopScrollRect:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function UnityEngine_UI_LoopScrollRect:Equals(other)
end

--- @return System_Type
function UnityEngine_UI_LoopScrollRect:GetType()
end
