--- @class System_Reflection_ParameterInfo
System_Reflection_ParameterInfo = Class(System_Reflection_ParameterInfo)

--- @return void
function System_Reflection_ParameterInfo:Ctor()
	--- @type System_Type
	self.ParameterType = nil
	--- @type System_Reflection_ParameterAttributes
	self.Attributes = nil
	--- @type System_Object
	self.DefaultValue = nil
	--- @type System_Boolean
	self.IsIn = nil
	--- @type System_Boolean
	self.IsLcid = nil
	--- @type System_Boolean
	self.IsOptional = nil
	--- @type System_Boolean
	self.IsOut = nil
	--- @type System_Boolean
	self.IsRetval = nil
	--- @type System_Reflection_MemberInfo
	self.Member = nil
	--- @type System_String
	self.Name = nil
	--- @type System_Int32
	self.Position = nil
	--- @type System_Int32
	self.MetadataToken = nil
	--- @type System_Object
	self.RawDefaultValue = nil
end

--- @return System_String
function System_Reflection_ParameterInfo:ToString()
end

--- @return System_Object[]
--- @param inherit System_Boolean
function System_Reflection_ParameterInfo:GetCustomAttributes(inherit)
end

--- @return System_Object[]
--- @param attributeType System_Type
--- @param inherit System_Boolean
function System_Reflection_ParameterInfo:GetCustomAttributes(attributeType, inherit)
end

--- @return System_Boolean
--- @param attributeType System_Type
--- @param inherit System_Boolean
function System_Reflection_ParameterInfo:IsDefined(attributeType, inherit)
end

--- @return System_Type[]
function System_Reflection_ParameterInfo:GetOptionalCustomModifiers()
end

--- @return System_Type[]
function System_Reflection_ParameterInfo:GetRequiredCustomModifiers()
end

--- @return System_Boolean
--- @param obj System_Object
function System_Reflection_ParameterInfo:Equals(obj)
end

--- @return System_Int32
function System_Reflection_ParameterInfo:GetHashCode()
end

--- @return System_Type
function System_Reflection_ParameterInfo:GetType()
end
