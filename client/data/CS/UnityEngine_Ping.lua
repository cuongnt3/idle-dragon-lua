--- @class UnityEngine_Ping
UnityEngine_Ping = Class(UnityEngine_Ping)

--- @return void
function UnityEngine_Ping:Ctor()
	--- @type System_Boolean
	self.isDone = nil
	--- @type System_Int32
	self.time = nil
	--- @type System_String
	self.ip = nil
end

--- @return System_Void
function UnityEngine_Ping:DestroyPing()
end

--- @return System_Boolean
--- @param obj System_Object
function UnityEngine_Ping:Equals(obj)
end

--- @return System_Int32
function UnityEngine_Ping:GetHashCode()
end

--- @return System_Type
function UnityEngine_Ping:GetType()
end

--- @return System_String
function UnityEngine_Ping:ToString()
end
