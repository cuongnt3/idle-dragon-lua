--- @class CS_IronSrcUtils
CS_IronSrcUtils = Class(CS_IronSrcUtils)

--- @return void
function CS_IronSrcUtils:Ctor()
	--- @type System_Action`2[System_Int32,System_String]
	self.onFailed = nil
	--- @type System_Action`1[System_Int32]
	self.onSuccess = nil
end

--- @return System_Boolean
function CS_IronSrcUtils:IsAvailable()
end

--- @return System_Void
function CS_IronSrcUtils:Show()
end

--- @return System_Boolean
--- @param obj System_Object
function CS_IronSrcUtils:Equals(obj)
end

--- @return System_Int32
function CS_IronSrcUtils:GetHashCode()
end

--- @return System_Type
function CS_IronSrcUtils:GetType()
end

--- @return System_String
function CS_IronSrcUtils:ToString()
end
