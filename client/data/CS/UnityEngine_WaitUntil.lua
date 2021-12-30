--- @class UnityEngine_WaitUntil
UnityEngine_WaitUntil = Class(UnityEngine_WaitUntil)

--- @return void
function UnityEngine_WaitUntil:Ctor()
	--- @type System_Boolean
	self.keepWaiting = nil
	--- @type System_Object
	self.Current = nil
end

--- @return System_Boolean
function UnityEngine_WaitUntil:MoveNext()
end

--- @return System_Void
function UnityEngine_WaitUntil:Reset()
end

--- @return System_Boolean
--- @param obj System_Object
function UnityEngine_WaitUntil:Equals(obj)
end

--- @return System_Int32
function UnityEngine_WaitUntil:GetHashCode()
end

--- @return System_Type
function UnityEngine_WaitUntil:GetType()
end

--- @return System_String
function UnityEngine_WaitUntil:ToString()
end
