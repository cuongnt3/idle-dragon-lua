--- @class UnityEngine_EventSystems_PointerEventData
UnityEngine_EventSystems_PointerEventData = Class(UnityEngine_EventSystems_PointerEventData)

--- @return void
function UnityEngine_EventSystems_PointerEventData:Ctor()
	--- @type UnityEngine_GameObject
	self.pointerEnter = nil
	--- @type UnityEngine_GameObject
	self.lastPress = nil
	--- @type UnityEngine_GameObject
	self.rawPointerPress = nil
	--- @type UnityEngine_GameObject
	self.pointerDrag = nil
	--- @type UnityEngine_EventSystems_RaycastResult
	self.pointerCurrentRaycast = nil
	--- @type UnityEngine_EventSystems_RaycastResult
	self.pointerPressRaycast = nil
	--- @type System_Boolean
	self.eligibleForClick = nil
	--- @type System_Int32
	self.pointerId = nil
	--- @type UnityEngine_Vector2
	self.position = nil
	--- @type UnityEngine_Vector2
	self.delta = nil
	--- @type UnityEngine_Vector2
	self.pressPosition = nil
	--- @type UnityEngine_Vector3
	self.worldPosition = nil
	--- @type UnityEngine_Vector3
	self.worldNormal = nil
	--- @type System_Single
	self.clickTime = nil
	--- @type System_Int32
	self.clickCount = nil
	--- @type UnityEngine_Vector2
	self.scrollDelta = nil
	--- @type System_Boolean
	self.useDragThreshold = nil
	--- @type System_Boolean
	self.dragging = nil
	--- @type UnityEngine_EventSystems_PointerEventData_InputButton
	self.button = nil
	--- @type UnityEngine_Camera
	self.enterEventCamera = nil
	--- @type UnityEngine_Camera
	self.pressEventCamera = nil
	--- @type UnityEngine_GameObject
	self.pointerPress = nil
	--- @type UnityEngine_EventSystems_BaseInputModule
	self.currentInputModule = nil
	--- @type UnityEngine_GameObject
	self.selectedObject = nil
	--- @type System_Boolean
	self.used = nil
	--- @type System_Collections_Generic_List`1[UnityEngine_GameObject]
	self.hovered = nil
end

--- @return System_Boolean
function UnityEngine_EventSystems_PointerEventData:IsPointerMoving()
end

--- @return System_Boolean
function UnityEngine_EventSystems_PointerEventData:IsScrolling()
end

--- @return System_String
function UnityEngine_EventSystems_PointerEventData:ToString()
end

--- @return System_Void
function UnityEngine_EventSystems_PointerEventData:Reset()
end

--- @return System_Void
function UnityEngine_EventSystems_PointerEventData:Use()
end

--- @return System_Boolean
--- @param obj System_Object
function UnityEngine_EventSystems_PointerEventData:Equals(obj)
end

--- @return System_Int32
function UnityEngine_EventSystems_PointerEventData:GetHashCode()
end

--- @return System_Type
function UnityEngine_EventSystems_PointerEventData:GetType()
end
