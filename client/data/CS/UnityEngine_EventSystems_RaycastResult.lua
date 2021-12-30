--- @class UnityEngine_EventSystems_RaycastResult
UnityEngine_EventSystems_RaycastResult = Class(UnityEngine_EventSystems_RaycastResult)

--- @return void
function UnityEngine_EventSystems_RaycastResult:Ctor()
	--- @type UnityEngine_GameObject
	self.gameObject = nil
	--- @type System_Boolean
	self.isValid = nil
	--- @type UnityEngine_EventSystems_BaseRaycaster
	self.module = nil
	--- @type System_Single
	self.distance = nil
	--- @type System_Single
	self.index = nil
	--- @type System_Int32
	self.depth = nil
	--- @type System_Int32
	self.sortingLayer = nil
	--- @type System_Int32
	self.sortingOrder = nil
	--- @type UnityEngine_Vector3
	self.worldPosition = nil
	--- @type UnityEngine_Vector3
	self.worldNormal = nil
	--- @type UnityEngine_Vector2
	self.screenPosition = nil
end

--- @return System_Void
function UnityEngine_EventSystems_RaycastResult:Clear()
end

--- @return System_String
function UnityEngine_EventSystems_RaycastResult:ToString()
end

--- @return System_Boolean
--- @param obj System_Object
function UnityEngine_EventSystems_RaycastResult:Equals(obj)
end

--- @return System_Int32
function UnityEngine_EventSystems_RaycastResult:GetHashCode()
end

--- @return System_Type
function UnityEngine_EventSystems_RaycastResult:GetType()
end
