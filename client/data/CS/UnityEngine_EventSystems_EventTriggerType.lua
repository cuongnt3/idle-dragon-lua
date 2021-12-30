--- @class UnityEngine_EventSystems_EventTriggerType
UnityEngine_EventSystems_EventTriggerType = Class(UnityEngine_EventSystems_EventTriggerType)

--- @return void
function UnityEngine_EventSystems_EventTriggerType:Ctor()
	--- @type System_Int32
	self.value__ = nil
	--- @type UnityEngine_EventSystems_EventTriggerType
	self.PointerEnter = nil
	--- @type UnityEngine_EventSystems_EventTriggerType
	self.PointerExit = nil
	--- @type UnityEngine_EventSystems_EventTriggerType
	self.PointerDown = nil
	--- @type UnityEngine_EventSystems_EventTriggerType
	self.PointerUp = nil
	--- @type UnityEngine_EventSystems_EventTriggerType
	self.PointerClick = nil
	--- @type UnityEngine_EventSystems_EventTriggerType
	self.Drag = nil
	--- @type UnityEngine_EventSystems_EventTriggerType
	self.Drop = nil
	--- @type UnityEngine_EventSystems_EventTriggerType
	self.Scroll = nil
	--- @type UnityEngine_EventSystems_EventTriggerType
	self.UpdateSelected = nil
	--- @type UnityEngine_EventSystems_EventTriggerType
	self.Select = nil
	--- @type UnityEngine_EventSystems_EventTriggerType
	self.Deselect = nil
	--- @type UnityEngine_EventSystems_EventTriggerType
	self.Move = nil
	--- @type UnityEngine_EventSystems_EventTriggerType
	self.InitializePotentialDrag = nil
	--- @type UnityEngine_EventSystems_EventTriggerType
	self.BeginDrag = nil
	--- @type UnityEngine_EventSystems_EventTriggerType
	self.EndDrag = nil
	--- @type UnityEngine_EventSystems_EventTriggerType
	self.Submit = nil
	--- @type UnityEngine_EventSystems_EventTriggerType
	self.Cancel = nil
end

--- @return System_TypeCode
function UnityEngine_EventSystems_EventTriggerType:GetTypeCode()
end

--- @return System_Int32
--- @param target System_Object
function UnityEngine_EventSystems_EventTriggerType:CompareTo(target)
end

--- @return System_String
function UnityEngine_EventSystems_EventTriggerType:ToString()
end

--- @return System_String
--- @param provider System_IFormatProvider
function UnityEngine_EventSystems_EventTriggerType:ToString(provider)
end

--- @return System_String
--- @param format System_String
function UnityEngine_EventSystems_EventTriggerType:ToString(format)
end

--- @return System_String
--- @param format System_String
--- @param provider System_IFormatProvider
function UnityEngine_EventSystems_EventTriggerType:ToString(format, provider)
end

--- @return System_Boolean
--- @param obj System_Object
function UnityEngine_EventSystems_EventTriggerType:Equals(obj)
end

--- @return System_Int32
function UnityEngine_EventSystems_EventTriggerType:GetHashCode()
end

--- @return System_Type
function UnityEngine_EventSystems_EventTriggerType:GetType()
end
