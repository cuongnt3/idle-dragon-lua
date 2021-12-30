--- @class UnityEngine_UI_LoopHorizontalScrollRect
UnityEngine_UI_LoopHorizontalScrollRect = Class(UnityEngine_UI_LoopHorizontalScrollRect)

--- @return void
function UnityEngine_UI_LoopHorizontalScrollRect:Ctor()
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
	--- @type System_Boolean
	self.snapCell = nil
	--- @type System_Int32
	self.itemCenter = nil
	--- @type System_Single
	self.speedMoveToScell = nil
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
function UnityEngine_UI_LoopHorizontalScrollRect:ClearCells()
end

--- @return System_Void
--- @param index System_Int32
--- @param speed System_Single
function UnityEngine_UI_LoopHorizontalScrollRect:ScrollToCell(index, speed)
end

--- @return System_Void
--- @param index System_Int32
--- @param speed System_Single
function UnityEngine_UI_LoopHorizontalScrollRect:ScrollToCellSnap(index, speed)
end

--- @return UnityEngine_Transform
--- @param index System_Int32
function UnityEngine_UI_LoopHorizontalScrollRect:GetChild(index)
end

--- @return System_Void
function UnityEngine_UI_LoopHorizontalScrollRect:RefreshCells()
end

--- @return System_Void
--- @param offset System_Int32
function UnityEngine_UI_LoopHorizontalScrollRect:RefillCellsFromEnd(offset)
end

--- @return System_Void
--- @param offset System_Int32
function UnityEngine_UI_LoopHorizontalScrollRect:RefillCells(offset)
end

--- @return System_Void
--- @param executing UnityEngine_UI_CanvasUpdate
function UnityEngine_UI_LoopHorizontalScrollRect:Rebuild(executing)
end

--- @return System_Void
function UnityEngine_UI_LoopHorizontalScrollRect:LayoutComplete()
end

--- @return System_Void
function UnityEngine_UI_LoopHorizontalScrollRect:GraphicUpdateComplete()
end

--- @return System_Boolean
function UnityEngine_UI_LoopHorizontalScrollRect:IsActive()
end

--- @return System_Void
function UnityEngine_UI_LoopHorizontalScrollRect:StopMovement()
end

--- @return System_Void
--- @param data UnityEngine_EventSystems_PointerEventData
function UnityEngine_UI_LoopHorizontalScrollRect:OnScroll(data)
end

--- @return System_Void
--- @param eventData UnityEngine_EventSystems_PointerEventData
function UnityEngine_UI_LoopHorizontalScrollRect:OnInitializePotentialDrag(eventData)
end

--- @return System_Void
--- @param eventData UnityEngine_EventSystems_PointerEventData
function UnityEngine_UI_LoopHorizontalScrollRect:OnBeginDrag(eventData)
end

--- @return System_Void
--- @param eventData UnityEngine_EventSystems_PointerEventData
function UnityEngine_UI_LoopHorizontalScrollRect:OnEndDrag(eventData)
end

--- @return System_Void
--- @param eventData UnityEngine_EventSystems_PointerEventData
function UnityEngine_UI_LoopHorizontalScrollRect:OnDrag(eventData)
end

--- @return System_Void
function UnityEngine_UI_LoopHorizontalScrollRect:CalculateLayoutInputHorizontal()
end

--- @return System_Void
function UnityEngine_UI_LoopHorizontalScrollRect:CalculateLayoutInputVertical()
end

--- @return System_Void
function UnityEngine_UI_LoopHorizontalScrollRect:SetLayoutHorizontal()
end

--- @return System_Void
function UnityEngine_UI_LoopHorizontalScrollRect:SetLayoutVertical()
end

--- @return System_Boolean
function UnityEngine_UI_LoopHorizontalScrollRect:IsDestroyed()
end

--- @return System_Boolean
function UnityEngine_UI_LoopHorizontalScrollRect:IsInvoking()
end

--- @return System_Void
function UnityEngine_UI_LoopHorizontalScrollRect:CancelInvoke()
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
function UnityEngine_UI_LoopHorizontalScrollRect:Invoke(methodName, time)
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
--- @param repeatRate System_Single
function UnityEngine_UI_LoopHorizontalScrollRect:InvokeRepeating(methodName, time, repeatRate)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_UI_LoopHorizontalScrollRect:CancelInvoke(methodName)
end

--- @return System_Boolean
--- @param methodName System_String
function UnityEngine_UI_LoopHorizontalScrollRect:IsInvoking(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
function UnityEngine_UI_LoopHorizontalScrollRect:StartCoroutine(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_UI_LoopHorizontalScrollRect:StartCoroutine(methodName, value)
end

--- @return UnityEngine_Coroutine
--- @param routine System_Collections_IEnumerator
function UnityEngine_UI_LoopHorizontalScrollRect:StartCoroutine(routine)
end

--- @return System_Void
--- @param routine System_Collections_IEnumerator
function UnityEngine_UI_LoopHorizontalScrollRect:StopCoroutine(routine)
end

--- @return System_Void
--- @param routine UnityEngine_Coroutine
function UnityEngine_UI_LoopHorizontalScrollRect:StopCoroutine(routine)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_UI_LoopHorizontalScrollRect:StopCoroutine(methodName)
end

--- @return System_Void
function UnityEngine_UI_LoopHorizontalScrollRect:StopAllCoroutines()
end

--- @return UnityEngine_Component
--- @param type System_Type
function UnityEngine_UI_LoopHorizontalScrollRect:GetComponent(type)
end

--- @return CS_T
function UnityEngine_UI_LoopHorizontalScrollRect:GetComponent()
end

--- @return UnityEngine_Component
--- @param type System_String
function UnityEngine_UI_LoopHorizontalScrollRect:GetComponent(type)
end

--- @return UnityEngine_Component
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_UI_LoopHorizontalScrollRect:GetComponentInChildren(t, includeInactive)
end

--- @return UnityEngine_Component
--- @param t System_Type
function UnityEngine_UI_LoopHorizontalScrollRect:GetComponentInChildren(t)
end

--- @return CS_T
--- @param includeInactive System_Boolean
function UnityEngine_UI_LoopHorizontalScrollRect:GetComponentInChildren(includeInactive)
end

--- @return CS_T
function UnityEngine_UI_LoopHorizontalScrollRect:GetComponentInChildren()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_UI_LoopHorizontalScrollRect:GetComponentsInChildren(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function UnityEngine_UI_LoopHorizontalScrollRect:GetComponentsInChildren(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function UnityEngine_UI_LoopHorizontalScrollRect:GetComponentsInChildren(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param result System_Collections_Generic_List`1[T]
function UnityEngine_UI_LoopHorizontalScrollRect:GetComponentsInChildren(includeInactive, result)
end

--- @return CS_T[]
function UnityEngine_UI_LoopHorizontalScrollRect:GetComponentsInChildren()
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_UI_LoopHorizontalScrollRect:GetComponentsInChildren(results)
end

--- @return UnityEngine_Component
--- @param t System_Type
function UnityEngine_UI_LoopHorizontalScrollRect:GetComponentInParent(t)
end

--- @return CS_T
function UnityEngine_UI_LoopHorizontalScrollRect:GetComponentInParent()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_UI_LoopHorizontalScrollRect:GetComponentsInParent(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function UnityEngine_UI_LoopHorizontalScrollRect:GetComponentsInParent(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function UnityEngine_UI_LoopHorizontalScrollRect:GetComponentsInParent(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_UI_LoopHorizontalScrollRect:GetComponentsInParent(includeInactive, results)
end

--- @return CS_T[]
function UnityEngine_UI_LoopHorizontalScrollRect:GetComponentsInParent()
end

--- @return UnityEngine_Component[]
--- @param type System_Type
function UnityEngine_UI_LoopHorizontalScrollRect:GetComponents(type)
end

--- @return System_Void
--- @param type System_Type
--- @param results System_Collections_Generic_List`1[UnityEngine_Component]
function UnityEngine_UI_LoopHorizontalScrollRect:GetComponents(type, results)
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_UI_LoopHorizontalScrollRect:GetComponents(results)
end

--- @return CS_T[]
function UnityEngine_UI_LoopHorizontalScrollRect:GetComponents()
end

--- @return System_Boolean
--- @param tag System_String
function UnityEngine_UI_LoopHorizontalScrollRect:CompareTag(tag)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_LoopHorizontalScrollRect:SendMessageUpwards(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_UI_LoopHorizontalScrollRect:SendMessageUpwards(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_UI_LoopHorizontalScrollRect:SendMessageUpwards(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_LoopHorizontalScrollRect:SendMessageUpwards(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_UI_LoopHorizontalScrollRect:SendMessage(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_UI_LoopHorizontalScrollRect:SendMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_LoopHorizontalScrollRect:SendMessage(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_LoopHorizontalScrollRect:SendMessage(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_LoopHorizontalScrollRect:BroadcastMessage(methodName, parameter, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
function UnityEngine_UI_LoopHorizontalScrollRect:BroadcastMessage(methodName, parameter)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_UI_LoopHorizontalScrollRect:BroadcastMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_LoopHorizontalScrollRect:BroadcastMessage(methodName, options)
end

--- @return System_Int32
function UnityEngine_UI_LoopHorizontalScrollRect:GetInstanceID()
end

--- @return System_Int32
function UnityEngine_UI_LoopHorizontalScrollRect:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function UnityEngine_UI_LoopHorizontalScrollRect:Equals(other)
end

--- @return System_String
function UnityEngine_UI_LoopHorizontalScrollRect:ToString()
end

--- @return System_Type
function UnityEngine_UI_LoopHorizontalScrollRect:GetType()
end
