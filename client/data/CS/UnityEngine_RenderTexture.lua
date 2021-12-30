--- @class UnityEngine_RenderTexture
UnityEngine_RenderTexture = Class(UnityEngine_RenderTexture)

--- @return void
function UnityEngine_RenderTexture:Ctor()
	--- @type System_Int32
	self.width = nil
	--- @type System_Int32
	self.height = nil
	--- @type UnityEngine_Rendering_TextureDimension
	self.dimension = nil
	--- @type System_Boolean
	self.useMipMap = nil
	--- @type System_Boolean
	self.sRGB = nil
	--- @type UnityEngine_RenderTextureFormat
	self.format = nil
	--- @type UnityEngine_VRTextureUsage
	self.vrUsage = nil
	--- @type UnityEngine_RenderTextureMemoryless
	self.memorylessMode = nil
	--- @type System_Boolean
	self.autoGenerateMips = nil
	--- @type System_Int32
	self.volumeDepth = nil
	--- @type System_Int32
	self.antiAliasing = nil
	--- @type System_Boolean
	self.bindTextureMS = nil
	--- @type System_Boolean
	self.enableRandomWrite = nil
	--- @type System_Boolean
	self.useDynamicScale = nil
	--- @type System_Boolean
	self.isPowerOfTwo = nil
	--- @type UnityEngine_RenderTexture
	self.active = nil
	--- @type UnityEngine_RenderBuffer
	self.colorBuffer = nil
	--- @type UnityEngine_RenderBuffer
	self.depthBuffer = nil
	--- @type System_Int32
	self.depth = nil
	--- @type UnityEngine_RenderTextureDescriptor
	self.descriptor = nil
	--- @type System_Boolean
	self.generateMips = nil
	--- @type System_Boolean
	self.isCubemap = nil
	--- @type System_Boolean
	self.isVolume = nil
	--- @type System_Boolean
	self.enabled = nil
	--- @type System_Boolean
	self.isReadable = nil
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

--- @return System_IntPtr
function UnityEngine_RenderTexture:GetNativeDepthBufferPtr()
end

--- @return System_Void
--- @param discardColor System_Boolean
--- @param discardDepth System_Boolean
function UnityEngine_RenderTexture:DiscardContents(discardColor, discardDepth)
end

--- @return System_Void
function UnityEngine_RenderTexture:MarkRestoreExpected()
end

--- @return System_Void
function UnityEngine_RenderTexture:DiscardContents()
end

--- @return System_Void
function UnityEngine_RenderTexture:ResolveAntiAliasedSurface()
end

--- @return System_Void
--- @param target UnityEngine_RenderTexture
function UnityEngine_RenderTexture:ResolveAntiAliasedSurface(target)
end

--- @return System_Void
--- @param propertyName System_String
function UnityEngine_RenderTexture:SetGlobalShaderProperty(propertyName)
end

--- @return System_Boolean
function UnityEngine_RenderTexture:Create()
end

--- @return System_Void
function UnityEngine_RenderTexture:Release()
end

--- @return System_Boolean
function UnityEngine_RenderTexture:IsCreated()
end

--- @return System_Void
function UnityEngine_RenderTexture:GenerateMips()
end

--- @return System_Void
--- @param equirect UnityEngine_RenderTexture
--- @param eye UnityEngine_Camera_MonoOrStereoscopicEye
function UnityEngine_RenderTexture:ConvertToEquirect(equirect, eye)
end

--- @return System_Boolean
--- @param rt UnityEngine_RenderTexture
function UnityEngine_RenderTexture:SupportsStencil(rt)
end

--- @return System_Void
--- @param temp UnityEngine_RenderTexture
function UnityEngine_RenderTexture:ReleaseTemporary(temp)
end

--- @return UnityEngine_RenderTexture
--- @param desc UnityEngine_RenderTextureDescriptor
function UnityEngine_RenderTexture:GetTemporary(desc)
end

--- @return UnityEngine_RenderTexture
--- @param width System_Int32
--- @param height System_Int32
--- @param depthBuffer System_Int32
--- @param format UnityEngine_RenderTextureFormat
--- @param readWrite UnityEngine_RenderTextureReadWrite
--- @param antiAliasing System_Int32
--- @param memorylessMode UnityEngine_RenderTextureMemoryless
--- @param vrUsage UnityEngine_VRTextureUsage
--- @param useDynamicScale System_Boolean
function UnityEngine_RenderTexture:GetTemporary(width, height, depthBuffer, format, readWrite, antiAliasing, memorylessMode, vrUsage, useDynamicScale)
end

--- @return UnityEngine_RenderTexture
--- @param width System_Int32
--- @param height System_Int32
--- @param depthBuffer System_Int32
--- @param format UnityEngine_RenderTextureFormat
--- @param readWrite UnityEngine_RenderTextureReadWrite
--- @param antiAliasing System_Int32
--- @param memorylessMode UnityEngine_RenderTextureMemoryless
--- @param vrUsage UnityEngine_VRTextureUsage
function UnityEngine_RenderTexture:GetTemporary(width, height, depthBuffer, format, readWrite, antiAliasing, memorylessMode, vrUsage)
end

--- @return UnityEngine_RenderTexture
--- @param width System_Int32
--- @param height System_Int32
--- @param depthBuffer System_Int32
--- @param format UnityEngine_RenderTextureFormat
--- @param readWrite UnityEngine_RenderTextureReadWrite
--- @param antiAliasing System_Int32
--- @param memorylessMode UnityEngine_RenderTextureMemoryless
function UnityEngine_RenderTexture:GetTemporary(width, height, depthBuffer, format, readWrite, antiAliasing, memorylessMode)
end

--- @return UnityEngine_RenderTexture
--- @param width System_Int32
--- @param height System_Int32
--- @param depthBuffer System_Int32
--- @param format UnityEngine_RenderTextureFormat
--- @param readWrite UnityEngine_RenderTextureReadWrite
--- @param antiAliasing System_Int32
function UnityEngine_RenderTexture:GetTemporary(width, height, depthBuffer, format, readWrite, antiAliasing)
end

--- @return UnityEngine_RenderTexture
--- @param width System_Int32
--- @param height System_Int32
--- @param depthBuffer System_Int32
--- @param format UnityEngine_RenderTextureFormat
--- @param readWrite UnityEngine_RenderTextureReadWrite
function UnityEngine_RenderTexture:GetTemporary(width, height, depthBuffer, format, readWrite)
end

--- @return UnityEngine_RenderTexture
--- @param width System_Int32
--- @param height System_Int32
--- @param depthBuffer System_Int32
--- @param format UnityEngine_RenderTextureFormat
function UnityEngine_RenderTexture:GetTemporary(width, height, depthBuffer, format)
end

--- @return UnityEngine_RenderTexture
--- @param width System_Int32
--- @param height System_Int32
--- @param depthBuffer System_Int32
function UnityEngine_RenderTexture:GetTemporary(width, height, depthBuffer)
end

--- @return UnityEngine_RenderTexture
--- @param width System_Int32
--- @param height System_Int32
function UnityEngine_RenderTexture:GetTemporary(width, height)
end

--- @return System_Void
--- @param color UnityEngine_Color
function UnityEngine_RenderTexture:SetBorderColor(color)
end

--- @return UnityEngine_Vector2
function UnityEngine_RenderTexture:GetTexelOffset()
end

--- @return System_IntPtr
function UnityEngine_RenderTexture:GetNativeTexturePtr()
end

--- @return System_Int32
function UnityEngine_RenderTexture:GetNativeTextureID()
end

--- @return System_Void
function UnityEngine_RenderTexture:IncrementUpdateCount()
end

--- @return System_Int32
function UnityEngine_RenderTexture:GetInstanceID()
end

--- @return System_Int32
function UnityEngine_RenderTexture:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function UnityEngine_RenderTexture:Equals(other)
end

--- @return System_String
function UnityEngine_RenderTexture:ToString()
end

--- @return System_Type
function UnityEngine_RenderTexture:GetType()
end
