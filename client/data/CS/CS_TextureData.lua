--- @class CS_TextureData
CS_TextureData = Class(CS_TextureData)

--- @return void
function CS_TextureData:Ctor()
	--- @type System_String
	self.name = nil
	--- @type UnityEngine_HideFlags
	self.hideFlags = nil
end

--- @return UnityEngine_Sprite
--- @param name System_String
function CS_TextureData:GetSprite(name)
end

--- @return UnityEngine_Sprite
--- @param index System_Int32
function CS_TextureData:GetSprite(index)
end

--- @return System_Void
function CS_TextureData:SetDirty()
end

--- @return System_String
function CS_TextureData:ToString()
end

--- @return System_Int32
function CS_TextureData:GetInstanceID()
end

--- @return System_Int32
function CS_TextureData:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function CS_TextureData:Equals(other)
end

--- @return System_Type
function CS_TextureData:GetType()
end
