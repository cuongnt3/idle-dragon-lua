--- @class UnityEngine_Texture
UnityEngine_Texture = Class(UnityEngine_Texture)

--- @return void
function UnityEngine_Texture:Ctor()
	--- @type System_Int32
	self.masterTextureLimit = nil
	--- @type UnityEngine_AnisotropicFiltering
	self.anisotropicFiltering = nil
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
	--- @type System_UInt64
	self.totalTextureMemory = nil
	--- @type System_UInt64
	self.desiredTextureMemory = nil
	--- @type System_UInt64
	self.targetTextureMemory = nil
	--- @type System_UInt64
	self.currentTextureMemory = nil
	--- @type System_UInt64
	self.nonStreamingTextureMemory = nil
	--- @type System_UInt64
	self.streamingMipmapUploadCount = nil
	--- @type System_UInt64
	self.streamingRendererCount = nil
	--- @type System_UInt64
	self.streamingTextureCount = nil
	--- @type System_UInt64
	self.nonStreamingTextureCount = nil
	--- @type System_UInt64
	self.streamingTexturePendingLoadCount = nil
	--- @type System_UInt64
	self.streamingTextureLoadingCount = nil
	--- @type System_Boolean
	self.streamingTextureForceLoadAll = nil
	--- @type System_Boolean
	self.streamingTextureDiscardUnusedMips = nil
	--- @type System_String
	self.name = nil
	--- @type UnityEngine_HideFlags
	self.hideFlags = nil
end

--- @return System_Void
--- @param forcedMin System_Int32
--- @param globalMax System_Int32
function UnityEngine_Texture:SetGlobalAnisotropicFilteringLimits(forcedMin, globalMax)
end

--- @return System_IntPtr
function UnityEngine_Texture:GetNativeTexturePtr()
end

--- @return System_Int32
function UnityEngine_Texture:GetNativeTextureID()
end

--- @return System_Void
function UnityEngine_Texture:IncrementUpdateCount()
end

--- @return System_Void
function UnityEngine_Texture:SetStreamingTextureMaterialDebugProperties()
end

--- @return System_Int32
function UnityEngine_Texture:GetInstanceID()
end

--- @return System_Int32
function UnityEngine_Texture:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function UnityEngine_Texture:Equals(other)
end

--- @return System_String
function UnityEngine_Texture:ToString()
end

--- @return System_Type
function UnityEngine_Texture:GetType()
end
