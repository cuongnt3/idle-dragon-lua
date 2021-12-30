--- @class UnityEngine_Resources
UnityEngine_Resources = Class(UnityEngine_Resources)

--- @return void
function UnityEngine_Resources:Ctor()
end

--- @return UnityEngine_Object[]
--- @param type System_Type
function UnityEngine_Resources:FindObjectsOfTypeAll(type)
end

--- @return CS_T[]
function UnityEngine_Resources:FindObjectsOfTypeAll()
end

--- @return UnityEngine_Object
--- @param path System_String
function UnityEngine_Resources:Load(path)
end

--- @return CS_T
--- @param path System_String
function UnityEngine_Resources:Load(path)
end

--- @return UnityEngine_Object
--- @param path System_String
--- @param systemTypeInstance System_Type
function UnityEngine_Resources:Load(path, systemTypeInstance)
end

--- @return UnityEngine_ResourceRequest
--- @param path System_String
function UnityEngine_Resources:LoadAsync(path)
end

--- @return UnityEngine_ResourceRequest
--- @param path System_String
function UnityEngine_Resources:LoadAsync(path)
end

--- @return UnityEngine_ResourceRequest
--- @param path System_String
--- @param type System_Type
function UnityEngine_Resources:LoadAsync(path, type)
end

--- @return UnityEngine_Object[]
--- @param path System_String
--- @param systemTypeInstance System_Type
function UnityEngine_Resources:LoadAll(path, systemTypeInstance)
end

--- @return UnityEngine_Object[]
--- @param path System_String
function UnityEngine_Resources:LoadAll(path)
end

--- @return CS_T[]
--- @param path System_String
function UnityEngine_Resources:LoadAll(path)
end

--- @return UnityEngine_Object
--- @param type System_Type
--- @param path System_String
function UnityEngine_Resources:GetBuiltinResource(type, path)
end

--- @return CS_T
--- @param path System_String
function UnityEngine_Resources:GetBuiltinResource(path)
end

--- @return System_Void
--- @param assetToUnload UnityEngine_Object
function UnityEngine_Resources:UnloadAsset(assetToUnload)
end

--- @return UnityEngine_AsyncOperation
function UnityEngine_Resources:UnloadUnusedAssets()
end

--- @return UnityEngine_Object
--- @param assetPath System_String
--- @param type System_Type
function UnityEngine_Resources:LoadAssetAtPath(assetPath, type)
end

--- @return CS_T
--- @param assetPath System_String
function UnityEngine_Resources:LoadAssetAtPath(assetPath)
end

--- @return System_Boolean
--- @param obj System_Object
function UnityEngine_Resources:Equals(obj)
end

--- @return System_Int32
function UnityEngine_Resources:GetHashCode()
end

--- @return System_Type
function UnityEngine_Resources:GetType()
end

--- @return System_String
function UnityEngine_Resources:ToString()
end
