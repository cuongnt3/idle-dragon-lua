--- @class CS_ResourcesLoader
CS_ResourcesLoader = Class(CS_ResourcesLoader)

--- @return void
function CS_ResourcesLoader:Ctor()
end

--- @return System_Void
function CS_ResourcesLoader:ClearBundleDetails()
end

--- @return System_Void
--- @param name System_String
--- @param bundleInfo CS_AssetBundleInfo
function CS_ResourcesLoader:AddBundleDetails(name, bundleInfo)
end

--- @return UnityEngine_AssetBundle
--- @param assetBundleName System_String
function CS_ResourcesLoader:LoadAssetBundle(assetBundleName)
end

--- @return CS_T
--- @param assetBundleName System_String
--- @param assetName System_String
function CS_ResourcesLoader:Load(assetBundleName, assetName)
end

--- @return UnityEngine_Object
--- @param assetBundleName System_String
--- @param assetName System_String
--- @param systemTypeInstance System_Type
function CS_ResourcesLoader:Load(assetBundleName, assetName, systemTypeInstance)
end

--- @return System_Void
function CS_ResourcesLoader:ClearMemoryCachedAssetBundle()
end

--- @return System_Void
--- @param assetBundleName System_String
function CS_ResourcesLoader:ClearMemoryCachedAssetBundle(assetBundleName)
end

--- @return System_Boolean
--- @param obj System_Object
function CS_ResourcesLoader:Equals(obj)
end

--- @return System_Int32
function CS_ResourcesLoader:GetHashCode()
end

--- @return System_Type
function CS_ResourcesLoader:GetType()
end

--- @return System_String
function CS_ResourcesLoader:ToString()
end
