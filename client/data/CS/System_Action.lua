--- @class System_Action
System_Action = Class(System_Action)

--- @return void
function System_Action:Ctor()
	--- @type System_Reflection_MethodInfo
	self.Method = nil
	--- @type System_Object
	self.Target = nil
end

--- @return System_Void
function System_Action:Invoke()
end

--- @return System_IAsyncResult
--- @param callback System_AsyncCallback
--- @param object System_Object
function System_Action:BeginInvoke(callback, object)
end

--- @return System_Void
--- @param result System_IAsyncResult
function System_Action:EndInvoke(result)
end

--- @return System_Void
--- @param info System_Runtime_Serialization_SerializationInfo
--- @param context System_Runtime_Serialization_StreamingContext
function System_Action:GetObjectData(info, context)
end

--- @return System_Boolean
--- @param obj System_Object
function System_Action:Equals(obj)
end

--- @return System_Int32
function System_Action:GetHashCode()
end

--- @return System_Delegate[]
function System_Action:GetInvocationList()
end

--- @return System_Object
--- @param args System_Object[]
function System_Action:DynamicInvoke(args)
end

--- @return System_Object
function System_Action:Clone()
end

--- @return System_Type
function System_Action:GetType()
end

--- @return System_String
function System_Action:ToString()
end
