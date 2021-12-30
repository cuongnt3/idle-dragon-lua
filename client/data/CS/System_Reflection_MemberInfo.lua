--- @class System_Reflection_MemberInfo
System_Reflection_MemberInfo = Class(System_Reflection_MemberInfo)

--- @return void
function System_Reflection_MemberInfo:Ctor()
	--- @type System_Type
	self.DeclaringType = nil
	--- @type System_Reflection_MemberTypes
	self.MemberType = nil
	--- @type System_String
	self.Name = nil
	--- @type System_Type
	self.ReflectedType = nil
	--- @type System_Reflection_Module
	self.Module = nil
	--- @type System_Int32
	self.MetadataToken = nil
end

--- @return System_Boolean
--- @param attributeType System_Type
--- @param inherit System_Boolean
function System_Reflection_MemberInfo:IsDefined(attributeType, inherit)
end

--- @return System_Object[]
--- @param inherit System_Boolean
function System_Reflection_MemberInfo:GetCustomAttributes(inherit)
end

--- @return System_Object[]
--- @param attributeType System_Type
--- @param inherit System_Boolean
function System_Reflection_MemberInfo:GetCustomAttributes(attributeType, inherit)
end

--- @return System_Boolean
--- @param obj System_Object
function System_Reflection_MemberInfo:Equals(obj)
end

--- @return System_Int32
function System_Reflection_MemberInfo:GetHashCode()
end

--- @return System_Type
function System_Reflection_MemberInfo:GetType()
end

--- @return System_String
function System_Reflection_MemberInfo:ToString()
end
