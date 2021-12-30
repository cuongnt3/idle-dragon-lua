--- @class UnityEngine_AssetBundleRequest
UnityEngine_AssetBundleRequest = Class(UnityEngine_AssetBundleRequest)

--- @return void
function UnityEngine_AssetBundleRequest:Ctor()
	--- @type UnityEngine_Object
	self.asset = nil
	--- @type UnityEngine_Object[]
	self.allAssets = nil
	--- @type System_Boolean
	self.isDone = nil
	--- @type System_Single
	self.progress = nil
	--- @type System_Int32
	self.priority = nil
	--- @type System_Boolean
	self.allowSceneActivation = nil
end

--- @return System_Boolean
--- @param obj System_Object
function UnityEngine_AssetBundleRequest:Equals(obj)
end

--- @return System_Int32
function UnityEngine_AssetBundleRequest:GetHashCode()
end

--- @return System_Type
function UnityEngine_AssetBundleRequest:GetType()
end

--- @return System_String
function UnityEngine_AssetBundleRequest:ToString()
end
