--- @class System_Reflection_MethodInfo
System_Reflection_MethodInfo = Class(System_Reflection_MethodInfo)

--- @return void
function System_Reflection_MethodInfo:Ctor()
	--- @type System_Reflection_MemberTypes
	self.MemberType = nil
	--- @type System_Type
	self.ReturnType = nil
	--- @type System_Reflection_ICustomAttributeProvider
	self.ReturnTypeCustomAttributes = nil
	--- @type System_Boolean
	self.IsGenericMethod = nil
	--- @type System_Boolean
	self.IsGenericMethodDefinition = nil
	--- @type System_Boolean
	self.ContainsGenericParameters = nil
	--- @type System_Reflection_ParameterInfo
	self.ReturnParameter = nil
	--- @type System_RuntimeMethodHandle
	self.MethodHandle = nil
	--- @type System_Reflection_MethodAttributes
	self.Attributes = nil
	--- @type System_Reflection_CallingConventions
	self.CallingConvention = nil
	--- @type System_Boolean
	self.IsPublic = nil
	--- @type System_Boolean
	self.IsPrivate = nil
	--- @type System_Boolean
	self.IsFamily = nil
	--- @type System_Boolean
	self.IsAssembly = nil
	--- @type System_Boolean
	self.IsFamilyAndAssembly = nil
	--- @type System_Boolean
	self.IsFamilyOrAssembly = nil
	--- @type System_Boolean
	self.IsStatic = nil
	--- @type System_Boolean
	self.IsFinal = nil
	--- @type System_Boolean
	self.IsVirtual = nil
	--- @type System_Boolean
	self.IsHideBySig = nil
	--- @type System_Boolean
	self.IsAbstract = nil
	--- @type System_Boolean
	self.IsSpecialName = nil
	--- @type System_Boolean
	self.IsConstructor = nil
	--- @type System_Type
	self.DeclaringType = nil
	--- @type System_String
	self.Name = nil
	--- @type System_Type
	self.ReflectedType = nil
	--- @type System_Reflection_Module
	self.Module = nil
	--- @type System_Int32
	self.MetadataToken = nil
end

--- @return System_Reflection_MethodInfo
function System_Reflection_MethodInfo:GetBaseDefinition()
end

--- @return System_Reflection_MethodInfo
function System_Reflection_MethodInfo:GetGenericMethodDefinition()
end

--- @return System_Reflection_MethodInfo
--- @param typeArguments System_Type[]
function System_Reflection_MethodInfo:MakeGenericMethod(typeArguments)
end

--- @return System_Type[]
function System_Reflection_MethodInfo:GetGenericArguments()
end

--- @return System_Reflection_MethodImplAttributes
function System_Reflection_MethodInfo:GetMethodImplementationFlags()
end

--- @return System_Reflection_ParameterInfo[]
function System_Reflection_MethodInfo:GetParameters()
end

--- @return System_Object
--- @param obj System_Object
--- @param parameters System_Object[]
function System_Reflection_MethodInfo:Invoke(obj, parameters)
end

--- @return System_Object
--- @param obj System_Object
--- @param invokeAttr System_Reflection_BindingFlags
--- @param binder System_Reflection_Binder
--- @param parameters System_Object[]
--- @param culture System_Globalization_CultureInfo
function System_Reflection_MethodInfo:Invoke(obj, invokeAttr, binder, parameters, culture)
end

--- @return System_Reflection_MethodBody
function System_Reflection_MethodInfo:GetMethodBody()
end

--- @return System_Boolean
--- @param attributeType System_Type
--- @param inherit System_Boolean
function System_Reflection_MethodInfo:IsDefined(attributeType, inherit)
end

--- @return System_Object[]
--- @param inherit System_Boolean
function System_Reflection_MethodInfo:GetCustomAttributes(inherit)
end

--- @return System_Object[]
--- @param attributeType System_Type
--- @param inherit System_Boolean
function System_Reflection_MethodInfo:GetCustomAttributes(attributeType, inherit)
end

--- @return System_Boolean
--- @param obj System_Object
function System_Reflection_MethodInfo:Equals(obj)
end

--- @return System_Int32
function System_Reflection_MethodInfo:GetHashCode()
end

--- @return System_Type
function System_Reflection_MethodInfo:GetType()
end

--- @return System_String
function System_Reflection_MethodInfo:ToString()
end
