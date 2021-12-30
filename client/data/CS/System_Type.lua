--- @class System_Type
System_Type = Class(System_Type)

--- @return void
function System_Type:Ctor()
	--- @type System_Reflection_Assembly
	self.Assembly = nil
	--- @type System_String
	self.AssemblyQualifiedName = nil
	--- @type System_Reflection_TypeAttributes
	self.Attributes = nil
	--- @type System_Type
	self.BaseType = nil
	--- @type System_Type
	self.DeclaringType = nil
	--- @type System_Reflection_Binder
	self.DefaultBinder = nil
	--- @type System_String
	self.FullName = nil
	--- @type System_Guid
	self.GUID = nil
	--- @type System_Boolean
	self.HasElementType = nil
	--- @type System_Boolean
	self.IsAbstract = nil
	--- @type System_Boolean
	self.IsAnsiClass = nil
	--- @type System_Boolean
	self.IsArray = nil
	--- @type System_Boolean
	self.IsAutoClass = nil
	--- @type System_Boolean
	self.IsAutoLayout = nil
	--- @type System_Boolean
	self.IsByRef = nil
	--- @type System_Boolean
	self.IsClass = nil
	--- @type System_Boolean
	self.IsCOMObject = nil
	--- @type System_Boolean
	self.IsContextful = nil
	--- @type System_Boolean
	self.IsEnum = nil
	--- @type System_Boolean
	self.IsExplicitLayout = nil
	--- @type System_Boolean
	self.IsImport = nil
	--- @type System_Boolean
	self.IsInterface = nil
	--- @type System_Boolean
	self.IsLayoutSequential = nil
	--- @type System_Boolean
	self.IsMarshalByRef = nil
	--- @type System_Boolean
	self.IsNestedAssembly = nil
	--- @type System_Boolean
	self.IsNestedFamANDAssem = nil
	--- @type System_Boolean
	self.IsNestedFamily = nil
	--- @type System_Boolean
	self.IsNestedFamORAssem = nil
	--- @type System_Boolean
	self.IsNestedPrivate = nil
	--- @type System_Boolean
	self.IsNestedPublic = nil
	--- @type System_Boolean
	self.IsNotPublic = nil
	--- @type System_Boolean
	self.IsPointer = nil
	--- @type System_Boolean
	self.IsPrimitive = nil
	--- @type System_Boolean
	self.IsPublic = nil
	--- @type System_Boolean
	self.IsSealed = nil
	--- @type System_Boolean
	self.IsSerializable = nil
	--- @type System_Boolean
	self.IsSpecialName = nil
	--- @type System_Boolean
	self.IsUnicodeClass = nil
	--- @type System_Boolean
	self.IsValueType = nil
	--- @type System_Reflection_MemberTypes
	self.MemberType = nil
	--- @type System_Reflection_Module
	self.Module = nil
	--- @type System_String
	self.Namespace = nil
	--- @type System_Type
	self.ReflectedType = nil
	--- @type System_RuntimeTypeHandle
	self.TypeHandle = nil
	--- @type System_Reflection_ConstructorInfo
	self.TypeInitializer = nil
	--- @type System_Type
	self.UnderlyingSystemType = nil
	--- @type System_Boolean
	self.ContainsGenericParameters = nil
	--- @type System_Boolean
	self.IsGenericTypeDefinition = nil
	--- @type System_Boolean
	self.IsGenericType = nil
	--- @type System_Boolean
	self.IsGenericParameter = nil
	--- @type System_Boolean
	self.IsNested = nil
	--- @type System_Boolean
	self.IsVisible = nil
	--- @type System_Int32
	self.GenericParameterPosition = nil
	--- @type System_Reflection_GenericParameterAttributes
	self.GenericParameterAttributes = nil
	--- @type System_Reflection_MethodBase
	self.DeclaringMethod = nil
	--- @type System_Runtime_InteropServices_StructLayoutAttribute
	self.StructLayoutAttribute = nil
	--- @type System_String
	self.Name = nil
	--- @type System_Int32
	self.MetadataToken = nil
	--- @type System_Char
	self.Delimiter = nil
	--- @type System_Type[]
	self.EmptyTypes = nil
	--- @type System_Reflection_MemberFilter
	self.FilterAttribute = nil
	--- @type System_Reflection_MemberFilter
	self.FilterName = nil
	--- @type System_Reflection_MemberFilter
	self.FilterNameIgnoreCase = nil
	--- @type System_Object
	self.Missing = nil
end

--- @return System_Boolean
--- @param o System_Object
function System_Type:Equals(o)
end

--- @return System_Boolean
--- @param o System_Type
function System_Type:Equals(o)
end

--- @return System_Type
--- @param typeName System_String
function System_Type:GetType(typeName)
end

--- @return System_Type
--- @param typeName System_String
--- @param throwOnError System_Boolean
function System_Type:GetType(typeName, throwOnError)
end

--- @return System_Type
--- @param typeName System_String
--- @param throwOnError System_Boolean
--- @param ignoreCase System_Boolean
function System_Type:GetType(typeName, throwOnError, ignoreCase)
end

--- @return System_Type[]
--- @param args System_Object[]
function System_Type:GetTypeArray(args)
end

--- @return System_TypeCode
--- @param type System_Type
function System_Type:GetTypeCode(type)
end

--- @return System_Type
--- @param clsid System_Guid
function System_Type:GetTypeFromCLSID(clsid)
end

--- @return System_Type
--- @param clsid System_Guid
--- @param throwOnError System_Boolean
function System_Type:GetTypeFromCLSID(clsid, throwOnError)
end

--- @return System_Type
--- @param clsid System_Guid
--- @param server System_String
function System_Type:GetTypeFromCLSID(clsid, server)
end

--- @return System_Type
--- @param clsid System_Guid
--- @param server System_String
--- @param throwOnError System_Boolean
function System_Type:GetTypeFromCLSID(clsid, server, throwOnError)
end

--- @return System_Type
--- @param handle System_RuntimeTypeHandle
function System_Type:GetTypeFromHandle(handle)
end

--- @return System_Type
--- @param progID System_String
function System_Type:GetTypeFromProgID(progID)
end

--- @return System_Type
--- @param progID System_String
--- @param throwOnError System_Boolean
function System_Type:GetTypeFromProgID(progID, throwOnError)
end

--- @return System_Type
--- @param progID System_String
--- @param server System_String
function System_Type:GetTypeFromProgID(progID, server)
end

--- @return System_Type
--- @param progID System_String
--- @param server System_String
--- @param throwOnError System_Boolean
function System_Type:GetTypeFromProgID(progID, server, throwOnError)
end

--- @return System_RuntimeTypeHandle
--- @param o System_Object
function System_Type:GetTypeHandle(o)
end

--- @return System_Type
function System_Type:GetType()
end

--- @return System_Boolean
--- @param c System_Type
function System_Type:IsSubclassOf(c)
end

--- @return System_Type[]
--- @param filter System_Reflection_TypeFilter
--- @param filterCriteria System_Object
function System_Type:FindInterfaces(filter, filterCriteria)
end

--- @return System_Type
--- @param name System_String
function System_Type:GetInterface(name)
end

--- @return System_Type
--- @param name System_String
--- @param ignoreCase System_Boolean
function System_Type:GetInterface(name, ignoreCase)
end

--- @return System_Reflection_InterfaceMapping
--- @param interfaceType System_Type
function System_Type:GetInterfaceMap(interfaceType)
end

--- @return System_Type[]
function System_Type:GetInterfaces()
end

--- @return System_Boolean
--- @param c System_Type
function System_Type:IsAssignableFrom(c)
end

--- @return System_Boolean
--- @param o System_Object
function System_Type:IsInstanceOfType(o)
end

--- @return System_Int32
function System_Type:GetArrayRank()
end

--- @return System_Type
function System_Type:GetElementType()
end

--- @return System_Reflection_EventInfo
--- @param name System_String
function System_Type:GetEvent(name)
end

--- @return System_Reflection_EventInfo
--- @param name System_String
--- @param bindingAttr System_Reflection_BindingFlags
function System_Type:GetEvent(name, bindingAttr)
end

--- @return System_Reflection_EventInfo[]
function System_Type:GetEvents()
end

--- @return System_Reflection_EventInfo[]
--- @param bindingAttr System_Reflection_BindingFlags
function System_Type:GetEvents(bindingAttr)
end

--- @return System_Reflection_FieldInfo
--- @param name System_String
function System_Type:GetField(name)
end

--- @return System_Reflection_FieldInfo
--- @param name System_String
--- @param bindingAttr System_Reflection_BindingFlags
function System_Type:GetField(name, bindingAttr)
end

--- @return System_Reflection_FieldInfo[]
function System_Type:GetFields()
end

--- @return System_Reflection_FieldInfo[]
--- @param bindingAttr System_Reflection_BindingFlags
function System_Type:GetFields(bindingAttr)
end

--- @return System_Int32
function System_Type:GetHashCode()
end

--- @return System_Reflection_MemberInfo[]
--- @param name System_String
function System_Type:GetMember(name)
end

--- @return System_Reflection_MemberInfo[]
--- @param name System_String
--- @param bindingAttr System_Reflection_BindingFlags
function System_Type:GetMember(name, bindingAttr)
end

--- @return System_Reflection_MemberInfo[]
--- @param name System_String
--- @param type System_Reflection_MemberTypes
--- @param bindingAttr System_Reflection_BindingFlags
function System_Type:GetMember(name, type, bindingAttr)
end

--- @return System_Reflection_MemberInfo[]
function System_Type:GetMembers()
end

--- @return System_Reflection_MemberInfo[]
--- @param bindingAttr System_Reflection_BindingFlags
function System_Type:GetMembers(bindingAttr)
end

--- @return System_Reflection_MethodInfo
--- @param name System_String
function System_Type:GetMethod(name)
end

--- @return System_Reflection_MethodInfo
--- @param name System_String
--- @param bindingAttr System_Reflection_BindingFlags
function System_Type:GetMethod(name, bindingAttr)
end

--- @return System_Reflection_MethodInfo
--- @param name System_String
--- @param types System_Type[]
function System_Type:GetMethod(name, types)
end

--- @return System_Reflection_MethodInfo
--- @param name System_String
--- @param types System_Type[]
--- @param modifiers System_Reflection_ParameterModifier[]
function System_Type:GetMethod(name, types, modifiers)
end

--- @return System_Reflection_MethodInfo
--- @param name System_String
--- @param bindingAttr System_Reflection_BindingFlags
--- @param binder System_Reflection_Binder
--- @param types System_Type[]
--- @param modifiers System_Reflection_ParameterModifier[]
function System_Type:GetMethod(name, bindingAttr, binder, types, modifiers)
end

--- @return System_Reflection_MethodInfo
--- @param name System_String
--- @param bindingAttr System_Reflection_BindingFlags
--- @param binder System_Reflection_Binder
--- @param callConvention System_Reflection_CallingConventions
--- @param types System_Type[]
--- @param modifiers System_Reflection_ParameterModifier[]
function System_Type:GetMethod(name, bindingAttr, binder, callConvention, types, modifiers)
end

--- @return System_Reflection_MethodInfo[]
function System_Type:GetMethods()
end

--- @return System_Reflection_MethodInfo[]
--- @param bindingAttr System_Reflection_BindingFlags
function System_Type:GetMethods(bindingAttr)
end

--- @return System_Type
--- @param name System_String
function System_Type:GetNestedType(name)
end

--- @return System_Type
--- @param name System_String
--- @param bindingAttr System_Reflection_BindingFlags
function System_Type:GetNestedType(name, bindingAttr)
end

--- @return System_Type[]
function System_Type:GetNestedTypes()
end

--- @return System_Type[]
--- @param bindingAttr System_Reflection_BindingFlags
function System_Type:GetNestedTypes(bindingAttr)
end

--- @return System_Reflection_PropertyInfo[]
function System_Type:GetProperties()
end

--- @return System_Reflection_PropertyInfo[]
--- @param bindingAttr System_Reflection_BindingFlags
function System_Type:GetProperties(bindingAttr)
end

--- @return System_Reflection_PropertyInfo
--- @param name System_String
function System_Type:GetProperty(name)
end

--- @return System_Reflection_PropertyInfo
--- @param name System_String
--- @param bindingAttr System_Reflection_BindingFlags
function System_Type:GetProperty(name, bindingAttr)
end

--- @return System_Reflection_PropertyInfo
--- @param name System_String
--- @param returnType System_Type
function System_Type:GetProperty(name, returnType)
end

--- @return System_Reflection_PropertyInfo
--- @param name System_String
--- @param types System_Type[]
function System_Type:GetProperty(name, types)
end

--- @return System_Reflection_PropertyInfo
--- @param name System_String
--- @param returnType System_Type
--- @param types System_Type[]
function System_Type:GetProperty(name, returnType, types)
end

--- @return System_Reflection_PropertyInfo
--- @param name System_String
--- @param returnType System_Type
--- @param types System_Type[]
--- @param modifiers System_Reflection_ParameterModifier[]
function System_Type:GetProperty(name, returnType, types, modifiers)
end

--- @return System_Reflection_PropertyInfo
--- @param name System_String
--- @param bindingAttr System_Reflection_BindingFlags
--- @param binder System_Reflection_Binder
--- @param returnType System_Type
--- @param types System_Type[]
--- @param modifiers System_Reflection_ParameterModifier[]
function System_Type:GetProperty(name, bindingAttr, binder, returnType, types, modifiers)
end

--- @return System_Reflection_ConstructorInfo
--- @param types System_Type[]
function System_Type:GetConstructor(types)
end

--- @return System_Reflection_ConstructorInfo
--- @param bindingAttr System_Reflection_BindingFlags
--- @param binder System_Reflection_Binder
--- @param types System_Type[]
--- @param modifiers System_Reflection_ParameterModifier[]
function System_Type:GetConstructor(bindingAttr, binder, types, modifiers)
end

--- @return System_Reflection_ConstructorInfo
--- @param bindingAttr System_Reflection_BindingFlags
--- @param binder System_Reflection_Binder
--- @param callConvention System_Reflection_CallingConventions
--- @param types System_Type[]
--- @param modifiers System_Reflection_ParameterModifier[]
function System_Type:GetConstructor(bindingAttr, binder, callConvention, types, modifiers)
end

--- @return System_Reflection_ConstructorInfo[]
function System_Type:GetConstructors()
end

--- @return System_Reflection_ConstructorInfo[]
--- @param bindingAttr System_Reflection_BindingFlags
function System_Type:GetConstructors(bindingAttr)
end

--- @return System_Reflection_MemberInfo[]
function System_Type:GetDefaultMembers()
end

--- @return System_Reflection_MemberInfo[]
--- @param memberType System_Reflection_MemberTypes
--- @param bindingAttr System_Reflection_BindingFlags
--- @param filter System_Reflection_MemberFilter
--- @param filterCriteria System_Object
function System_Type:FindMembers(memberType, bindingAttr, filter, filterCriteria)
end

--- @return System_Object
--- @param name System_String
--- @param invokeAttr System_Reflection_BindingFlags
--- @param binder System_Reflection_Binder
--- @param target System_Object
--- @param args System_Object[]
function System_Type:InvokeMember(name, invokeAttr, binder, target, args)
end

--- @return System_Object
--- @param name System_String
--- @param invokeAttr System_Reflection_BindingFlags
--- @param binder System_Reflection_Binder
--- @param target System_Object
--- @param args System_Object[]
--- @param culture System_Globalization_CultureInfo
function System_Type:InvokeMember(name, invokeAttr, binder, target, args, culture)
end

--- @return System_Object
--- @param name System_String
--- @param invokeAttr System_Reflection_BindingFlags
--- @param binder System_Reflection_Binder
--- @param target System_Object
--- @param args System_Object[]
--- @param modifiers System_Reflection_ParameterModifier[]
--- @param culture System_Globalization_CultureInfo
--- @param namedParameters System_String[]
function System_Type:InvokeMember(name, invokeAttr, binder, target, args, modifiers, culture, namedParameters)
end

--- @return System_String
function System_Type:ToString()
end

--- @return System_Type[]
function System_Type:GetGenericArguments()
end

--- @return System_Type
function System_Type:GetGenericTypeDefinition()
end

--- @return System_Type
--- @param typeArguments System_Type[]
function System_Type:MakeGenericType(typeArguments)
end

--- @return System_Type[]
function System_Type:GetGenericParameterConstraints()
end

--- @return System_Type
function System_Type:MakeArrayType()
end

--- @return System_Type
--- @param rank System_Int32
function System_Type:MakeArrayType(rank)
end

--- @return System_Type
function System_Type:MakeByRefType()
end

--- @return System_Type
function System_Type:MakePointerType()
end

--- @return System_Type
--- @param typeName System_String
--- @param throwIfNotFound System_Boolean
--- @param ignoreCase System_Boolean
function System_Type:ReflectionOnlyGetType(typeName, throwIfNotFound, ignoreCase)
end

--- @return System_Boolean
--- @param attributeType System_Type
--- @param inherit System_Boolean
function System_Type:IsDefined(attributeType, inherit)
end

--- @return System_Object[]
--- @param inherit System_Boolean
function System_Type:GetCustomAttributes(inherit)
end

--- @return System_Object[]
--- @param attributeType System_Type
--- @param inherit System_Boolean
function System_Type:GetCustomAttributes(attributeType, inherit)
end

--- @return System_Type
function System_Type:GetType()
end
