--- @class System_Reflection_MemberFilter
System_Reflection_MemberFilter = Class(System_Reflection_MemberFilter)

--- @return void
function System_Reflection_MemberFilter:Ctor()
	--- @type System_Reflection_MethodInfo
	self.Method = nil
	--- @type System_Object
	self.Target = nil
end

--- @return System_Boolean
--- @param m System_Reflection_MemberInfo
--- @param filterCriteria System_Object
function System_Reflection_MemberFilter:Invoke(m, filterCriteria)
end

--- @return System_IAsyncResult
--- @param m System_Reflection_MemberInfo
--- @param filterCriteria System_Object
--- @param callback System_AsyncCallback
--- @param object System_Object
function System_Reflection_MemberFilter:BeginInvoke(m, filterCriteria, callback, object)
end

--- @return System_Boolean
--- @param result System_IAsyncResult
function System_Reflection_MemberFilter:EndInvoke(result)
end

--- @return System_Void
--- @param info System_Runtime_Serialization_SerializationInfo
--- @param context System_Runtime_Serialization_StreamingContext
function System_Reflection_MemberFilter:GetObjectData(info, context)
end

--- @return System_Boolean
--- @param obj System_Object
function System_Reflection_MemberFilter:Equals(obj)
end

--- @return System_Int32
function System_Reflection_MemberFilter:GetHashCode()
end

--- @return System_Delegate[]
function System_Reflection_MemberFilter:GetInvocationList()
end

--- @return System_Object
--- @param args System_Object[]
function System_Reflection_MemberFilter:DynamicInvoke(args)
end

--- @return System_Object
function System_Reflection_MemberFilter:Clone()
end

--- @return System_Type
function System_Reflection_MemberFilter:GetType()
end

--- @return System_String
function System_Reflection_MemberFilter:ToString()
end
