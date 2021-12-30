--- @class UnityEngine_UI_InputField
UnityEngine_UI_InputField = Class(UnityEngine_UI_InputField)

--- @return void
function UnityEngine_UI_InputField:Ctor()
	--- @type System_Boolean
	self.shouldHideMobileInput = nil
	--- @type System_String
	self.text = nil
	--- @type System_Boolean
	self.isFocused = nil
	--- @type System_Single
	self.caretBlinkRate = nil
	--- @type System_Int32
	self.caretWidth = nil
	--- @type UnityEngine_UI_Text
	self.textComponent = nil
	--- @type UnityEngine_UI_Graphic
	self.placeholder = nil
	--- @type UnityEngine_Color
	self.caretColor = nil
	--- @type System_Boolean
	self.customCaretColor = nil
	--- @type UnityEngine_Color
	self.selectionColor = nil
	--- @type UnityEngine_UI_InputField_SubmitEvent
	self.onEndEdit = nil
	--- @type UnityEngine_UI_InputField_OnChangeEvent
	self.onValueChange = nil
	--- @type UnityEngine_UI_InputField_OnChangeEvent
	self.onValueChanged = nil
	--- @type UnityEngine_UI_InputField_OnValidateInput
	self.onValidateInput = nil
	--- @type System_Int32
	self.characterLimit = nil
	--- @type UnityEngine_UI_InputField_ContentType
	self.contentType = nil
	--- @type UnityEngine_UI_InputField_LineType
	self.lineType = nil
	--- @type UnityEngine_UI_InputField_InputType
	self.inputType = nil
	--- @type UnityEngine_TouchScreenKeyboard
	self.touchScreenKeyboard = nil
	--- @type UnityEngine_TouchScreenKeyboardType
	self.keyboardType = nil
	--- @type UnityEngine_UI_InputField_CharacterValidation
	self.characterValidation = nil
	--- @type System_Boolean
	self.readOnly = nil
	--- @type System_Boolean
	self.multiLine = nil
	--- @type System_Char
	self.asteriskChar = nil
	--- @type System_Boolean
	self.wasCanceled = nil
	--- @type System_Int32
	self.caretSelectPosition = nil
	--- @type System_Int32
	self.caretPosition = nil
	--- @type System_Int32
	self.selectionAnchorPosition = nil
	--- @type System_Int32
	self.selectionFocusPosition = nil
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
	self.particleSystem = nil
	--- @type System_String
	self.name = nil
	--- @type UnityEngine_HideFlags
	self.hideFlags = nil
end

--- @return System_Void
--- @param shift System_Boolean
function UnityEngine_UI_InputField:MoveTextEnd(shift)
end

--- @return System_Void
--- @param shift System_Boolean
function UnityEngine_UI_InputField:MoveTextStart(shift)
end

--- @return UnityEngine_Vector2
--- @param screen UnityEngine_Vector2
function UnityEngine_UI_InputField:ScreenToLocal(screen)
end

--- @return System_Void
--- @param eventData UnityEngine_EventSystems_PointerEventData
function UnityEngine_UI_InputField:OnBeginDrag(eventData)
end

--- @return System_Void
--- @param eventData UnityEngine_EventSystems_PointerEventData
function UnityEngine_UI_InputField:OnDrag(eventData)
end

--- @return System_Void
--- @param eventData UnityEngine_EventSystems_PointerEventData
function UnityEngine_UI_InputField:OnEndDrag(eventData)
end

--- @return System_Void
--- @param eventData UnityEngine_EventSystems_PointerEventData
function UnityEngine_UI_InputField:OnPointerDown(eventData)
end

--- @return System_Void
--- @param e UnityEngine_Event
function UnityEngine_UI_InputField:ProcessEvent(e)
end

--- @return System_Void
--- @param eventData UnityEngine_EventSystems_BaseEventData
function UnityEngine_UI_InputField:OnUpdateSelected(eventData)
end

--- @return System_Void
function UnityEngine_UI_InputField:ForceLabelUpdate()
end

--- @return System_Void
--- @param update UnityEngine_UI_CanvasUpdate
function UnityEngine_UI_InputField:Rebuild(update)
end

--- @return System_Void
function UnityEngine_UI_InputField:LayoutComplete()
end

--- @return System_Void
function UnityEngine_UI_InputField:GraphicUpdateComplete()
end

--- @return System_Void
function UnityEngine_UI_InputField:ActivateInputField()
end

--- @return System_Void
--- @param eventData UnityEngine_EventSystems_BaseEventData
function UnityEngine_UI_InputField:OnSelect(eventData)
end

--- @return System_Void
--- @param eventData UnityEngine_EventSystems_PointerEventData
function UnityEngine_UI_InputField:OnPointerClick(eventData)
end

--- @return System_Void
function UnityEngine_UI_InputField:DeactivateInputField()
end

--- @return System_Void
--- @param eventData UnityEngine_EventSystems_BaseEventData
function UnityEngine_UI_InputField:OnDeselect(eventData)
end

--- @return System_Void
--- @param eventData UnityEngine_EventSystems_BaseEventData
function UnityEngine_UI_InputField:OnSubmit(eventData)
end

--- @return System_Void
function UnityEngine_UI_InputField:CalculateLayoutInputHorizontal()
end

--- @return System_Void
function UnityEngine_UI_InputField:CalculateLayoutInputVertical()
end

--- @return System_Boolean
function UnityEngine_UI_InputField:IsInteractable()
end

--- @return UnityEngine_UI_Selectable
--- @param dir UnityEngine_Vector3
function UnityEngine_UI_InputField:FindSelectable(dir)
end

--- @return UnityEngine_UI_Selectable
function UnityEngine_UI_InputField:FindSelectableOnLeft()
end

--- @return UnityEngine_UI_Selectable
function UnityEngine_UI_InputField:FindSelectableOnRight()
end

--- @return UnityEngine_UI_Selectable
function UnityEngine_UI_InputField:FindSelectableOnUp()
end

--- @return UnityEngine_UI_Selectable
function UnityEngine_UI_InputField:FindSelectableOnDown()
end

--- @return System_Void
--- @param eventData UnityEngine_EventSystems_AxisEventData
function UnityEngine_UI_InputField:OnMove(eventData)
end

--- @return System_Void
--- @param eventData UnityEngine_EventSystems_PointerEventData
function UnityEngine_UI_InputField:OnPointerUp(eventData)
end

--- @return System_Void
--- @param eventData UnityEngine_EventSystems_PointerEventData
function UnityEngine_UI_InputField:OnPointerEnter(eventData)
end

--- @return System_Void
--- @param eventData UnityEngine_EventSystems_PointerEventData
function UnityEngine_UI_InputField:OnPointerExit(eventData)
end

--- @return System_Void
function UnityEngine_UI_InputField:Select()
end

--- @return System_Boolean
function UnityEngine_UI_InputField:IsActive()
end

--- @return System_Boolean
function UnityEngine_UI_InputField:IsDestroyed()
end

--- @return System_Boolean
function UnityEngine_UI_InputField:IsInvoking()
end

--- @return System_Void
function UnityEngine_UI_InputField:CancelInvoke()
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
function UnityEngine_UI_InputField:Invoke(methodName, time)
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
--- @param repeatRate System_Single
function UnityEngine_UI_InputField:InvokeRepeating(methodName, time, repeatRate)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_UI_InputField:CancelInvoke(methodName)
end

--- @return System_Boolean
--- @param methodName System_String
function UnityEngine_UI_InputField:IsInvoking(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
function UnityEngine_UI_InputField:StartCoroutine(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_UI_InputField:StartCoroutine(methodName, value)
end

--- @return UnityEngine_Coroutine
--- @param routine System_Collections_IEnumerator
function UnityEngine_UI_InputField:StartCoroutine(routine)
end

--- @return System_Void
--- @param routine System_Collections_IEnumerator
function UnityEngine_UI_InputField:StopCoroutine(routine)
end

--- @return System_Void
--- @param routine UnityEngine_Coroutine
function UnityEngine_UI_InputField:StopCoroutine(routine)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_UI_InputField:StopCoroutine(methodName)
end

--- @return System_Void
function UnityEngine_UI_InputField:StopAllCoroutines()
end

--- @return UnityEngine_Component
--- @param type System_Type
function UnityEngine_UI_InputField:GetComponent(type)
end

--- @return CS_T
function UnityEngine_UI_InputField:GetComponent()
end

--- @return UnityEngine_Component
--- @param type System_String
function UnityEngine_UI_InputField:GetComponent(type)
end

--- @return UnityEngine_Component
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_UI_InputField:GetComponentInChildren(t, includeInactive)
end

--- @return UnityEngine_Component
--- @param t System_Type
function UnityEngine_UI_InputField:GetComponentInChildren(t)
end

--- @return CS_T
--- @param includeInactive System_Boolean
function UnityEngine_UI_InputField:GetComponentInChildren(includeInactive)
end

--- @return CS_T
function UnityEngine_UI_InputField:GetComponentInChildren()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_UI_InputField:GetComponentsInChildren(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function UnityEngine_UI_InputField:GetComponentsInChildren(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function UnityEngine_UI_InputField:GetComponentsInChildren(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param result System_Collections_Generic_List`1[T]
function UnityEngine_UI_InputField:GetComponentsInChildren(includeInactive, result)
end

--- @return CS_T[]
function UnityEngine_UI_InputField:GetComponentsInChildren()
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_UI_InputField:GetComponentsInChildren(results)
end

--- @return UnityEngine_Component
--- @param t System_Type
function UnityEngine_UI_InputField:GetComponentInParent(t)
end

--- @return CS_T
function UnityEngine_UI_InputField:GetComponentInParent()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_UI_InputField:GetComponentsInParent(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function UnityEngine_UI_InputField:GetComponentsInParent(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function UnityEngine_UI_InputField:GetComponentsInParent(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_UI_InputField:GetComponentsInParent(includeInactive, results)
end

--- @return CS_T[]
function UnityEngine_UI_InputField:GetComponentsInParent()
end

--- @return UnityEngine_Component[]
--- @param type System_Type
function UnityEngine_UI_InputField:GetComponents(type)
end

--- @return System_Void
--- @param type System_Type
--- @param results System_Collections_Generic_List`1[UnityEngine_Component]
function UnityEngine_UI_InputField:GetComponents(type, results)
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_UI_InputField:GetComponents(results)
end

--- @return CS_T[]
function UnityEngine_UI_InputField:GetComponents()
end

--- @return System_Boolean
--- @param tag System_String
function UnityEngine_UI_InputField:CompareTag(tag)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_InputField:SendMessageUpwards(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_UI_InputField:SendMessageUpwards(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_UI_InputField:SendMessageUpwards(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_InputField:SendMessageUpwards(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_UI_InputField:SendMessage(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_UI_InputField:SendMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_InputField:SendMessage(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_InputField:SendMessage(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_InputField:BroadcastMessage(methodName, parameter, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
function UnityEngine_UI_InputField:BroadcastMessage(methodName, parameter)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_UI_InputField:BroadcastMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_InputField:BroadcastMessage(methodName, options)
end

--- @return System_Int32
function UnityEngine_UI_InputField:GetInstanceID()
end

--- @return System_Int32
function UnityEngine_UI_InputField:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function UnityEngine_UI_InputField:Equals(other)
end

--- @return System_String
function UnityEngine_UI_InputField:ToString()
end

--- @return System_Type
function UnityEngine_UI_InputField:GetType()
end
