--- @class CS_BundleManifest
CS_BundleManifest = Class(CS_BundleManifest)

--- @return void
function CS_BundleManifest:Ctor()
	--- @type System_UInt32
	self.patch = nil
	--- @type System_String
	self.version = nil
	--- @type System_Collections_Generic_List`1[AssetBundleInfo]
	self.bundles = nil
end

--- @return System_Boolean
--- @param obj System_Object
function CS_BundleManifest:Equals(obj)
end

--- @return System_Int32
function CS_BundleManifest:GetHashCode()
end

--- @return System_Type
function CS_BundleManifest:GetType()
end

--- @return System_String
function CS_BundleManifest:ToString()
end
