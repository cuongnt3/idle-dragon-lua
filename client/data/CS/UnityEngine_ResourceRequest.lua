--- @class UnityEngine_ResourceRequest
UnityEngine_ResourceRequest = Class(UnityEngine_ResourceRequest)

--- @return void
function UnityEngine_ResourceRequest:Ctor()
	--- @type UnityEngine_Object
	self.asset = nil
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
function UnityEngine_ResourceRequest:Equals(obj)
end

--- @return System_Int32
function UnityEngine_ResourceRequest:GetHashCode()
end

--- @return System_Type
function UnityEngine_ResourceRequest:GetType()
end

--- @return System_String
function UnityEngine_ResourceRequest:ToString()
end
