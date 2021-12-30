--- @class CS_AssetBundleInfo
CS_AssetBundleInfo = Class(CS_AssetBundleInfo)

--- @return void
function CS_AssetBundleInfo:Ctor()
	--- @type System_String
	self.name = nil
	--- @type System_String
	self.hash = nil
	--- @type System_UInt64
	self.size = nil
	--- @type System_Int32
	self.patch = nil
	--- @type UnityEngine_AssetBundle
	self.bundle = nil
	--- @type System_Collections_Generic_List`1[System_String]
	self.dependencies = nil
	--- @type System_Collections_Generic_List`1[System_String]
	self.assets = nil
end

--- @return System_String
function CS_AssetBundleInfo:ToString()
end

--- @return System_Boolean
--- @param obj System_Object
function CS_AssetBundleInfo:Equals(obj)
end

--- @return System_Int32
function CS_AssetBundleInfo:GetHashCode()
end

--- @return System_Type
function CS_AssetBundleInfo:GetType()
end
