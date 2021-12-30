--- @class UnityEngine_AssetBundle
UnityEngine_AssetBundle = Class(UnityEngine_AssetBundle)

--- @return void
function UnityEngine_AssetBundle:Ctor()
	--- @type UnityEngine_Object
	self.mainAsset = nil
	--- @type System_Boolean
	self.isStreamedSceneAssetBundle = nil
	--- @type System_String
	self.name = nil
	--- @type UnityEngine_HideFlags
	self.hideFlags = nil
end

--- @return System_Void
--- @param unloadAllObjects System_Boolean
function UnityEngine_AssetBundle:UnloadAllAssetBundles(unloadAllObjects)
end

--- @return System_Collections_Generic_IEnumerable`1[UnityEngine_AssetBundle]
function UnityEngine_AssetBundle:GetAllLoadedAssetBundles()
end

--- @return UnityEngine_AssetBundleCreateRequest
--- @param path System_String
function UnityEngine_AssetBundle:LoadFromFileAsync(path)
end

--- @return UnityEngine_AssetBundleCreateRequest
--- @param path System_String
--- @param crc System_UInt32
function UnityEngine_AssetBundle:LoadFromFileAsync(path, crc)
end

--- @return UnityEngine_AssetBundleCreateRequest
--- @param path System_String
--- @param crc System_UInt32
--- @param offset System_UInt64
function UnityEngine_AssetBundle:LoadFromFileAsync(path, crc, offset)
end

--- @return UnityEngine_AssetBundle
--- @param path System_String
function UnityEngine_AssetBundle:LoadFromFile(path)
end

--- @return UnityEngine_AssetBundle
--- @param path System_String
--- @param crc System_UInt32
function UnityEngine_AssetBundle:LoadFromFile(path, crc)
end

--- @return UnityEngine_AssetBundle
--- @param path System_String
--- @param crc System_UInt32
--- @param offset System_UInt64
function UnityEngine_AssetBundle:LoadFromFile(path, crc, offset)
end

--- @return UnityEngine_AssetBundleCreateRequest
--- @param binary System_Byte[]
function UnityEngine_AssetBundle:LoadFromMemoryAsync(binary)
end

--- @return UnityEngine_AssetBundleCreateRequest
--- @param binary System_Byte[]
--- @param crc System_UInt32
function UnityEngine_AssetBundle:LoadFromMemoryAsync(binary, crc)
end

--- @return UnityEngine_AssetBundle
--- @param binary System_Byte[]
function UnityEngine_AssetBundle:LoadFromMemory(binary)
end

--- @return UnityEngine_AssetBundle
--- @param binary System_Byte[]
--- @param crc System_UInt32
function UnityEngine_AssetBundle:LoadFromMemory(binary, crc)
end

--- @return UnityEngine_AssetBundleCreateRequest
--- @param stream System_IO_Stream
--- @param crc System_UInt32
--- @param managedReadBufferSize System_UInt32
function UnityEngine_AssetBundle:LoadFromStreamAsync(stream, crc, managedReadBufferSize)
end

--- @return UnityEngine_AssetBundleCreateRequest
--- @param stream System_IO_Stream
--- @param crc System_UInt32
function UnityEngine_AssetBundle:LoadFromStreamAsync(stream, crc)
end

--- @return UnityEngine_AssetBundleCreateRequest
--- @param stream System_IO_Stream
function UnityEngine_AssetBundle:LoadFromStreamAsync(stream)
end

--- @return UnityEngine_AssetBundle
--- @param stream System_IO_Stream
--- @param crc System_UInt32
--- @param managedReadBufferSize System_UInt32
function UnityEngine_AssetBundle:LoadFromStream(stream, crc, managedReadBufferSize)
end

--- @return UnityEngine_AssetBundle
--- @param stream System_IO_Stream
--- @param crc System_UInt32
function UnityEngine_AssetBundle:LoadFromStream(stream, crc)
end

--- @return UnityEngine_AssetBundle
--- @param stream System_IO_Stream
function UnityEngine_AssetBundle:LoadFromStream(stream)
end

--- @return System_Boolean
--- @param name System_String
function UnityEngine_AssetBundle:Contains(name)
end

--- @return UnityEngine_Object
--- @param name System_String
function UnityEngine_AssetBundle:Load(name)
end

--- @return UnityEngine_Object
--- @param name System_String
function UnityEngine_AssetBundle:Load(name)
end

--- @return UnityEngine_Object[]
function UnityEngine_AssetBundle:LoadAll()
end

--- @return CS_T[]
function UnityEngine_AssetBundle:LoadAll()
end

--- @return UnityEngine_Object
--- @param name System_String
function UnityEngine_AssetBundle:LoadAsset(name)
end

--- @return CS_T
--- @param name System_String
function UnityEngine_AssetBundle:LoadAsset(name)
end

--- @return UnityEngine_Object
--- @param name System_String
--- @param type System_Type
function UnityEngine_AssetBundle:LoadAsset(name, type)
end

--- @return UnityEngine_AssetBundleRequest
--- @param name System_String
function UnityEngine_AssetBundle:LoadAssetAsync(name)
end

--- @return UnityEngine_AssetBundleRequest
--- @param name System_String
function UnityEngine_AssetBundle:LoadAssetAsync(name)
end

--- @return UnityEngine_AssetBundleRequest
--- @param name System_String
--- @param type System_Type
function UnityEngine_AssetBundle:LoadAssetAsync(name, type)
end

--- @return UnityEngine_Object[]
--- @param name System_String
function UnityEngine_AssetBundle:LoadAssetWithSubAssets(name)
end

--- @return CS_T[]
--- @param name System_String
function UnityEngine_AssetBundle:LoadAssetWithSubAssets(name)
end

--- @return UnityEngine_Object[]
--- @param name System_String
--- @param type System_Type
function UnityEngine_AssetBundle:LoadAssetWithSubAssets(name, type)
end

--- @return UnityEngine_AssetBundleRequest
--- @param name System_String
function UnityEngine_AssetBundle:LoadAssetWithSubAssetsAsync(name)
end

--- @return UnityEngine_AssetBundleRequest
--- @param name System_String
function UnityEngine_AssetBundle:LoadAssetWithSubAssetsAsync(name)
end

--- @return UnityEngine_AssetBundleRequest
--- @param name System_String
--- @param type System_Type
function UnityEngine_AssetBundle:LoadAssetWithSubAssetsAsync(name, type)
end

--- @return UnityEngine_Object[]
function UnityEngine_AssetBundle:LoadAllAssets()
end

--- @return CS_T[]
function UnityEngine_AssetBundle:LoadAllAssets()
end

--- @return UnityEngine_Object[]
--- @param type System_Type
function UnityEngine_AssetBundle:LoadAllAssets(type)
end

--- @return UnityEngine_AssetBundleRequest
function UnityEngine_AssetBundle:LoadAllAssetsAsync()
end

--- @return UnityEngine_AssetBundleRequest
function UnityEngine_AssetBundle:LoadAllAssetsAsync()
end

--- @return UnityEngine_AssetBundleRequest
--- @param type System_Type
function UnityEngine_AssetBundle:LoadAllAssetsAsync(type)
end

--- @return System_String[]
function UnityEngine_AssetBundle:AllAssetNames()
end

--- @return System_Void
--- @param unloadAllLoadedObjects System_Boolean
function UnityEngine_AssetBundle:Unload(unloadAllLoadedObjects)
end

--- @return System_String[]
function UnityEngine_AssetBundle:GetAllAssetNames()
end

--- @return System_String[]
function UnityEngine_AssetBundle:GetAllScenePaths()
end

--- @return UnityEngine_AssetBundle
--- @param path System_String
function UnityEngine_AssetBundle:CreateFromFile(path)
end

--- @return UnityEngine_AssetBundleCreateRequest
--- @param binary System_Byte[]
function UnityEngine_AssetBundle:CreateFromMemory(binary)
end

--- @return UnityEngine_AssetBundle
--- @param binary System_Byte[]
function UnityEngine_AssetBundle:CreateFromMemoryImmediate(binary)
end

--- @return System_Int32
function UnityEngine_AssetBundle:GetInstanceID()
end

--- @return System_Int32
function UnityEngine_AssetBundle:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function UnityEngine_AssetBundle:Equals(other)
end

--- @return System_String
function UnityEngine_AssetBundle:ToString()
end

--- @return System_Type
function UnityEngine_AssetBundle:GetType()
end
