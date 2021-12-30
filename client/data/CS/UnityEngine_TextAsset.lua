--- @class UnityEngine_TextAsset
UnityEngine_TextAsset = Class(UnityEngine_TextAsset)

--- @return void
function UnityEngine_TextAsset:Ctor()
	--- @type System_String
	self.text = nil
	--- @type System_Byte[]
	self.bytes = nil
	--- @type System_String
	self.name = nil
	--- @type UnityEngine_HideFlags
	self.hideFlags = nil
end

--- @return System_String
function UnityEngine_TextAsset:ToString()
end

--- @return System_Int32
function UnityEngine_TextAsset:GetInstanceID()
end

--- @return System_Int32
function UnityEngine_TextAsset:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function UnityEngine_TextAsset:Equals(other)
end

--- @return System_Type
function UnityEngine_TextAsset:GetType()
end
