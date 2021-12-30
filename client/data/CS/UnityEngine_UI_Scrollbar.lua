--- @class UnityEngine_UI_Scrollbar
UnityEngine_UI_Scrollbar = Class(UnityEngine_UI_Scrollbar)

--- @return void
function UnityEngine_UI_Scrollbar:Ctor()
	--- @type UnityEngine_RectTransform
	self.handleRect = nil
	--- @type UnityEngine_UI_Scrollbar_Direction
	self.direction = nil
	--- @type System_Single
	self.value = nil
	--- @type System_Single
	self.size = nil
	--- @type System_Int32
	self.numberOfSteps = nil
	--- @type UnityEngine_UI_Scrollbar_ScrollEvent
	self.onValueChanged = nil
	--- @type UnityEngine_UI_Navigation
	self.navigation = nil
	--- @type UnityEngine_UI_Selectable_Transition
	self.transition = nil
	--- @type UnityEngine_UI_ColorBlock
	self.colors = nil
	--- @type UnityEngine_UI_SpriteState
	self.spriteState = nil
	--- @type UnityEngine_UI_AnimationTriggers
	self.animationTriggers = nil
	--- @type UnityEngine_UI_Graphic
	self.targetGraphic = nil
	--- @type System_Boolean
	self.interactable = nil
	--- @type UnityEngine_UI_Image
	self.image = nil
	--- @type UnityEngine_Animator
	self.animator = nil
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
function UnityEngine_UI_Scrollbar:Rebuild(executing)
end

--- @return System_Void
function UnityEngine_UI_Scrollbar:LayoutComplete()
end

--- @return System_Void
function UnityEngine_UI_Scrollbar:GraphicUpdateComplete()
end

--- @return System_Void
--- @param eventData UnityEngine_EventSystems_PointerEventData
function UnityEngine_UI_Scrollbar:OnBeginDrag(eventData)
end

--- @return System_Void
--- @param eventData UnityEngine_EventSystems_PointerEventData
function UnityEngine_UI_Scrollbar:OnDrag(eventData)
end

--- @return System_Void
--- @param eventData UnityEngine_EventSystems_PointerEventData
function UnityEngine_UI_Scrollbar:OnPointerDown(eventData)
end

--- @return System_Void
--- @param eventData UnityEngine_EventSystems_PointerEventData
function UnityEngine_UI_Scrollbar:OnPointerUp(eventData)
end

--- @return System_Void
--- @param eventData UnityEngine_EventSystems_AxisEventData
function UnityEngine_UI_Scrollbar:OnMove(eventData)
end

--- @return UnityEngine_UI_Selectable
function UnityEngine_UI_Scrollbar:FindSelectableOnLeft()
end

--- @return UnityEngine_UI_Selectable
function UnityEngine_UI_Scrollbar:FindSelectableOnRight()
end

--- @return UnityEngine_UI_Selectable
function UnityEngine_UI_Scrollbar:FindSelectableOnUp()
end

--- @return UnityEngine_UI_Selectable
function UnityEngine_UI_Scrollbar:FindSelectableOnDown()
end

--- @return System_Void
--- @param eventData UnityEngine_EventSystems_PointerEventData
function UnityEngine_UI_Scrollbar:OnInitializePotentialDrag(eventData)
end

--- @return System_Void
--- @param direction UnityEngine_UI_Scrollbar_Direction
--- @param includeRectLayouts System_Boolean
function UnityEngine_UI_Scrollbar:SetDirection(direction, includeRectLayouts)
end

--- @return System_Boolean
function UnityEngine_UI_Scrollbar:IsInteractable()
end

--- @return UnityEngine_UI_Selectable
--- @param dir UnityEngine_Vector3
function UnityEngine_UI_Scrollbar:FindSelectable(dir)
end

--- @return System_Void
--- @param eventData UnityEngine_EventSystems_PointerEventData
function UnityEngine_UI_Scrollbar:OnPointerEnter(eventData)
end

--- @return System_Void
--- @param eventData UnityEngine_EventSystems_PointerEventData
function UnityEngine_UI_Scrollbar:OnPointerExit(eventData)
end

--- @return System_Void
--- @param eventData UnityEngine_EventSystems_BaseEventData
function UnityEngine_UI_Scrollbar:OnSelect(eventData)
end

--- @return System_Void
--- @param eventData UnityEngine_EventSystems_BaseEventData
function UnityEngine_UI_Scrollbar:OnDeselect(eventData)
end

--- @return System_Void
function UnityEngine_UI_Scrollbar:Select()
end

--- @return System_Boolean
function UnityEngine_UI_Scrollbar:IsActive()
end

--- @return System_Boolean
function UnityEngine_UI_Scrollbar:IsDestroyed()
end

--- @return System_Boolean
function UnityEngine_UI_Scrollbar:IsInvoking()
end

--- @return System_Void
function UnityEngine_UI_Scrollbar:CancelInvoke()
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
function UnityEngine_UI_Scrollbar:Invoke(methodName, time)
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
--- @param repeatRate System_Single
function UnityEngine_UI_Scrollbar:InvokeRepeating(methodName, time, repeatRate)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_UI_Scrollbar:CancelInvoke(methodName)
end

--- @return System_Boolean
--- @param methodName System_String
function UnityEngine_UI_Scrollbar:IsInvoking(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
function UnityEngine_UI_Scrollbar:StartCoroutine(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_UI_Scrollbar:StartCoroutine(methodName, value)
end

--- @return UnityEngine_Coroutine
--- @param routine System_Collections_IEnumerator
function UnityEngine_UI_Scrollbar:StartCoroutine(routine)
end

--- @return System_Void
--- @param routine System_Collections_IEnumerator
function UnityEngine_UI_Scrollbar:StopCoroutine(routine)
end

--- @return System_Void
--- @param routine UnityEngine_Coroutine
function UnityEngine_UI_Scrollbar:StopCoroutine(routine)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_UI_Scrollbar:StopCoroutine(methodName)
end

--- @return System_Void
function UnityEngine_UI_Scrollbar:StopAllCoroutines()
end

--- @return UnityEngine_Component
--- @param type System_Type
function UnityEngine_UI_Scrollbar:GetComponent(type)
end

--- @return CS_T
function UnityEngine_UI_Scrollbar:GetComponent()
end

--- @return UnityEngine_Component
--- @param type System_String
function UnityEngine_UI_Scrollbar:GetComponent(type)
end

--- @return UnityEngine_Component
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_UI_Scrollbar:GetComponentInChildren(t, includeInactive)
end

--- @return UnityEngine_Component
--- @param t System_Type
function UnityEngine_UI_Scrollbar:GetComponentInChildren(t)
end

--- @return CS_T
--- @param includeInactive System_Boolean
function UnityEngine_UI_Scrollbar:GetComponentInChildren(includeInactive)
end

--- @return CS_T
function UnityEngine_UI_Scrollbar:GetComponentInChildren()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_UI_Scrollbar:GetComponentsInChildren(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function UnityEngine_UI_Scrollbar:GetComponentsInChildren(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function UnityEngine_UI_Scrollbar:GetComponentsInChildren(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param result System_Collections_Generic_List`1[T]
function UnityEngine_UI_Scrollbar:GetComponentsInChildren(includeInactive, result)
end

--- @return CS_T[]
function UnityEngine_UI_Scrollbar:GetComponentsInChildren()
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_UI_Scrollbar:GetComponentsInChildren(results)
end

--- @return UnityEngine_Component
--- @param t System_Type
function UnityEngine_UI_Scrollbar:GetComponentInParent(t)
end

--- @return CS_T
function UnityEngine_UI_Scrollbar:GetComponentInParent()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_UI_Scrollbar:GetComponentsInParent(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function UnityEngine_UI_Scrollbar:GetComponentsInParent(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function UnityEngine_UI_Scrollbar:GetComponentsInParent(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_UI_Scrollbar:GetComponentsInParent(includeInactive, results)
end

--- @return CS_T[]
function UnityEngine_UI_Scrollbar:GetComponentsInParent()
end

--- @return UnityEngine_Component[]
--- @param type System_Type
function UnityEngine_UI_Scrollbar:GetComponents(type)
end

--- @return System_Void
--- @param type System_Type
--- @param results System_Collections_Generic_List`1[UnityEngine_Component]
function UnityEngine_UI_Scrollbar:GetComponents(type, results)
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_UI_Scrollbar:GetComponents(results)
end

--- @return CS_T[]
function UnityEngine_UI_Scrollbar:GetComponents()
end

--- @return System_Boolean
--- @param tag System_String
function UnityEngine_UI_Scrollbar:CompareTag(tag)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_Scrollbar:SendMessageUpwards(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_UI_Scrollbar:SendMessageUpwards(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_UI_Scrollbar:SendMessageUpwards(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_Scrollbar:SendMessageUpwards(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_UI_Scrollbar:SendMessage(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_UI_Scrollbar:SendMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_Scrollbar:SendMessage(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_Scrollbar:SendMessage(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_Scrollbar:BroadcastMessage(methodName, parameter, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
function UnityEngine_UI_Scrollbar:BroadcastMessage(methodName, parameter)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_UI_Scrollbar:BroadcastMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_Scrollbar:BroadcastMessage(methodName, options)
end

--- @return System_Int32
function UnityEngine_UI_Scrollbar:GetInstanceID()
end

--- @return System_Int32
function UnityEngine_UI_Scrollbar:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function UnityEngine_UI_Scrollbar:Equals(other)
end

--- @return System_String
function UnityEngine_UI_Scrollbar:ToString()
end

--- @return System_Type
function UnityEngine_UI_Scrollbar:GetType()
end
