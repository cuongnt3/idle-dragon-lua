--- @class UnityEngine_UI_Slider
UnityEngine_UI_Slider = Class(UnityEngine_UI_Slider)

--- @return void
function UnityEngine_UI_Slider:Ctor()
	--- @type UnityEngine_RectTransform
	self.fillRect = nil
	--- @type UnityEngine_RectTransform
	self.handleRect = nil
	--- @type UnityEngine_UI_Slider_Direction
	self.direction = nil
	--- @type System_Single
	self.minValue = nil
	--- @type System_Single
	self.maxValue = nil
	--- @type System_Boolean
	self.wholeNumbers = nil
	--- @type System_Single
	self.value = nil
	--- @type System_Single
	self.normalizedValue = nil
	--- @type UnityEngine_UI_Slider_SliderEvent
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
function UnityEngine_UI_Slider:Rebuild(executing)
end

--- @return System_Void
function UnityEngine_UI_Slider:LayoutComplete()
end

--- @return System_Void
function UnityEngine_UI_Slider:GraphicUpdateComplete()
end

--- @return System_Void
--- @param eventData UnityEngine_EventSystems_PointerEventData
function UnityEngine_UI_Slider:OnPointerDown(eventData)
end

--- @return System_Void
--- @param eventData UnityEngine_EventSystems_PointerEventData
function UnityEngine_UI_Slider:OnDrag(eventData)
end

--- @return System_Void
--- @param eventData UnityEngine_EventSystems_AxisEventData
function UnityEngine_UI_Slider:OnMove(eventData)
end

--- @return UnityEngine_UI_Selectable
function UnityEngine_UI_Slider:FindSelectableOnLeft()
end

--- @return UnityEngine_UI_Selectable
function UnityEngine_UI_Slider:FindSelectableOnRight()
end

--- @return UnityEngine_UI_Selectable
function UnityEngine_UI_Slider:FindSelectableOnUp()
end

--- @return UnityEngine_UI_Selectable
function UnityEngine_UI_Slider:FindSelectableOnDown()
end

--- @return System_Void
--- @param eventData UnityEngine_EventSystems_PointerEventData
function UnityEngine_UI_Slider:OnInitializePotentialDrag(eventData)
end

--- @return System_Void
--- @param direction UnityEngine_UI_Slider_Direction
--- @param includeRectLayouts System_Boolean
function UnityEngine_UI_Slider:SetDirection(direction, includeRectLayouts)
end

--- @return System_Boolean
function UnityEngine_UI_Slider:IsInteractable()
end

--- @return UnityEngine_UI_Selectable
--- @param dir UnityEngine_Vector3
function UnityEngine_UI_Slider:FindSelectable(dir)
end

--- @return System_Void
--- @param eventData UnityEngine_EventSystems_PointerEventData
function UnityEngine_UI_Slider:OnPointerUp(eventData)
end

--- @return System_Void
--- @param eventData UnityEngine_EventSystems_PointerEventData
function UnityEngine_UI_Slider:OnPointerEnter(eventData)
end

--- @return System_Void
--- @param eventData UnityEngine_EventSystems_PointerEventData
function UnityEngine_UI_Slider:OnPointerExit(eventData)
end

--- @return System_Void
--- @param eventData UnityEngine_EventSystems_BaseEventData
function UnityEngine_UI_Slider:OnSelect(eventData)
end

--- @return System_Void
--- @param eventData UnityEngine_EventSystems_BaseEventData
function UnityEngine_UI_Slider:OnDeselect(eventData)
end

--- @return System_Void
function UnityEngine_UI_Slider:Select()
end

--- @return System_Boolean
function UnityEngine_UI_Slider:IsActive()
end

--- @return System_Boolean
function UnityEngine_UI_Slider:IsDestroyed()
end

--- @return System_Boolean
function UnityEngine_UI_Slider:IsInvoking()
end

--- @return System_Void
function UnityEngine_UI_Slider:CancelInvoke()
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
function UnityEngine_UI_Slider:Invoke(methodName, time)
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
--- @param repeatRate System_Single
function UnityEngine_UI_Slider:InvokeRepeating(methodName, time, repeatRate)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_UI_Slider:CancelInvoke(methodName)
end

--- @return System_Boolean
--- @param methodName System_String
function UnityEngine_UI_Slider:IsInvoking(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
function UnityEngine_UI_Slider:StartCoroutine(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_UI_Slider:StartCoroutine(methodName, value)
end

--- @return UnityEngine_Coroutine
--- @param routine System_Collections_IEnumerator
function UnityEngine_UI_Slider:StartCoroutine(routine)
end

--- @return System_Void
--- @param routine System_Collections_IEnumerator
function UnityEngine_UI_Slider:StopCoroutine(routine)
end

--- @return System_Void
--- @param routine UnityEngine_Coroutine
function UnityEngine_UI_Slider:StopCoroutine(routine)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_UI_Slider:StopCoroutine(methodName)
end

--- @return System_Void
function UnityEngine_UI_Slider:StopAllCoroutines()
end

--- @return UnityEngine_Component
--- @param type System_Type
function UnityEngine_UI_Slider:GetComponent(type)
end

--- @return CS_T
function UnityEngine_UI_Slider:GetComponent()
end

--- @return UnityEngine_Component
--- @param type System_String
function UnityEngine_UI_Slider:GetComponent(type)
end

--- @return UnityEngine_Component
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_UI_Slider:GetComponentInChildren(t, includeInactive)
end

--- @return UnityEngine_Component
--- @param t System_Type
function UnityEngine_UI_Slider:GetComponentInChildren(t)
end

--- @return CS_T
--- @param includeInactive System_Boolean
function UnityEngine_UI_Slider:GetComponentInChildren(includeInactive)
end

--- @return CS_T
function UnityEngine_UI_Slider:GetComponentInChildren()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_UI_Slider:GetComponentsInChildren(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function UnityEngine_UI_Slider:GetComponentsInChildren(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function UnityEngine_UI_Slider:GetComponentsInChildren(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param result System_Collections_Generic_List`1[T]
function UnityEngine_UI_Slider:GetComponentsInChildren(includeInactive, result)
end

--- @return CS_T[]
function UnityEngine_UI_Slider:GetComponentsInChildren()
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_UI_Slider:GetComponentsInChildren(results)
end

--- @return UnityEngine_Component
--- @param t System_Type
function UnityEngine_UI_Slider:GetComponentInParent(t)
end

--- @return CS_T
function UnityEngine_UI_Slider:GetComponentInParent()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_UI_Slider:GetComponentsInParent(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function UnityEngine_UI_Slider:GetComponentsInParent(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function UnityEngine_UI_Slider:GetComponentsInParent(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_UI_Slider:GetComponentsInParent(includeInactive, results)
end

--- @return CS_T[]
function UnityEngine_UI_Slider:GetComponentsInParent()
end

--- @return UnityEngine_Component[]
--- @param type System_Type
function UnityEngine_UI_Slider:GetComponents(type)
end

--- @return System_Void
--- @param type System_Type
--- @param results System_Collections_Generic_List`1[UnityEngine_Component]
function UnityEngine_UI_Slider:GetComponents(type, results)
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_UI_Slider:GetComponents(results)
end

--- @return CS_T[]
function UnityEngine_UI_Slider:GetComponents()
end

--- @return System_Boolean
--- @param tag System_String
function UnityEngine_UI_Slider:CompareTag(tag)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_Slider:SendMessageUpwards(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_UI_Slider:SendMessageUpwards(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_UI_Slider:SendMessageUpwards(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_Slider:SendMessageUpwards(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_UI_Slider:SendMessage(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_UI_Slider:SendMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_Slider:SendMessage(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_Slider:SendMessage(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_Slider:BroadcastMessage(methodName, parameter, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
function UnityEngine_UI_Slider:BroadcastMessage(methodName, parameter)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_UI_Slider:BroadcastMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_Slider:BroadcastMessage(methodName, options)
end

--- @return System_Int32
function UnityEngine_UI_Slider:GetInstanceID()
end

--- @return System_Int32
function UnityEngine_UI_Slider:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function UnityEngine_UI_Slider:Equals(other)
end

--- @return System_String
function UnityEngine_UI_Slider:ToString()
end

--- @return System_Type
function UnityEngine_UI_Slider:GetType()
end
