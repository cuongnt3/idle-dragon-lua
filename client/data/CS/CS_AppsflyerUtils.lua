--- @class CS_AppsflyerUtils
CS_AppsflyerUtils = Class(CS_AppsflyerUtils)

--- @return void
function CS_AppsflyerUtils:Ctor()
	--- @type System_Boolean
	self.tokenSent = nil
end

--- @return System_Void
--- @param eventName System_String
--- @param eventValues System_Collections_Generic_Dictionary`2[System_String,System_String]
function CS_AppsflyerUtils:TrackingEvent(eventName, eventValues)
end

--- @return System_Void
function CS_AppsflyerUtils:Update()
end

--- @return System_Void
--- @param sender System_Object
--- @param token Firebase_Messaging_TokenReceivedEventArgs
function CS_AppsflyerUtils:OnTokenReceived(sender, token)
end

--- @return System_String
function CS_AppsflyerUtils:GetAppsflyerId()
end

--- @return System_Boolean
--- @param obj System_Object
function CS_AppsflyerUtils:Equals(obj)
end

--- @return System_Int32
function CS_AppsflyerUtils:GetHashCode()
end

--- @return System_Type
function CS_AppsflyerUtils:GetType()
end

--- @return System_String
function CS_AppsflyerUtils:ToString()
end
