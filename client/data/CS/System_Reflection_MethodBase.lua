--- @class System_Reflection_MethodBase
System_Reflection_MethodBase = Class(System_Reflection_MethodBase)

--- @return void
function System_Reflection_MethodBase:Ctor()
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
	--- @type System_Boolean
	self.ContainsGenericParameters = nil
	--- @type System_Boolean
	self.IsGenericMethodDefinition = nil
	--- @type System_Boolean
	self.IsGenericMethod = nil
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

--- @return System_Reflection_MethodBase
function System_Reflection_MethodBase:GetCurrentMethod()
end

--- @return System_Reflection_MethodBase
--- @param handle System_RuntimeMethodHandle
function System_Reflection_MethodBase:GetMethodFromHandle(handle)
end

--- @return System_Reflection_MethodBase
--- @param handle System_RuntimeMethodHandle
--- @param declaringType System_RuntimeTypeHandle
function System_Reflection_MethodBase:GetMethodFromHandle(handle, declaringType)
end

--- @return System_Reflection_MethodImplAttributes
function System_Reflection_MethodBase:GetMethodImplementationFlags()
end

--- @return System_Reflection_ParameterInfo[]
function System_Reflection_MethodBase:GetParameters()
end

--- @return System_Object
--- @param obj System_Object
--- @param parameters System_Object[]
function System_Reflection_MethodBase:Invoke(obj, parameters)
end

--- @return System_Object
--- @param obj System_Object
--- @param invokeAttr System_Reflection_BindingFlags
--- @param binder System_Reflection_Binder
--- @param parameters System_Object[]
--- @param culture System_Globalization_CultureInfo
function System_Reflection_MethodBase:Invoke(obj, invokeAttr, binder, parameters, culture)
end

--- @return System_Type[]
function System_Reflection_MethodBase:GetGenericArguments()
end

--- @return System_Reflection_MethodBody
function System_Reflection_MethodBase:GetMethodBody()
end

--- @return System_Boolean
--- @param attributeType System_Type
--- @param inherit System_Boolean
function System_Reflection_MethodBase:IsDefined(attributeType, inherit)
end

--- @return System_Object[]
--- @param inherit System_Boolean
function System_Reflection_MethodBase:GetCustomAttributes(inherit)
end

--- @return System_Object[]
--- @param attributeType System_Type
--- @param inherit System_Boolean
function System_Reflection_MethodBase:GetCustomAttributes(attributeType, inherit)
end

--- @return System_Boolean
--- @param obj System_Object
function System_Reflection_MethodBase:Equals(obj)
end

--- @return System_Int32
function System_Reflection_MethodBase:GetHashCode()
end

--- @return System_Type
function System_Reflection_MethodBase:GetType()
end

--- @return System_String
function System_Reflection_MethodBase:ToString()
end
