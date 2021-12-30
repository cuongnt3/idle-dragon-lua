--- @class UnityEngine_Events_UnityEvent
UnityEngine_Events_UnityEvent = Class(UnityEngine_Events_UnityEvent)

--- @return void
function UnityEngine_Events_UnityEvent:Ctor()
end

--- @return System_Void
--- @param call UnityEngine_Events_UnityAction
function UnityEngine_Events_UnityEvent:AddListener(call)
end

--- @return System_Void
--- @param call UnityEngine_Events_UnityAction
function UnityEngine_Events_UnityEvent:RemoveListener(call)
end

--- @return System_Void
function UnityEngine_Events_UnityEvent:Invoke()
end

--- @return System_Int32
function UnityEngine_Events_UnityEvent:GetPersistentEventCount()
end

--- @return UnityEngine_Object
--- @param index System_Int32
function UnityEngine_Events_UnityEvent:GetPersistentTarget(index)
end

--- @return System_String
--- @param index System_Int32
function UnityEngine_Events_UnityEvent:GetPersistentMethodName(index)
end

--- @return System_Void
--- @param index System_Int32
--- @param state UnityEngine_Events_UnityEventCallState
function UnityEngine_Events_UnityEvent:SetPersistentListenerState(index, state)
end

--- @return System_Void
function UnityEngine_Events_UnityEvent:RemoveAllListeners()
end

--- @return System_String
function UnityEngine_Events_UnityEvent:ToString()
end

--- @return System_Boolean
--- @param obj System_Object
function UnityEngine_Events_UnityEvent:Equals(obj)
end

--- @return System_Int32
function UnityEngine_Events_UnityEvent:GetHashCode()
end

--- @return System_Type
function UnityEngine_Events_UnityEvent:GetType()
end
