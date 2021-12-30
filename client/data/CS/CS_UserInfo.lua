--- @class CS_UserInfo
CS_UserInfo = Class(CS_UserInfo)

--- @return void
function CS_UserInfo:Ctor()
	--- @type System_String
	self.userId = nil
	--- @type System_String
	self.email = nil
	--- @type System_String
	self.displayName = nil
	--- @type System_String
	self.idToken = nil
	--- @type System_String
	self.error = nil
	--- @type CS_UserDetectionStatus
	self.userDetectionStatus = nil
end

--- @return System_Boolean
--- @param obj System_Object
function CS_UserInfo:Equals(obj)
end

--- @return System_Int32
function CS_UserInfo:GetHashCode()
end

--- @return System_String
function CS_UserInfo:ToString()
end

--- @return System_Type
function CS_UserInfo:GetType()
end
