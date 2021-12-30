--- @class UnityEngine_GUIStyleState
UnityEngine_GUIStyleState = Class(UnityEngine_GUIStyleState)

--- @return void
function UnityEngine_GUIStyleState:Ctor()
	--- @type UnityEngine_Texture2D
	self.background = nil
	--- @type UnityEngine_Color
	self.textColor = nil
	--- @type UnityEngine_Texture2D[]
	self.scaledBackgrounds = nil
end

--- @return System_Boolean
--- @param obj System_Object
function UnityEngine_GUIStyleState:Equals(obj)
end

--- @return System_Int32
function UnityEngine_GUIStyleState:GetHashCode()
end

--- @return System_Type
function UnityEngine_GUIStyleState:GetType()
end

--- @return System_String
function UnityEngine_GUIStyleState:ToString()
end
