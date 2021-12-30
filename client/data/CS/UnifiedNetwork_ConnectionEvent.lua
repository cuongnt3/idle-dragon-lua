--- @class UnifiedNetwork_ConnectionEvent
UnifiedNetwork_ConnectionEvent = Class(UnifiedNetwork_ConnectionEvent)

--- @return void
function UnifiedNetwork_ConnectionEvent:Ctor()
	--- @type System_Reflection_MethodInfo
	self.Method = nil
	--- @type System_Object
	self.Target = nil
end

--- @return System_Void
function UnifiedNetwork_ConnectionEvent:Invoke()
end

--- @return System_IAsyncResult
--- @param callback System_AsyncCallback
--- @param object System_Object
function UnifiedNetwork_ConnectionEvent:BeginInvoke(callback, object)
end

--- @return System_Void
--- @param result System_IAsyncResult
function UnifiedNetwork_ConnectionEvent:EndInvoke(result)
end

--- @return System_Void
--- @param info System_Runtime_Serialization_SerializationInfo
--- @param context System_Runtime_Serialization_StreamingContext
function UnifiedNetwork_ConnectionEvent:GetObjectData(info, context)
end

--- @return System_Boolean
--- @param obj System_Object
function UnifiedNetwork_ConnectionEvent:Equals(obj)
end

--- @return System_Int32
function UnifiedNetwork_ConnectionEvent:GetHashCode()
end

--- @return System_Delegate[]
function UnifiedNetwork_ConnectionEvent:GetInvocationList()
end

--- @return System_Object
--- @param args System_Object[]
function UnifiedNetwork_ConnectionEvent:DynamicInvoke(args)
end

--- @return System_Object
function UnifiedNetwork_ConnectionEvent:Clone()
end

--- @return System_Type
function UnifiedNetwork_ConnectionEvent:GetType()
end

--- @return System_String
function UnifiedNetwork_ConnectionEvent:ToString()
end
