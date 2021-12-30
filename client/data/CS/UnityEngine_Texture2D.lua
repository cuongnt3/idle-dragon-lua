--- @class UnityEngine_Texture2D
UnityEngine_Texture2D = Class(UnityEngine_Texture2D)

--- @return void
function UnityEngine_Texture2D:Ctor()
	--- @type System_Boolean
	self.alphaIsTransparency = nil
	--- @type System_Int32
	self.mipmapCount = nil
	--- @type UnityEngine_TextureFormat
	self.format = nil
	--- @type UnityEngine_Texture2D
	self.whiteTexture = nil
	--- @type UnityEngine_Texture2D
	self.blackTexture = nil
	--- @type System_Boolean
	self.streamingMipmaps = nil
	--- @type System_Int32
	self.streamingMipmapsPriority = nil
	--- @type System_Int32
	self.requestedMipmapLevel = nil
	--- @type System_Int32
	self.desiredMipmapLevel = nil
	--- @type System_Int32
	self.loadingMipmapLevel = nil
	--- @type System_Int32
	self.loadedMipmapLevel = nil
	--- @type System_Int32
	self.width = nil
	--- @type System_Int32
	self.height = nil
	--- @type UnityEngine_Rendering_TextureDimension
	self.dimension = nil
	--- @type UnityEngine_TextureWrapMode
	self.wrapMode = nil
	--- @type UnityEngine_TextureWrapMode
	self.wrapModeU = nil
	--- @type UnityEngine_TextureWrapMode
	self.wrapModeV = nil
	--- @type UnityEngine_TextureWrapMode
	self.wrapModeW = nil
	--- @type UnityEngine_FilterMode
	self.filterMode = nil
	--- @type System_Int32
	self.anisoLevel = nil
	--- @type System_Single
	self.mipMapBias = nil
	--- @type UnityEngine_Vector2
	self.texelSize = nil
	--- @type System_UInt32
	self.updateCount = nil
	--- @type UnityEngine_Hash128
	self.imageContentsHash = nil
	--- @type System_String
	self.name = nil
	--- @type UnityEngine_HideFlags
	self.hideFlags = nil
end

--- @return System_Void
--- @param nativeTex System_IntPtr
function UnityEngine_Texture2D:UpdateExternalTexture(nativeTex)
end

--- @return System_Void
--- @param colors UnityEngine_Color32[]
function UnityEngine_Texture2D:SetPixels32(colors)
end

--- @return System_Void
--- @param colors UnityEngine_Color32[]
--- @param miplevel System_Int32
function UnityEngine_Texture2D:SetPixels32(colors, miplevel)
end

--- @return System_Void
--- @param x System_Int32
--- @param y System_Int32
--- @param blockWidth System_Int32
--- @param blockHeight System_Int32
--- @param colors UnityEngine_Color32[]
function UnityEngine_Texture2D:SetPixels32(x, y, blockWidth, blockHeight, colors)
end

--- @return System_Void
--- @param x System_Int32
--- @param y System_Int32
--- @param blockWidth System_Int32
--- @param blockHeight System_Int32
--- @param colors UnityEngine_Color32[]
--- @param miplevel System_Int32
function UnityEngine_Texture2D:SetPixels32(x, y, blockWidth, blockHeight, colors, miplevel)
end

--- @return System_Byte[]
function UnityEngine_Texture2D:GetRawTextureData()
end

--- @return UnityEngine_Color[]
function UnityEngine_Texture2D:GetPixels()
end

--- @return UnityEngine_Color[]
--- @param miplevel System_Int32
function UnityEngine_Texture2D:GetPixels(miplevel)
end

--- @return UnityEngine_Color[]
--- @param x System_Int32
--- @param y System_Int32
--- @param blockWidth System_Int32
--- @param blockHeight System_Int32
--- @param miplevel System_Int32
function UnityEngine_Texture2D:GetPixels(x, y, blockWidth, blockHeight, miplevel)
end

--- @return UnityEngine_Color[]
--- @param x System_Int32
--- @param y System_Int32
--- @param blockWidth System_Int32
--- @param blockHeight System_Int32
function UnityEngine_Texture2D:GetPixels(x, y, blockWidth, blockHeight)
end

--- @return UnityEngine_Color32[]
--- @param miplevel System_Int32
function UnityEngine_Texture2D:GetPixels32(miplevel)
end

--- @return UnityEngine_Color32[]
function UnityEngine_Texture2D:GetPixels32()
end

--- @return UnityEngine_Rect[]
--- @param textures UnityEngine_Texture2D[]
--- @param padding System_Int32
--- @param maximumAtlasSize System_Int32
--- @param makeNoLongerReadable System_Boolean
function UnityEngine_Texture2D:PackTextures(textures, padding, maximumAtlasSize, makeNoLongerReadable)
end

--- @return UnityEngine_Rect[]
--- @param textures UnityEngine_Texture2D[]
--- @param padding System_Int32
--- @param maximumAtlasSize System_Int32
function UnityEngine_Texture2D:PackTextures(textures, padding, maximumAtlasSize)
end

--- @return UnityEngine_Rect[]
--- @param textures UnityEngine_Texture2D[]
--- @param padding System_Int32
function UnityEngine_Texture2D:PackTextures(textures, padding)
end

--- @return System_Void
--- @param highQuality System_Boolean
function UnityEngine_Texture2D:Compress(highQuality)
end

--- @return System_Void
function UnityEngine_Texture2D:ClearRequestedMipmapLevel()
end

--- @return System_Boolean
function UnityEngine_Texture2D:IsRequestedMipmapLevelLoaded()
end

--- @return UnityEngine_Texture2D
--- @param width System_Int32
--- @param height System_Int32
--- @param format UnityEngine_TextureFormat
--- @param mipChain System_Boolean
--- @param linear System_Boolean
--- @param nativeTex System_IntPtr
function UnityEngine_Texture2D:CreateExternalTexture(width, height, format, mipChain, linear, nativeTex)
end

--- @return System_Void
--- @param x System_Int32
--- @param y System_Int32
--- @param color UnityEngine_Color
function UnityEngine_Texture2D:SetPixel(x, y, color)
end

--- @return System_Void
--- @param x System_Int32
--- @param y System_Int32
--- @param blockWidth System_Int32
--- @param blockHeight System_Int32
--- @param colors UnityEngine_Color[]
--- @param miplevel System_Int32
function UnityEngine_Texture2D:SetPixels(x, y, blockWidth, blockHeight, colors, miplevel)
end

--- @return System_Void
--- @param x System_Int32
--- @param y System_Int32
--- @param blockWidth System_Int32
--- @param blockHeight System_Int32
--- @param colors UnityEngine_Color[]
function UnityEngine_Texture2D:SetPixels(x, y, blockWidth, blockHeight, colors)
end

--- @return System_Void
--- @param colors UnityEngine_Color[]
--- @param miplevel System_Int32
function UnityEngine_Texture2D:SetPixels(colors, miplevel)
end

--- @return System_Void
--- @param colors UnityEngine_Color[]
function UnityEngine_Texture2D:SetPixels(colors)
end

--- @return UnityEngine_Color
--- @param x System_Int32
--- @param y System_Int32
function UnityEngine_Texture2D:GetPixel(x, y)
end

--- @return UnityEngine_Color
--- @param x System_Single
--- @param y System_Single
function UnityEngine_Texture2D:GetPixelBilinear(x, y)
end

--- @return System_Void
--- @param data System_IntPtr
--- @param size System_Int32
function UnityEngine_Texture2D:LoadRawTextureData(data, size)
end

--- @return System_Void
--- @param data System_Byte[]
function UnityEngine_Texture2D:LoadRawTextureData(data)
end

--- @return System_Void
--- @param data Unity_Collections_NativeArray`1[T]
function UnityEngine_Texture2D:LoadRawTextureData(data)
end

--- @return Unity_Collections_NativeArray`1[T]
function UnityEngine_Texture2D:GetRawTextureData()
end

--- @return System_Void
--- @param updateMipmaps System_Boolean
--- @param makeNoLongerReadable System_Boolean
function UnityEngine_Texture2D:Apply(updateMipmaps, makeNoLongerReadable)
end

--- @return System_Void
--- @param updateMipmaps System_Boolean
function UnityEngine_Texture2D:Apply(updateMipmaps)
end

--- @return System_Void
function UnityEngine_Texture2D:Apply()
end

--- @return System_Boolean
--- @param width System_Int32
--- @param height System_Int32
function UnityEngine_Texture2D:Resize(width, height)
end

--- @return System_Boolean
--- @param width System_Int32
--- @param height System_Int32
--- @param format UnityEngine_TextureFormat
--- @param hasMipMap System_Boolean
function UnityEngine_Texture2D:Resize(width, height, format, hasMipMap)
end

--- @return System_Void
--- @param source UnityEngine_Rect
--- @param destX System_Int32
--- @param destY System_Int32
--- @param recalculateMipMaps System_Boolean
function UnityEngine_Texture2D:ReadPixels(source, destX, destY, recalculateMipMaps)
end

--- @return System_Void
--- @param source UnityEngine_Rect
--- @param destX System_Int32
--- @param destY System_Int32
function UnityEngine_Texture2D:ReadPixels(source, destX, destY)
end

--- @return System_Boolean
--- @param sizes UnityEngine_Vector2[]
--- @param padding System_Int32
--- @param atlasSize System_Int32
--- @param results System_Collections_Generic_List`1[UnityEngine_Rect]
function UnityEngine_Texture2D:GenerateAtlas(sizes, padding, atlasSize, results)
end

--- @return System_IntPtr
function UnityEngine_Texture2D:GetNativeTexturePtr()
end

--- @return System_Int32
function UnityEngine_Texture2D:GetNativeTextureID()
end

--- @return System_Void
function UnityEngine_Texture2D:IncrementUpdateCount()
end

--- @return System_Int32
function UnityEngine_Texture2D:GetInstanceID()
end

--- @return System_Int32
function UnityEngine_Texture2D:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function UnityEngine_Texture2D:Equals(other)
end

--- @return System_String
function UnityEngine_Texture2D:ToString()
end

--- @return System_Type
function UnityEngine_Texture2D:GetType()
end
