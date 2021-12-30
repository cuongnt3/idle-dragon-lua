--- @class System_Reflection_Module
System_Reflection_Module = Class(System_Reflection_Module)

--- @return void
function System_Reflection_Module:Ctor()
	--- @type System_Reflection_Assembly
	self.Assembly = nil
	--- @type System_String
	self.FullyQualifiedName = nil
	--- @type System_String
	self.Name = nil
	--- @type System_String
	self.ScopeName = nil
	--- @type System_ModuleHandle
	self.ModuleHandle = nil
	--- @type System_Int32
	self.MetadataToken = nil
	--- @type System_Int32
	self.MDStreamVersion = nil
	--- @type System_Guid
	self.ModuleVersionId = nil
	--- @type System_Reflection_TypeFilter
	self.FilterTypeName = nil
	--- @type System_Reflection_TypeFilter
	self.FilterTypeNameIgnoreCase = nil
end

--- @return System_Type[]
--- @param filter System_Reflection_TypeFilter
--- @param filterCriteria System_Object
function System_Reflection_Module:FindTypes(filter, filterCriteria)
end

--- @return System_Object[]
--- @param inherit System_Boolean
function System_Reflection_Module:GetCustomAttributes(inherit)
end

--- @return System_Object[]
--- @param attributeType System_Type
--- @param inherit System_Boolean
function System_Reflection_Module:GetCustomAttributes(attributeType, inherit)
end

--- @return System_Reflection_FieldInfo
--- @param name System_String
function System_Reflection_Module:GetField(name)
end

--- @return System_Reflection_FieldInfo
--- @param name System_String
--- @param bindingAttr System_Reflection_BindingFlags
function System_Reflection_Module:GetField(name, bindingAttr)
end

--- @return System_Reflection_FieldInfo[]
function System_Reflection_Module:GetFields()
end

--- @return System_Reflection_MethodInfo
--- @param name System_String
function System_Reflection_Module:GetMethod(name)
end

--- @return System_Reflection_MethodInfo
--- @param name System_String
--- @param types System_Type[]
function System_Reflection_Module:GetMethod(name, types)
end

--- @return System_Reflection_MethodInfo
--- @param name System_String
--- @param bindingAttr System_Reflection_BindingFlags
--- @param binder System_Reflection_Binder
--- @param callConvention System_Reflection_CallingConventions
--- @param types System_Type[]
--- @param modifiers System_Reflection_ParameterModifier[]
function System_Reflection_Module:GetMethod(name, bindingAttr, binder, callConvention, types, modifiers)
end

--- @return System_Reflection_MethodInfo[]
function System_Reflection_Module:GetMethods()
end

--- @return System_Reflection_MethodInfo[]
--- @param bindingFlags System_Reflection_BindingFlags
function System_Reflection_Module:GetMethods(bindingFlags)
end

--- @return System_Reflection_FieldInfo[]
--- @param bindingFlags System_Reflection_BindingFlags
function System_Reflection_Module:GetFields(bindingFlags)
end

--- @return System_Void
--- @param info System_Runtime_Serialization_SerializationInfo
--- @param context System_Runtime_Serialization_StreamingContext
function System_Reflection_Module:GetObjectData(info, context)
end

--- @return System_Security_Cryptography_X509Certificates_X509Certificate
function System_Reflection_Module:GetSignerCertificate()
end

--- @return System_Type
--- @param className System_String
function System_Reflection_Module:GetType(className)
end

--- @return System_Type
--- @param className System_String
--- @param ignoreCase System_Boolean
function System_Reflection_Module:GetType(className, ignoreCase)
end

--- @return System_Type
--- @param className System_String
--- @param throwOnError System_Boolean
--- @param ignoreCase System_Boolean
function System_Reflection_Module:GetType(className, throwOnError, ignoreCase)
end

--- @return System_Type[]
function System_Reflection_Module:GetTypes()
end

--- @return System_Boolean
--- @param attributeType System_Type
--- @param inherit System_Boolean
function System_Reflection_Module:IsDefined(attributeType, inherit)
end

--- @return System_Boolean
function System_Reflection_Module:IsResource()
end

--- @return System_String
function System_Reflection_Module:ToString()
end

--- @return System_Void
--- @param peKind System_Reflection_PortableExecutableKinds&
--- @param machine System_Reflection_ImageFileMachine&
function System_Reflection_Module:GetPEKind(peKind, machine)
end

--- @return System_Reflection_FieldInfo
--- @param metadataToken System_Int32
function System_Reflection_Module:ResolveField(metadataToken)
end

--- @return System_Reflection_FieldInfo
--- @param metadataToken System_Int32
--- @param genericTypeArguments System_Type[]
--- @param genericMethodArguments System_Type[]
function System_Reflection_Module:ResolveField(metadataToken, genericTypeArguments, genericMethodArguments)
end

--- @return System_Reflection_MemberInfo
--- @param metadataToken System_Int32
function System_Reflection_Module:ResolveMember(metadataToken)
end

--- @return System_Reflection_MemberInfo
--- @param metadataToken System_Int32
--- @param genericTypeArguments System_Type[]
--- @param genericMethodArguments System_Type[]
function System_Reflection_Module:ResolveMember(metadataToken, genericTypeArguments, genericMethodArguments)
end

--- @return System_Reflection_MethodBase
--- @param metadataToken System_Int32
function System_Reflection_Module:ResolveMethod(metadataToken)
end

--- @return System_Reflection_MethodBase
--- @param metadataToken System_Int32
--- @param genericTypeArguments System_Type[]
--- @param genericMethodArguments System_Type[]
function System_Reflection_Module:ResolveMethod(metadataToken, genericTypeArguments, genericMethodArguments)
end

--- @return System_String
--- @param metadataToken System_Int32
function System_Reflection_Module:ResolveString(metadataToken)
end

--- @return System_Type
--- @param metadataToken System_Int32
function System_Reflection_Module:ResolveType(metadataToken)
end

--- @return System_Type
--- @param metadataToken System_Int32
--- @param genericTypeArguments System_Type[]
--- @param genericMethodArguments System_Type[]
function System_Reflection_Module:ResolveType(metadataToken, genericTypeArguments, genericMethodArguments)
end

--- @return System_Byte[]
--- @param metadataToken System_Int32
function System_Reflection_Module:ResolveSignature(metadataToken)
end

--- @return System_Boolean
--- @param obj System_Object
function System_Reflection_Module:Equals(obj)
end

--- @return System_Int32
function System_Reflection_Module:GetHashCode()
end

--- @return System_Type
function System_Reflection_Module:GetType()
end
