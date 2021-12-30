--- @class System_Reflection_Assembly
System_Reflection_Assembly = Class(System_Reflection_Assembly)

--- @return void
function System_Reflection_Assembly:Ctor()
	--- @type System_String
	self.CodeBase = nil
	--- @type System_String
	self.EscapedCodeBase = nil
	--- @type System_String
	self.FullName = nil
	--- @type System_Reflection_MethodInfo
	self.EntryPoint = nil
	--- @type System_Security_Policy_Evidence
	self.Evidence = nil
	--- @type System_Boolean
	self.GlobalAssemblyCache = nil
	--- @type System_String
	self.Location = nil
	--- @type System_String
	self.ImageRuntimeVersion = nil
	--- @type System_Int64
	self.HostContext = nil
	--- @type System_Reflection_Module
	self.ManifestModule = nil
	--- @type System_Boolean
	self.ReflectionOnly = nil
end

--- @return System_Void
--- @param info System_Runtime_Serialization_SerializationInfo
--- @param context System_Runtime_Serialization_StreamingContext
function System_Reflection_Assembly:GetObjectData(info, context)
end

--- @return System_Boolean
--- @param attributeType System_Type
--- @param inherit System_Boolean
function System_Reflection_Assembly:IsDefined(attributeType, inherit)
end

--- @return System_Object[]
--- @param inherit System_Boolean
function System_Reflection_Assembly:GetCustomAttributes(inherit)
end

--- @return System_Object[]
--- @param attributeType System_Type
--- @param inherit System_Boolean
function System_Reflection_Assembly:GetCustomAttributes(attributeType, inherit)
end

--- @return System_IO_FileStream[]
function System_Reflection_Assembly:GetFiles()
end

--- @return System_IO_FileStream[]
--- @param getResourceModules System_Boolean
function System_Reflection_Assembly:GetFiles(getResourceModules)
end

--- @return System_IO_FileStream
--- @param name System_String
function System_Reflection_Assembly:GetFile(name)
end

--- @return System_IO_Stream
--- @param name System_String
function System_Reflection_Assembly:GetManifestResourceStream(name)
end

--- @return System_IO_Stream
--- @param type System_Type
--- @param name System_String
function System_Reflection_Assembly:GetManifestResourceStream(type, name)
end

--- @return System_Type[]
function System_Reflection_Assembly:GetTypes()
end

--- @return System_Type[]
function System_Reflection_Assembly:GetExportedTypes()
end

--- @return System_Type
--- @param name System_String
--- @param throwOnError System_Boolean
function System_Reflection_Assembly:GetType(name, throwOnError)
end

--- @return System_Type
--- @param name System_String
function System_Reflection_Assembly:GetType(name)
end

--- @return System_Type
--- @param name System_String
--- @param throwOnError System_Boolean
--- @param ignoreCase System_Boolean
function System_Reflection_Assembly:GetType(name, throwOnError, ignoreCase)
end

--- @return System_Reflection_AssemblyName
--- @param copiedName System_Boolean
function System_Reflection_Assembly:GetName(copiedName)
end

--- @return System_Reflection_AssemblyName
function System_Reflection_Assembly:GetName()
end

--- @return System_String
function System_Reflection_Assembly:ToString()
end

--- @return System_String
--- @param assemblyName System_String
--- @param typeName System_String
function System_Reflection_Assembly:CreateQualifiedName(assemblyName, typeName)
end

--- @return System_Reflection_Assembly
--- @param type System_Type
function System_Reflection_Assembly:GetAssembly(type)
end

--- @return System_Reflection_Assembly
function System_Reflection_Assembly:GetEntryAssembly()
end

--- @return System_Reflection_Assembly
--- @param culture System_Globalization_CultureInfo
function System_Reflection_Assembly:GetSatelliteAssembly(culture)
end

--- @return System_Reflection_Assembly
--- @param culture System_Globalization_CultureInfo
--- @param version System_Version
function System_Reflection_Assembly:GetSatelliteAssembly(culture, version)
end

--- @return System_Reflection_Assembly
--- @param assemblyFile System_String
function System_Reflection_Assembly:LoadFrom(assemblyFile)
end

--- @return System_Reflection_Assembly
--- @param assemblyFile System_String
--- @param securityEvidence System_Security_Policy_Evidence
function System_Reflection_Assembly:LoadFrom(assemblyFile, securityEvidence)
end

--- @return System_Reflection_Assembly
--- @param assemblyFile System_String
--- @param securityEvidence System_Security_Policy_Evidence
--- @param hashValue System_Byte[]
--- @param hashAlgorithm System_Configuration_Assemblies_AssemblyHashAlgorithm
function System_Reflection_Assembly:LoadFrom(assemblyFile, securityEvidence, hashValue, hashAlgorithm)
end

--- @return System_Reflection_Assembly
--- @param path System_String
--- @param securityEvidence System_Security_Policy_Evidence
function System_Reflection_Assembly:LoadFile(path, securityEvidence)
end

--- @return System_Reflection_Assembly
--- @param path System_String
function System_Reflection_Assembly:LoadFile(path)
end

--- @return System_Reflection_Assembly
--- @param assemblyString System_String
function System_Reflection_Assembly:Load(assemblyString)
end

--- @return System_Reflection_Assembly
--- @param assemblyString System_String
--- @param assemblySecurity System_Security_Policy_Evidence
function System_Reflection_Assembly:Load(assemblyString, assemblySecurity)
end

--- @return System_Reflection_Assembly
--- @param assemblyRef System_Reflection_AssemblyName
function System_Reflection_Assembly:Load(assemblyRef)
end

--- @return System_Reflection_Assembly
--- @param assemblyRef System_Reflection_AssemblyName
--- @param assemblySecurity System_Security_Policy_Evidence
function System_Reflection_Assembly:Load(assemblyRef, assemblySecurity)
end

--- @return System_Reflection_Assembly
--- @param rawAssembly System_Byte[]
function System_Reflection_Assembly:Load(rawAssembly)
end

--- @return System_Reflection_Assembly
--- @param rawAssembly System_Byte[]
--- @param rawSymbolStore System_Byte[]
function System_Reflection_Assembly:Load(rawAssembly, rawSymbolStore)
end

--- @return System_Reflection_Assembly
--- @param rawAssembly System_Byte[]
--- @param rawSymbolStore System_Byte[]
--- @param securityEvidence System_Security_Policy_Evidence
function System_Reflection_Assembly:Load(rawAssembly, rawSymbolStore, securityEvidence)
end

--- @return System_Reflection_Assembly
--- @param rawAssembly System_Byte[]
function System_Reflection_Assembly:ReflectionOnlyLoad(rawAssembly)
end

--- @return System_Reflection_Assembly
--- @param assemblyString System_String
function System_Reflection_Assembly:ReflectionOnlyLoad(assemblyString)
end

--- @return System_Reflection_Assembly
--- @param assemblyFile System_String
function System_Reflection_Assembly:ReflectionOnlyLoadFrom(assemblyFile)
end

--- @return System_Reflection_Assembly
--- @param partialName System_String
function System_Reflection_Assembly:LoadWithPartialName(partialName)
end

--- @return System_Reflection_Module
--- @param moduleName System_String
--- @param rawModule System_Byte[]
function System_Reflection_Assembly:LoadModule(moduleName, rawModule)
end

--- @return System_Reflection_Module
--- @param moduleName System_String
--- @param rawModule System_Byte[]
--- @param rawSymbolStore System_Byte[]
function System_Reflection_Assembly:LoadModule(moduleName, rawModule, rawSymbolStore)
end

--- @return System_Reflection_Assembly
--- @param partialName System_String
--- @param securityEvidence System_Security_Policy_Evidence
function System_Reflection_Assembly:LoadWithPartialName(partialName, securityEvidence)
end

--- @return System_Object
--- @param typeName System_String
function System_Reflection_Assembly:CreateInstance(typeName)
end

--- @return System_Object
--- @param typeName System_String
--- @param ignoreCase System_Boolean
function System_Reflection_Assembly:CreateInstance(typeName, ignoreCase)
end

--- @return System_Object
--- @param typeName System_String
--- @param ignoreCase System_Boolean
--- @param bindingAttr System_Reflection_BindingFlags
--- @param binder System_Reflection_Binder
--- @param args System_Object[]
--- @param culture System_Globalization_CultureInfo
--- @param activationAttributes System_Object[]
function System_Reflection_Assembly:CreateInstance(typeName, ignoreCase, bindingAttr, binder, args, culture, activationAttributes)
end

--- @return System_Reflection_Module[]
function System_Reflection_Assembly:GetLoadedModules()
end

--- @return System_Reflection_Module[]
--- @param getResourceModules System_Boolean
function System_Reflection_Assembly:GetLoadedModules(getResourceModules)
end

--- @return System_Reflection_Module[]
function System_Reflection_Assembly:GetModules()
end

--- @return System_Reflection_Module
--- @param name System_String
function System_Reflection_Assembly:GetModule(name)
end

--- @return System_Reflection_Module[]
--- @param getResourceModules System_Boolean
function System_Reflection_Assembly:GetModules(getResourceModules)
end

--- @return System_String[]
function System_Reflection_Assembly:GetManifestResourceNames()
end

--- @return System_Reflection_Assembly
function System_Reflection_Assembly:GetExecutingAssembly()
end

--- @return System_Reflection_Assembly
function System_Reflection_Assembly:GetCallingAssembly()
end

--- @return System_Reflection_AssemblyName[]
function System_Reflection_Assembly:GetReferencedAssemblies()
end

--- @return System_Reflection_ManifestResourceInfo
--- @param resourceName System_String
function System_Reflection_Assembly:GetManifestResourceInfo(resourceName)
end

--- @return System_Boolean
--- @param obj System_Object
function System_Reflection_Assembly:Equals(obj)
end

--- @return System_Int32
function System_Reflection_Assembly:GetHashCode()
end

--- @return System_Type
function System_Reflection_Assembly:GetType()
end
