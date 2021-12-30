--- @class UnityEngine_Avatar
UnityEngine_Avatar = Class(UnityEngine_Avatar)

--- @return void
function UnityEngine_Avatar:Ctor()
	--- @type System_Boolean
	self.isValid = nil
	--- @type System_Boolean
	self.isHuman = nil
	--- @type System_String
	self.name = nil
	--- @type UnityEngine_HideFlags
	self.hideFlags = nil
end

--- @return System_Int32
function UnityEngine_Avatar:GetInstanceID()
end

--- @return System_Int32
function UnityEngine_Avatar:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function UnityEngine_Avatar:Equals(other)
end

--- @return System_String
function UnityEngine_Avatar:ToString()
end

--- @return System_Type
function UnityEngine_Avatar:GetType()
end
