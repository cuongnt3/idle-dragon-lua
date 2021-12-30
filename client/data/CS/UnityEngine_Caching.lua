--- @class UnityEngine_Caching
UnityEngine_Caching = Class(UnityEngine_Caching)

--- @return void
function UnityEngine_Caching:Ctor()
	--- @type System_Boolean
	self.compressionEnabled = nil
	--- @type System_Boolean
	self.ready = nil
	--- @type System_Int32
	self.spaceUsed = nil
	--- @type System_Int64
	self.spaceOccupied = nil
	--- @type System_Int32
	self.spaceAvailable = nil
	--- @type System_Int64
	self.spaceFree = nil
	--- @type System_Int64
	self.maximumAvailableDiskSpace = nil
	--- @type System_Int32
	self.expirationDelay = nil
	--- @type System_Int32
	self.cacheCount = nil
	--- @type UnityEngine_Cache
	self.defaultCache = nil
	--- @type UnityEngine_Cache
	self.currentCacheForWriting = nil
end

--- @return System_Boolean
function UnityEngine_Caching:ClearCache()
end

--- @return System_Boolean
--- @param expiration System_Int32
function UnityEngine_Caching:ClearCache(expiration)
end

--- @return System_Boolean
--- @param assetBundleName System_String
--- @param hash UnityEngine_Hash128
function UnityEngine_Caching:ClearCachedVersion(assetBundleName, hash)
end

--- @return System_Boolean
--- @param assetBundleName System_String
--- @param hash UnityEngine_Hash128
function UnityEngine_Caching:ClearOtherCachedVersions(assetBundleName, hash)
end

--- @return System_Boolean
--- @param assetBundleName System_String
function UnityEngine_Caching:ClearAllCachedVersions(assetBundleName)
end

--- @return System_Void
--- @param assetBundleName System_String
--- @param outCachedVersions System_Collections_Generic_List`1[UnityEngine_Hash128]
function UnityEngine_Caching:GetCachedVersions(assetBundleName, outCachedVersions)
end

--- @return System_Boolean
--- @param url System_String
--- @param version System_Int32
function UnityEngine_Caching:IsVersionCached(url, version)
end

--- @return System_Boolean
--- @param url System_String
--- @param hash UnityEngine_Hash128
function UnityEngine_Caching:IsVersionCached(url, hash)
end

--- @return System_Boolean
--- @param cachedBundle UnityEngine_CachedAssetBundle
function UnityEngine_Caching:IsVersionCached(cachedBundle)
end

--- @return System_Boolean
--- @param url System_String
--- @param version System_Int32
function UnityEngine_Caching:MarkAsUsed(url, version)
end

--- @return System_Boolean
--- @param url System_String
--- @param hash UnityEngine_Hash128
function UnityEngine_Caching:MarkAsUsed(url, hash)
end

--- @return System_Boolean
--- @param cachedBundle UnityEngine_CachedAssetBundle
function UnityEngine_Caching:MarkAsUsed(cachedBundle)
end

--- @return System_Void
--- @param url System_String
--- @param version System_Int32
function UnityEngine_Caching:SetNoBackupFlag(url, version)
end

--- @return System_Void
--- @param url System_String
--- @param hash UnityEngine_Hash128
function UnityEngine_Caching:SetNoBackupFlag(url, hash)
end

--- @return System_Void
--- @param cachedBundle UnityEngine_CachedAssetBundle
function UnityEngine_Caching:SetNoBackupFlag(cachedBundle)
end

--- @return System_Void
--- @param url System_String
--- @param version System_Int32
function UnityEngine_Caching:ResetNoBackupFlag(url, version)
end

--- @return System_Void
--- @param url System_String
--- @param hash UnityEngine_Hash128
function UnityEngine_Caching:ResetNoBackupFlag(url, hash)
end

--- @return System_Void
--- @param cachedBundle UnityEngine_CachedAssetBundle
function UnityEngine_Caching:ResetNoBackupFlag(cachedBundle)
end

--- @return System_Int32
--- @param url System_String
function UnityEngine_Caching:GetVersionFromCache(url)
end

--- @return UnityEngine_Cache
--- @param cachePath System_String
function UnityEngine_Caching:AddCache(cachePath)
end

--- @return UnityEngine_Cache
--- @param cacheIndex System_Int32
function UnityEngine_Caching:GetCacheAt(cacheIndex)
end

--- @return UnityEngine_Cache
--- @param cachePath System_String
function UnityEngine_Caching:GetCacheByPath(cachePath)
end

--- @return System_Void
--- @param cachePaths System_Collections_Generic_List`1[System_String]
function UnityEngine_Caching:GetAllCachePaths(cachePaths)
end

--- @return System_Boolean
--- @param cache UnityEngine_Cache
function UnityEngine_Caching:RemoveCache(cache)
end

--- @return System_Void
--- @param src UnityEngine_Cache
--- @param dst UnityEngine_Cache
function UnityEngine_Caching:MoveCacheBefore(src, dst)
end

--- @return System_Void
--- @param src UnityEngine_Cache
--- @param dst UnityEngine_Cache
function UnityEngine_Caching:MoveCacheAfter(src, dst)
end

--- @return System_Boolean
function UnityEngine_Caching:CleanCache()
end

--- @return System_Boolean
--- @param obj System_Object
function UnityEngine_Caching:Equals(obj)
end

--- @return System_Int32
function UnityEngine_Caching:GetHashCode()
end

--- @return System_Type
function UnityEngine_Caching:GetType()
end

--- @return System_String
function UnityEngine_Caching:ToString()
end
