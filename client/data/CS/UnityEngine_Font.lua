--- @class UnityEngine_Font
UnityEngine_Font = Class(UnityEngine_Font)

--- @return void
function UnityEngine_Font:Ctor()
	--- @type UnityEngine_Material
	self.material = nil
	--- @type System_String[]
	self.fontNames = nil
	--- @type System_Boolean
	self.dynamic = nil
	--- @type System_Int32
	self.ascent = nil
	--- @type System_Int32
	self.fontSize = nil
	--- @type UnityEngine_CharacterInfo[]
	self.characterInfo = nil
	--- @type System_Int32
	self.lineHeight = nil
	--- @type UnityEngine_Font_FontTextureRebuildCallback
	self.textureRebuildCallback = nil
	--- @type System_String
	self.name = nil
	--- @type UnityEngine_HideFlags
	self.hideFlags = nil
end

--- @return UnityEngine_Font
--- @param fontname System_String
--- @param size System_Int32
function UnityEngine_Font:CreateDynamicFontFromOSFont(fontname, size)
end

--- @return UnityEngine_Font
--- @param fontnames System_String[]
--- @param size System_Int32
function UnityEngine_Font:CreateDynamicFontFromOSFont(fontnames, size)
end

--- @return System_Int32
--- @param str System_String
function UnityEngine_Font:GetMaxVertsForString(str)
end

--- @return System_Boolean
--- @param c System_Char
function UnityEngine_Font:HasCharacter(c)
end

--- @return System_String[]
function UnityEngine_Font:GetOSInstalledFontNames()
end

--- @return System_String[]
function UnityEngine_Font:GetPathsToOSFonts()
end

--- @return System_Boolean
--- @param ch System_Char
--- @param info UnityEngine_CharacterInfo&
--- @param size System_Int32
--- @param style UnityEngine_FontStyle
function UnityEngine_Font:GetCharacterInfo(ch, info, size, style)
end

--- @return System_Boolean
--- @param ch System_Char
--- @param info UnityEngine_CharacterInfo&
--- @param size System_Int32
function UnityEngine_Font:GetCharacterInfo(ch, info, size)
end

--- @return System_Boolean
--- @param ch System_Char
--- @param info UnityEngine_CharacterInfo&
function UnityEngine_Font:GetCharacterInfo(ch, info)
end

--- @return System_Void
--- @param characters System_String
--- @param size System_Int32
--- @param style UnityEngine_FontStyle
function UnityEngine_Font:RequestCharactersInTexture(characters, size, style)
end

--- @return System_Void
--- @param characters System_String
--- @param size System_Int32
function UnityEngine_Font:RequestCharactersInTexture(characters, size)
end

--- @return System_Void
--- @param characters System_String
function UnityEngine_Font:RequestCharactersInTexture(characters)
end

--- @return System_Int32
function UnityEngine_Font:GetInstanceID()
end

--- @return System_Int32
function UnityEngine_Font:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function UnityEngine_Font:Equals(other)
end

--- @return System_String
function UnityEngine_Font:ToString()
end

--- @return System_Type
function UnityEngine_Font:GetType()
end
