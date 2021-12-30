--- @class CS_AssetBundleMgr
CS_AssetBundleMgr = Class(CS_AssetBundleMgr)

--- @return void
function CS_AssetBundleMgr:Ctor()
end

--- @return System_String
function CS_AssetBundleMgr:GetStorableDirectory()
end

--- @return System_Void
function CS_AssetBundleMgr:ClearCache()
end

--- @return System_Void
--- @param path System_String
function CS_AssetBundleMgr:DeleteFile(path)
end

--- @return System_String[]
function CS_AssetBundleMgr:GetCurrentFiles()
end

--- @return System_Boolean
--- @param name System_String
function CS_AssetBundleMgr:Exists(name)
end

--- @return System_Void
--- @param url System_String
--- @param onSuccess System_Action
--- @param onFailed System_Action`1[System_String]
function CS_AssetBundleMgr:Download(url, onSuccess, onFailed)
end

--- @return UnityEngine_AssetBundle
--- @param name System_String
function CS_AssetBundleMgr:LoadBundleFromStreamingAsset(name)
end

--- @return UnityEngine_AssetBundleCreateRequest
--- @param name System_String
function CS_AssetBundleMgr:LoadBundleAsyncFromStreamingAsset(name)
end

--- @return System_Boolean
--- @param obj System_Object
function CS_AssetBundleMgr:Equals(obj)
end

--- @return System_Int32
function CS_AssetBundleMgr:GetHashCode()
end

--- @return System_Type
function CS_AssetBundleMgr:GetType()
end

--- @return System_String
function CS_AssetBundleMgr:ToString()
end
