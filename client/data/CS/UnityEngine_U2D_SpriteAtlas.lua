--- @class UnityEngine_U2D_SpriteAtlas
UnityEngine_U2D_SpriteAtlas = Class(UnityEngine_U2D_SpriteAtlas)

--- @return void
function UnityEngine_U2D_SpriteAtlas:Ctor()
	--- @type System_Boolean
	self.isVariant = nil
	--- @type System_String
	self.tag = nil
	--- @type System_Int32
	self.spriteCount = nil
	--- @type System_String
	self.name = nil
	--- @type UnityEngine_HideFlags
	self.hideFlags = nil
end

--- @return System_Boolean
--- @param sprite UnityEngine_Sprite
function UnityEngine_U2D_SpriteAtlas:CanBindTo(sprite)
end

--- @return UnityEngine_Sprite
--- @param name System_String
function UnityEngine_U2D_SpriteAtlas:GetSprite(name)
end

--- @return System_Int32
--- @param sprites UnityEngine_Sprite[]
function UnityEngine_U2D_SpriteAtlas:GetSprites(sprites)
end

--- @return System_Int32
--- @param sprites UnityEngine_Sprite[]
--- @param name System_String
function UnityEngine_U2D_SpriteAtlas:GetSprites(sprites, name)
end

--- @return System_Int32
function UnityEngine_U2D_SpriteAtlas:GetInstanceID()
end

--- @return System_Int32
function UnityEngine_U2D_SpriteAtlas:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function UnityEngine_U2D_SpriteAtlas:Equals(other)
end

--- @return System_String
function UnityEngine_U2D_SpriteAtlas:ToString()
end

--- @return System_Type
function UnityEngine_U2D_SpriteAtlas:GetType()
end
