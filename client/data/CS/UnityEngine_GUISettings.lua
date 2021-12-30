--- @class UnityEngine_GUISettings
UnityEngine_GUISettings = Class(UnityEngine_GUISettings)

--- @return void
function UnityEngine_GUISettings:Ctor()
	--- @type System_Boolean
	self.doubleClickSelectsWord = nil
	--- @type System_Boolean
	self.tripleClickSelectsLine = nil
	--- @type UnityEngine_Color
	self.cursorColor = nil
	--- @type System_Single
	self.cursorFlashSpeed = nil
	--- @type UnityEngine_Color
	self.selectionColor = nil
end

--- @return System_Boolean
--- @param obj System_Object
function UnityEngine_GUISettings:Equals(obj)
end

--- @return System_Int32
function UnityEngine_GUISettings:GetHashCode()
end

--- @return System_Type
function UnityEngine_GUISettings:GetType()
end

--- @return System_String
function UnityEngine_GUISettings:ToString()
end
