--- @class UnityEngine_EventSystems_EventTrigger
UnityEngine_EventSystems_EventTrigger = Class(UnityEngine_EventSystems_EventTrigger)

--- @return void
function UnityEngine_EventSystems_EventTrigger:Ctor()
	--- @type System_Collections_Generic_List`1[UnityEngine_EventSystems_EventTrigger_Entry]
	self.triggers = nil
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
	--- @type System_Collections_Generic_List`1[UnityEngine_EventSystems_EventTrigger_Entry]
	self.delegates = nil
end

--- @return System_Void
--- @param eventData UnityEngine_EventSystems_PointerEventData
function UnityEngine_EventSystems_EventTrigger:OnPointerEnter(eventData)
end

--- @return System_Void
--- @param eventData UnityEngine_EventSystems_PointerEventData
function UnityEngine_EventSystems_EventTrigger:OnPointerExit(eventData)
end

--- @return System_Void
--- @param eventData UnityEngine_EventSystems_PointerEventData
function UnityEngine_EventSystems_EventTrigger:OnDrag(eventData)
end

--- @return System_Void
--- @param eventData UnityEngine_EventSystems_PointerEventData
function UnityEngine_EventSystems_EventTrigger:OnDrop(eventData)
end

--- @return System_Void
--- @param eventData UnityEngine_EventSystems_PointerEventData
function UnityEngine_EventSystems_EventTrigger:OnPointerDown(eventData)
end

--- @return System_Void
--- @param eventData UnityEngine_EventSystems_PointerEventData
function UnityEngine_EventSystems_EventTrigger:OnPointerUp(eventData)
end

--- @return System_Void
--- @param eventData UnityEngine_EventSystems_PointerEventData
function UnityEngine_EventSystems_EventTrigger:OnPointerClick(eventData)
end

--- @return System_Void
--- @param eventData UnityEngine_EventSystems_BaseEventData
function UnityEngine_EventSystems_EventTrigger:OnSelect(eventData)
end

--- @return System_Void
--- @param eventData UnityEngine_EventSystems_BaseEventData
function UnityEngine_EventSystems_EventTrigger:OnDeselect(eventData)
end

--- @return System_Void
--- @param eventData UnityEngine_EventSystems_PointerEventData
function UnityEngine_EventSystems_EventTrigger:OnScroll(eventData)
end

--- @return System_Void
--- @param eventData UnityEngine_EventSystems_AxisEventData
function UnityEngine_EventSystems_EventTrigger:OnMove(eventData)
end

--- @return System_Void
--- @param eventData UnityEngine_EventSystems_BaseEventData
function UnityEngine_EventSystems_EventTrigger:OnUpdateSelected(eventData)
end

--- @return System_Void
--- @param eventData UnityEngine_EventSystems_PointerEventData
function UnityEngine_EventSystems_EventTrigger:OnInitializePotentialDrag(eventData)
end

--- @return System_Void
--- @param eventData UnityEngine_EventSystems_PointerEventData
function UnityEngine_EventSystems_EventTrigger:OnBeginDrag(eventData)
end

--- @return System_Void
--- @param eventData UnityEngine_EventSystems_PointerEventData
function UnityEngine_EventSystems_EventTrigger:OnEndDrag(eventData)
end

--- @return System_Void
--- @param eventData UnityEngine_EventSystems_BaseEventData
function UnityEngine_EventSystems_EventTrigger:OnSubmit(eventData)
end

--- @return System_Void
--- @param eventData UnityEngine_EventSystems_BaseEventData
function UnityEngine_EventSystems_EventTrigger:OnCancel(eventData)
end

--- @return System_Boolean
function UnityEngine_EventSystems_EventTrigger:IsInvoking()
end

--- @return System_Void
function UnityEngine_EventSystems_EventTrigger:CancelInvoke()
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
function UnityEngine_EventSystems_EventTrigger:Invoke(methodName, time)
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
--- @param repeatRate System_Single
function UnityEngine_EventSystems_EventTrigger:InvokeRepeating(methodName, time, repeatRate)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_EventSystems_EventTrigger:CancelInvoke(methodName)
end

--- @return System_Boolean
--- @param methodName System_String
function UnityEngine_EventSystems_EventTrigger:IsInvoking(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
function UnityEngine_EventSystems_EventTrigger:StartCoroutine(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_EventSystems_EventTrigger:StartCoroutine(methodName, value)
end

--- @return UnityEngine_Coroutine
--- @param routine System_Collections_IEnumerator
function UnityEngine_EventSystems_EventTrigger:StartCoroutine(routine)
end

--- @return System_Void
--- @param routine System_Collections_IEnumerator
function UnityEngine_EventSystems_EventTrigger:StopCoroutine(routine)
end

--- @return System_Void
--- @param routine UnityEngine_Coroutine
function UnityEngine_EventSystems_EventTrigger:StopCoroutine(routine)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_EventSystems_EventTrigger:StopCoroutine(methodName)
end

--- @return System_Void
function UnityEngine_EventSystems_EventTrigger:StopAllCoroutines()
end

--- @return UnityEngine_Component
--- @param type System_Type
function UnityEngine_EventSystems_EventTrigger:GetComponent(type)
end

--- @return CS_T
function UnityEngine_EventSystems_EventTrigger:GetComponent()
end

--- @return UnityEngine_Component
--- @param type System_String
function UnityEngine_EventSystems_EventTrigger:GetComponent(type)
end

--- @return UnityEngine_Component
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_EventSystems_EventTrigger:GetComponentInChildren(t, includeInactive)
end

--- @return UnityEngine_Component
--- @param t System_Type
function UnityEngine_EventSystems_EventTrigger:GetComponentInChildren(t)
end

--- @return CS_T
--- @param includeInactive System_Boolean
function UnityEngine_EventSystems_EventTrigger:GetComponentInChildren(includeInactive)
end

--- @return CS_T
function UnityEngine_EventSystems_EventTrigger:GetComponentInChildren()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_EventSystems_EventTrigger:GetComponentsInChildren(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function UnityEngine_EventSystems_EventTrigger:GetComponentsInChildren(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function UnityEngine_EventSystems_EventTrigger:GetComponentsInChildren(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param result System_Collections_Generic_List`1[T]
function UnityEngine_EventSystems_EventTrigger:GetComponentsInChildren(includeInactive, result)
end

--- @return CS_T[]
function UnityEngine_EventSystems_EventTrigger:GetComponentsInChildren()
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_EventSystems_EventTrigger:GetComponentsInChildren(results)
end

--- @return UnityEngine_Component
--- @param t System_Type
function UnityEngine_EventSystems_EventTrigger:GetComponentInParent(t)
end

--- @return CS_T
function UnityEngine_EventSystems_EventTrigger:GetComponentInParent()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_EventSystems_EventTrigger:GetComponentsInParent(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function UnityEngine_EventSystems_EventTrigger:GetComponentsInParent(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function UnityEngine_EventSystems_EventTrigger:GetComponentsInParent(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_EventSystems_EventTrigger:GetComponentsInParent(includeInactive, results)
end

--- @return CS_T[]
function UnityEngine_EventSystems_EventTrigger:GetComponentsInParent()
end

--- @return UnityEngine_Component[]
--- @param type System_Type
function UnityEngine_EventSystems_EventTrigger:GetComponents(type)
end

--- @return System_Void
--- @param type System_Type
--- @param results System_Collections_Generic_List`1[UnityEngine_Component]
function UnityEngine_EventSystems_EventTrigger:GetComponents(type, results)
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_EventSystems_EventTrigger:GetComponents(results)
end

--- @return CS_T[]
function UnityEngine_EventSystems_EventTrigger:GetComponents()
end

--- @return System_Boolean
--- @param tag System_String
function UnityEngine_EventSystems_EventTrigger:CompareTag(tag)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_EventSystems_EventTrigger:SendMessageUpwards(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_EventSystems_EventTrigger:SendMessageUpwards(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_EventSystems_EventTrigger:SendMessageUpwards(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_EventSystems_EventTrigger:SendMessageUpwards(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_EventSystems_EventTrigger:SendMessage(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_EventSystems_EventTrigger:SendMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_EventSystems_EventTrigger:SendMessage(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_EventSystems_EventTrigger:SendMessage(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_EventSystems_EventTrigger:BroadcastMessage(methodName, parameter, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
function UnityEngine_EventSystems_EventTrigger:BroadcastMessage(methodName, parameter)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_EventSystems_EventTrigger:BroadcastMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_EventSystems_EventTrigger:BroadcastMessage(methodName, options)
end

--- @return System_Int32
function UnityEngine_EventSystems_EventTrigger:GetInstanceID()
end

--- @return System_Int32
function UnityEngine_EventSystems_EventTrigger:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function UnityEngine_EventSystems_EventTrigger:Equals(other)
end

--- @return System_String
function UnityEngine_EventSystems_EventTrigger:ToString()
end

--- @return System_Type
function UnityEngine_EventSystems_EventTrigger:GetType()
end
