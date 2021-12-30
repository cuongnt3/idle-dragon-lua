--- @class UnityEngine_GUISkin
UnityEngine_GUISkin = Class(UnityEngine_GUISkin)

--- @return void
function UnityEngine_GUISkin:Ctor()
	--- @type UnityEngine_Font
	self.font = nil
	--- @type UnityEngine_GUIStyle
	self.box = nil
	--- @type UnityEngine_GUIStyle
	self.label = nil
	--- @type UnityEngine_GUIStyle
	self.textField = nil
	--- @type UnityEngine_GUIStyle
	self.textArea = nil
	--- @type UnityEngine_GUIStyle
	self.button = nil
	--- @type UnityEngine_GUIStyle
	self.toggle = nil
	--- @type UnityEngine_GUIStyle
	self.window = nil
	--- @type UnityEngine_GUIStyle
	self.horizontalSlider = nil
	--- @type UnityEngine_GUIStyle
	self.horizontalSliderThumb = nil
	--- @type UnityEngine_GUIStyle
	self.verticalSlider = nil
	--- @type UnityEngine_GUIStyle
	self.verticalSliderThumb = nil
	--- @type UnityEngine_GUIStyle
	self.horizontalScrollbar = nil
	--- @type UnityEngine_GUIStyle
	self.horizontalScrollbarThumb = nil
	--- @type UnityEngine_GUIStyle
	self.horizontalScrollbarLeftButton = nil
	--- @type UnityEngine_GUIStyle
	self.horizontalScrollbarRightButton = nil
	--- @type UnityEngine_GUIStyle
	self.verticalScrollbar = nil
	--- @type UnityEngine_GUIStyle
	self.verticalScrollbarThumb = nil
	--- @type UnityEngine_GUIStyle
	self.verticalScrollbarUpButton = nil
	--- @type UnityEngine_GUIStyle
	self.verticalScrollbarDownButton = nil
	--- @type UnityEngine_GUIStyle
	self.scrollView = nil
	--- @type UnityEngine_GUIStyle[]
	self.customStyles = nil
	--- @type UnityEngine_GUISettings
	self.settings = nil
	--- @type System_String
	self.name = nil
	--- @type UnityEngine_HideFlags
	self.hideFlags = nil
end

--- @return UnityEngine_GUIStyle
--- @param styleName System_String
function UnityEngine_GUISkin:GetStyle(styleName)
end

--- @return UnityEngine_GUIStyle
--- @param styleName System_String
function UnityEngine_GUISkin:FindStyle(styleName)
end

--- @return System_Collections_IEnumerator
function UnityEngine_GUISkin:GetEnumerator()
end

--- @return System_Void
function UnityEngine_GUISkin:SetDirty()
end

--- @return System_Int32
function UnityEngine_GUISkin:GetInstanceID()
end

--- @return System_Int32
function UnityEngine_GUISkin:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function UnityEngine_GUISkin:Equals(other)
end

--- @return System_String
function UnityEngine_GUISkin:ToString()
end

--- @return System_Type
function UnityEngine_GUISkin:GetType()
end
