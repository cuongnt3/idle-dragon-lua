--- @class UnityEngine_GUIStyle
UnityEngine_GUIStyle = Class(UnityEngine_GUIStyle)

--- @return void
function UnityEngine_GUIStyle:Ctor()
	--- @type System_String
	self.name = nil
	--- @type UnityEngine_Font
	self.font = nil
	--- @type UnityEngine_ImagePosition
	self.imagePosition = nil
	--- @type UnityEngine_TextAnchor
	self.alignment = nil
	--- @type System_Boolean
	self.wordWrap = nil
	--- @type UnityEngine_TextClipping
	self.clipping = nil
	--- @type UnityEngine_Vector2
	self.contentOffset = nil
	--- @type System_Single
	self.fixedWidth = nil
	--- @type System_Single
	self.fixedHeight = nil
	--- @type System_Boolean
	self.stretchWidth = nil
	--- @type System_Boolean
	self.stretchHeight = nil
	--- @type System_Int32
	self.fontSize = nil
	--- @type UnityEngine_FontStyle
	self.fontStyle = nil
	--- @type System_Boolean
	self.richText = nil
	--- @type UnityEngine_Vector2
	self.clipOffset = nil
	--- @type UnityEngine_GUIStyleState
	self.normal = nil
	--- @type UnityEngine_GUIStyleState
	self.hover = nil
	--- @type UnityEngine_GUIStyleState
	self.active = nil
	--- @type UnityEngine_GUIStyleState
	self.onNormal = nil
	--- @type UnityEngine_GUIStyleState
	self.onHover = nil
	--- @type UnityEngine_GUIStyleState
	self.onActive = nil
	--- @type UnityEngine_GUIStyleState
	self.focused = nil
	--- @type UnityEngine_GUIStyleState
	self.onFocused = nil
	--- @type UnityEngine_RectOffset
	self.border = nil
	--- @type UnityEngine_RectOffset
	self.margin = nil
	--- @type UnityEngine_RectOffset
	self.padding = nil
	--- @type UnityEngine_RectOffset
	self.overflow = nil
	--- @type System_Single
	self.lineHeight = nil
	--- @type UnityEngine_GUIStyle
	self.none = nil
	--- @type System_Boolean
	self.isHeightDependantOnWidth = nil
end

--- @return System_Void
--- @param position UnityEngine_Rect
--- @param isHover System_Boolean
--- @param isActive System_Boolean
--- @param on System_Boolean
--- @param hasKeyboardFocus System_Boolean
function UnityEngine_GUIStyle:Draw(position, isHover, isActive, on, hasKeyboardFocus)
end

--- @return System_Void
--- @param position UnityEngine_Rect
--- @param text System_String
--- @param isHover System_Boolean
--- @param isActive System_Boolean
--- @param on System_Boolean
--- @param hasKeyboardFocus System_Boolean
function UnityEngine_GUIStyle:Draw(position, text, isHover, isActive, on, hasKeyboardFocus)
end

--- @return System_Void
--- @param position UnityEngine_Rect
--- @param image UnityEngine_Texture
--- @param isHover System_Boolean
--- @param isActive System_Boolean
--- @param on System_Boolean
--- @param hasKeyboardFocus System_Boolean
function UnityEngine_GUIStyle:Draw(position, image, isHover, isActive, on, hasKeyboardFocus)
end

--- @return System_Void
--- @param position UnityEngine_Rect
--- @param content UnityEngine_GUIContent
--- @param isHover System_Boolean
--- @param isActive System_Boolean
--- @param on System_Boolean
--- @param hasKeyboardFocus System_Boolean
function UnityEngine_GUIStyle:Draw(position, content, isHover, isActive, on, hasKeyboardFocus)
end

--- @return System_Void
--- @param position UnityEngine_Rect
--- @param content UnityEngine_GUIContent
--- @param controlID System_Int32
function UnityEngine_GUIStyle:Draw(position, content, controlID)
end

--- @return System_Void
--- @param position UnityEngine_Rect
--- @param content UnityEngine_GUIContent
--- @param controlID System_Int32
--- @param on System_Boolean
function UnityEngine_GUIStyle:Draw(position, content, controlID, on)
end

--- @return System_Void
--- @param position UnityEngine_Rect
--- @param content UnityEngine_GUIContent
--- @param controlID System_Int32
--- @param character System_Int32
function UnityEngine_GUIStyle:DrawCursor(position, content, controlID, character)
end

--- @return System_Void
--- @param position UnityEngine_Rect
--- @param content UnityEngine_GUIContent
--- @param controlID System_Int32
--- @param firstSelectedCharacter System_Int32
--- @param lastSelectedCharacter System_Int32
function UnityEngine_GUIStyle:DrawWithTextSelection(position, content, controlID, firstSelectedCharacter, lastSelectedCharacter)
end

--- @return UnityEngine_Vector2
--- @param position UnityEngine_Rect
--- @param content UnityEngine_GUIContent
--- @param cursorStringIndex System_Int32
function UnityEngine_GUIStyle:GetCursorPixelPosition(position, content, cursorStringIndex)
end

--- @return System_Int32
--- @param position UnityEngine_Rect
--- @param content UnityEngine_GUIContent
--- @param cursorPixelPosition UnityEngine_Vector2
function UnityEngine_GUIStyle:GetCursorStringIndex(position, content, cursorPixelPosition)
end

--- @return UnityEngine_Vector2
--- @param content UnityEngine_GUIContent
function UnityEngine_GUIStyle:CalcSize(content)
end

--- @return UnityEngine_Vector2
--- @param contentSize UnityEngine_Vector2
function UnityEngine_GUIStyle:CalcScreenSize(contentSize)
end

--- @return System_Single
--- @param content UnityEngine_GUIContent
--- @param width System_Single
function UnityEngine_GUIStyle:CalcHeight(content, width)
end

--- @return System_Void
--- @param content UnityEngine_GUIContent
--- @param minWidth System_Single&
--- @param maxWidth System_Single&
function UnityEngine_GUIStyle:CalcMinMaxWidth(content, minWidth, maxWidth)
end

--- @return System_String
function UnityEngine_GUIStyle:ToString()
end

--- @return System_Boolean
--- @param obj System_Object
function UnityEngine_GUIStyle:Equals(obj)
end

--- @return System_Int32
function UnityEngine_GUIStyle:GetHashCode()
end

--- @return System_Type
function UnityEngine_GUIStyle:GetType()
end
