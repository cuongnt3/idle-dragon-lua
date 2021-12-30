--- @class UnityEngine_EventSystems_EventTrigger_Entry
UnityEngine_EventSystems_EventTrigger_Entry = Class(UnityEngine_EventSystems_EventTrigger_Entry)

--- @return void
function UnityEngine_EventSystems_EventTrigger_Entry:Ctor()
	--- @type UnityEngine_EventSystems_EventTriggerType
	self.eventID = nil
	--- @type UnityEngine_EventSystems_EventTrigger_TriggerEvent
	self.callback = nil
end

--- @return System_Boolean
--- @param obj System_Object
function UnityEngine_EventSystems_EventTrigger_Entry:Equals(obj)
end

--- @return System_Int32
function UnityEngine_EventSystems_EventTrigger_Entry:GetHashCode()
end

--- @return System_Type
function UnityEngine_EventSystems_EventTrigger_Entry:GetType()
end

--- @return System_String
function UnityEngine_EventSystems_EventTrigger_Entry:ToString()
end
