--- @class CS_BetterStreamingAssets
CS_BetterStreamingAssets = Class(CS_BetterStreamingAssets)

--- @return void
function CS_BetterStreamingAssets:Ctor()
	--- @type System_String
	self.Root = nil
end

--- @return System_Void
function CS_BetterStreamingAssets:Initialize()
end

--- @return System_Boolean
--- @param path System_String
function CS_BetterStreamingAssets:FileExists(path)
end

--- @return System_Boolean
--- @param path System_String
function CS_BetterStreamingAssets:DirectoryExists(path)
end

--- @return UnityEngine_AssetBundleCreateRequest
--- @param path System_String
--- @param crc System_UInt32
function CS_BetterStreamingAssets:LoadAssetBundleAsync(path, crc)
end

--- @return UnityEngine_AssetBundle
--- @param path System_String
--- @param crc System_UInt32
function CS_BetterStreamingAssets:LoadAssetBundle(path, crc)
end

--- @return System_IO_Stream
--- @param path System_String
function CS_BetterStreamingAssets:OpenRead(path)
end

--- @return System_IO_StreamReader
--- @param path System_String
function CS_BetterStreamingAssets:OpenText(path)
end

--- @return System_String
--- @param path System_String
function CS_BetterStreamingAssets:ReadAllText(path)
end

--- @return System_String[]
--- @param path System_String
function CS_BetterStreamingAssets:ReadAllLines(path)
end

--- @return System_Byte[]
--- @param path System_String
function CS_BetterStreamingAssets:ReadAllBytes(path)
end

--- @return System_String[]
--- @param path System_String
--- @param searchPattern System_String
--- @param searchOption System_IO_SearchOption
function CS_BetterStreamingAssets:GetFiles(path, searchPattern, searchOption)
end

--- @return System_String[]
--- @param path System_String
function CS_BetterStreamingAssets:GetFiles(path)
end

--- @return System_String[]
--- @param path System_String
--- @param searchPattern System_String
function CS_BetterStreamingAssets:GetFiles(path, searchPattern)
end

--- @return System_Boolean
--- @param obj System_Object
function CS_BetterStreamingAssets:Equals(obj)
end

--- @return System_Int32
function CS_BetterStreamingAssets:GetHashCode()
end

--- @return System_Type
function CS_BetterStreamingAssets:GetType()
end

--- @return System_String
function CS_BetterStreamingAssets:ToString()
end
