--- @class UnityEngine_UI_Button
UnityEngine_UI_Button = Class(UnityEngine_UI_Button)

--- @return void
function UnityEngine_UI_Button:Ctor()
	--- @type UnityEngine_UI_Button_ButtonClickedEvent
	self.onClick = nil
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
--- @param eventData UnityEngine_EventSystems_PointerEventData
function UnityEngine_UI_Button:OnPointerClick(eventData)
end

--- @return System_Void
--- @param eventData UnityEngine_EventSystems_BaseEventData
function UnityEngine_UI_Button:OnSubmit(eventData)
end

--- @return System_Boolean
function UnityEngine_UI_Button:IsInteractable()
end

--- @return UnityEngine_UI_Selectable
--- @param dir UnityEngine_Vector3
function UnityEngine_UI_Button:FindSelectable(dir)
end

--- @return UnityEngine_UI_Selectable
function UnityEngine_UI_Button:FindSelectableOnLeft()
end

--- @return UnityEngine_UI_Selectable
function UnityEngine_UI_Button:FindSelectableOnRight()
end

--- @return UnityEngine_UI_Selectable
function UnityEngine_UI_Button:FindSelectableOnUp()
end

--- @return UnityEngine_UI_Selectable
function UnityEngine_UI_Button:FindSelectableOnDown()
end

--- @return System_Void
--- @param eventData UnityEngine_EventSystems_AxisEventData
function UnityEngine_UI_Button:OnMove(eventData)
end

--- @return System_Void
--- @param eventData UnityEngine_EventSystems_PointerEventData
function UnityEngine_UI_Button:OnPointerDown(eventData)
end

--- @return System_Void
--- @param eventData UnityEngine_EventSystems_PointerEventData
function UnityEngine_UI_Button:OnPointerUp(eventData)
end

--- @return System_Void
--- @param eventData UnityEngine_EventSystems_PointerEventData
function UnityEngine_UI_Button:OnPointerEnter(eventData)
end

--- @return System_Void
--- @param eventData UnityEngine_EventSystems_PointerEventData
function UnityEngine_UI_Button:OnPointerExit(eventData)
end

--- @return System_Void
--- @param eventData UnityEngine_EventSystems_BaseEventData
function UnityEngine_UI_Button:OnSelect(eventData)
end

--- @return System_Void
--- @param eventData UnityEngine_EventSystems_BaseEventData
function UnityEngine_UI_Button:OnDeselect(eventData)
end

--- @return System_Void
function UnityEngine_UI_Button:Select()
end

--- @return System_Boolean
function UnityEngine_UI_Button:IsActive()
end

--- @return System_Boolean
function UnityEngine_UI_Button:IsDestroyed()
end

--- @return System_Boolean
function UnityEngine_UI_Button:IsInvoking()
end

--- @return System_Void
function UnityEngine_UI_Button:CancelInvoke()
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
function UnityEngine_UI_Button:Invoke(methodName, time)
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
--- @param repeatRate System_Single
function UnityEngine_UI_Button:InvokeRepeating(methodName, time, repeatRate)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_UI_Button:CancelInvoke(methodName)
end

--- @return System_Boolean
--- @param methodName System_String
function UnityEngine_UI_Button:IsInvoking(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
function UnityEngine_UI_Button:StartCoroutine(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_UI_Button:StartCoroutine(methodName, value)
end

--- @return UnityEngine_Coroutine
--- @param routine System_Collections_IEnumerator
function UnityEngine_UI_Button:StartCoroutine(routine)
end

--- @return System_Void
--- @param routine System_Collections_IEnumerator
function UnityEngine_UI_Button:StopCoroutine(routine)
end

--- @return System_Void
--- @param routine UnityEngine_Coroutine
function UnityEngine_UI_Button:StopCoroutine(routine)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_UI_Button:StopCoroutine(methodName)
end

--- @return System_Void
function UnityEngine_UI_Button:StopAllCoroutines()
end

--- @return UnityEngine_Component
--- @param type System_Type
function UnityEngine_UI_Button:GetComponent(type)
end

--- @return CS_T
function UnityEngine_UI_Button:GetComponent()
end

--- @return UnityEngine_Component
--- @param type System_String
function UnityEngine_UI_Button:GetComponent(type)
end

--- @return UnityEngine_Component
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_UI_Button:GetComponentInChildren(t, includeInactive)
end

--- @return UnityEngine_Component
--- @param t System_Type
function UnityEngine_UI_Button:GetComponentInChildren(t)
end

--- @return CS_T
--- @param includeInactive System_Boolean
function UnityEngine_UI_Button:GetComponentInChildren(includeInactive)
end

--- @return CS_T
function UnityEngine_UI_Button:GetComponentInChildren()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_UI_Button:GetComponentsInChildren(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function UnityEngine_UI_Button:GetComponentsInChildren(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function UnityEngine_UI_Button:GetComponentsInChildren(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param result System_Collections_Generic_List`1[T]
function UnityEngine_UI_Button:GetComponentsInChildren(includeInactive, result)
end

--- @return CS_T[]
function UnityEngine_UI_Button:GetComponentsInChildren()
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_UI_Button:GetComponentsInChildren(results)
end

--- @return UnityEngine_Component
--- @param t System_Type
function UnityEngine_UI_Button:GetComponentInParent(t)
end

--- @return CS_T
function UnityEngine_UI_Button:GetComponentInParent()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_UI_Button:GetComponentsInParent(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function UnityEngine_UI_Button:GetComponentsInParent(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function UnityEngine_UI_Button:GetComponentsInParent(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_UI_Button:GetComponentsInParent(includeInactive, results)
end

--- @return CS_T[]
function UnityEngine_UI_Button:GetComponentsInParent()
end

--- @return UnityEngine_Component[]
--- @param type System_Type
function UnityEngine_UI_Button:GetComponents(type)
end

--- @return System_Void
--- @param type System_Type
--- @param results System_Collections_Generic_List`1[UnityEngine_Component]
function UnityEngine_UI_Button:GetComponents(type, results)
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_UI_Button:GetComponents(results)
end

--- @return CS_T[]
function UnityEngine_UI_Button:GetComponents()
end

--- @return System_Boolean
--- @param tag System_String
function UnityEngine_UI_Button:CompareTag(tag)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_Button:SendMessageUpwards(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_UI_Button:SendMessageUpwards(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_UI_Button:SendMessageUpwards(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_Button:SendMessageUpwards(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_UI_Button:SendMessage(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_UI_Button:SendMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_Button:SendMessage(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_Button:SendMessage(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_Button:BroadcastMessage(methodName, parameter, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
function UnityEngine_UI_Button:BroadcastMessage(methodName, parameter)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_UI_Button:BroadcastMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_Button:BroadcastMessage(methodName, options)
end

--- @return System_Int32
function UnityEngine_UI_Button:GetInstanceID()
end

--- @return System_Int32
function UnityEngine_UI_Button:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function UnityEngine_UI_Button:Equals(other)
end

--- @return System_String
function UnityEngine_UI_Button:ToString()
end

--- @return System_Type
function UnityEngine_UI_Button:GetType()
end
