--- @class UnityEngine_HideFlags
UnityEngine_HideFlags = Class(UnityEngine_HideFlags)

--- @return void
function UnityEngine_HideFlags:Ctor()
	--- @type System_Int32
	self.value__ = nil
	--- @type UnityEngine_HideFlags
	self.None = nil
	--- @type UnityEngine_HideFlags
	self.HideInHierarchy = nil
	--- @type UnityEngine_HideFlags
	self.HideInInspector = nil
	--- @type UnityEngine_HideFlags
	self.DontSaveInEditor = nil
	--- @type UnityEngine_HideFlags
	self.NotEditable = nil
	--- @type UnityEngine_HideFlags
	self.DontSaveInBuild = nil
	--- @type UnityEngine_HideFlags
	self.DontUnloadUnusedAsset = nil
	--- @type UnityEngine_HideFlags
	self.DontSave = nil
	--- @type UnityEngine_HideFlags
	self.HideAndDontSave = nil
end

--- @return System_Boolean
--- @param obj System_Object
function UnityEngine_HideFlags:Equals(obj)
end

--- @return System_Int32
function UnityEngine_HideFlags:GetHashCode()
end

--- @return System_String
function UnityEngine_HideFlags:ToString()
end

--- @return System_String
--- @param format System_String
--- @param provider System_IFormatProvider
function UnityEngine_HideFlags:ToString(format, provider)
end

--- @return System_Int32
--- @param target System_Object
function UnityEngine_HideFlags:CompareTo(target)
end

--- @return System_String
--- @param format System_String
function UnityEngine_HideFlags:ToString(format)
end

--- @return System_String
--- @param provider System_IFormatProvider
function UnityEngine_HideFlags:ToString(provider)
end

--- @return System_Boolean
--- @param flag System_Enum
function UnityEngine_HideFlags:HasFlag(flag)
end

--- @return System_TypeCode
function UnityEngine_HideFlags:GetTypeCode()
end

--- @return System_Type
function UnityEngine_HideFlags:GetType()
end
