--- @class UnityEngine_AssetBundleCreateRequest
UnityEngine_AssetBundleCreateRequest = Class(UnityEngine_AssetBundleCreateRequest)

--- @return void
function UnityEngine_AssetBundleCreateRequest:Ctor()
	--- @type UnityEngine_AssetBundle
	self.assetBundle = nil
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
function UnityEngine_AssetBundleCreateRequest:Equals(obj)
end

--- @return System_Int32
function UnityEngine_AssetBundleCreateRequest:GetHashCode()
end

--- @return System_Type
function UnityEngine_AssetBundleCreateRequest:GetType()
end

--- @return System_String
function UnityEngine_AssetBundleCreateRequest:ToString()
end
