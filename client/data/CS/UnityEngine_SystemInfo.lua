--- @class UnityEngine_SystemInfo
UnityEngine_SystemInfo = Class(UnityEngine_SystemInfo)

--- @return void
function UnityEngine_SystemInfo:Ctor()
	--- @type System_Single
	self.batteryLevel = nil
	--- @type UnityEngine_BatteryStatus
	self.batteryStatus = nil
	--- @type System_String
	self.operatingSystem = nil
	--- @type UnityEngine_OperatingSystemFamily
	self.operatingSystemFamily = nil
	--- @type System_String
	self.processorType = nil
	--- @type System_Int32
	self.processorFrequency = nil
	--- @type System_Int32
	self.processorCount = nil
	--- @type System_Int32
	self.systemMemorySize = nil
	--- @type System_String
	self.deviceUniqueIdentifier = nil
	--- @type System_String
	self.deviceName = nil
	--- @type System_String
	self.deviceModel = nil
	--- @type System_Boolean
	self.supportsAccelerometer = nil
	--- @type System_Boolean
	self.supportsGyroscope = nil
	--- @type System_Boolean
	self.supportsLocationService = nil
	--- @type System_Boolean
	self.supportsVibration = nil
	--- @type System_Boolean
	self.supportsAudio = nil
	--- @type UnityEngine_DeviceType
	self.deviceType = nil
	--- @type System_Int32
	self.graphicsMemorySize = nil
	--- @type System_String
	self.graphicsDeviceName = nil
	--- @type System_String
	self.graphicsDeviceVendor = nil
	--- @type System_Int32
	self.graphicsDeviceID = nil
	--- @type System_Int32
	self.graphicsDeviceVendorID = nil
	--- @type UnityEngine_Rendering_GraphicsDeviceType
	self.graphicsDeviceType = nil
	--- @type System_Boolean
	self.graphicsUVStartsAtTop = nil
	--- @type System_String
	self.graphicsDeviceVersion = nil
	--- @type System_Int32
	self.graphicsShaderLevel = nil
	--- @type System_Boolean
	self.graphicsMultiThreaded = nil
	--- @type System_Boolean
	self.supportsShadows = nil
	--- @type System_Boolean
	self.supportsRawShadowDepthSampling = nil
	--- @type System_Boolean
	self.supportsRenderTextures = nil
	--- @type System_Boolean
	self.supportsMotionVectors = nil
	--- @type System_Boolean
	self.supportsRenderToCubemap = nil
	--- @type System_Boolean
	self.supportsImageEffects = nil
	--- @type System_Boolean
	self.supports3DTextures = nil
	--- @type System_Boolean
	self.supports2DArrayTextures = nil
	--- @type System_Boolean
	self.supports3DRenderTextures = nil
	--- @type System_Boolean
	self.supportsCubemapArrayTextures = nil
	--- @type UnityEngine_Rendering_CopyTextureSupport
	self.copyTextureSupport = nil
	--- @type System_Boolean
	self.supportsComputeShaders = nil
	--- @type System_Boolean
	self.supportsInstancing = nil
	--- @type System_Boolean
	self.supportsHardwareQuadTopology = nil
	--- @type System_Boolean
	self.supports32bitsIndexBuffer = nil
	--- @type System_Boolean
	self.supportsSparseTextures = nil
	--- @type System_Int32
	self.supportedRenderTargetCount = nil
	--- @type System_Int32
	self.supportsMultisampledTextures = nil
	--- @type System_Boolean
	self.supportsMultisampleAutoResolve = nil
	--- @type System_Int32
	self.supportsTextureWrapMirrorOnce = nil
	--- @type System_Boolean
	self.usesReversedZBuffer = nil
	--- @type System_Int32
	self.supportsStencil = nil
	--- @type UnityEngine_NPOTSupport
	self.npotSupport = nil
	--- @type System_Int32
	self.maxTextureSize = nil
	--- @type System_Int32
	self.maxCubemapSize = nil
	--- @type System_Boolean
	self.supportsAsyncCompute = nil
	--- @type System_Boolean
	self.supportsGPUFence = nil
	--- @type System_Boolean
	self.supportsAsyncGPUReadback = nil
	--- @type System_Boolean
	self.supportsMipStreaming = nil
	--- @type System_Int32
	self.graphicsPixelFillrate = nil
	--- @type System_Boolean
	self.supportsVertexPrograms = nil
	--- @type System_String
	self.unsupportedIdentifier = nil
end

--- @return System_Boolean
--- @param format UnityEngine_RenderTextureFormat
function UnityEngine_SystemInfo:SupportsRenderTextureFormat(format)
end

--- @return System_Boolean
--- @param format UnityEngine_RenderTextureFormat
function UnityEngine_SystemInfo:SupportsBlendingOnRenderTextureFormat(format)
end

--- @return System_Boolean
--- @param format UnityEngine_TextureFormat
function UnityEngine_SystemInfo:SupportsTextureFormat(format)
end

--- @return System_Boolean
--- @param format UnityEngine_Experimental_Rendering_GraphicsFormat
--- @param usage UnityEngine_Experimental_Rendering_FormatUsage
function UnityEngine_SystemInfo:IsFormatSupported(format, usage)
end

--- @return System_Boolean
--- @param obj System_Object
function UnityEngine_SystemInfo:Equals(obj)
end

--- @return System_Int32
function UnityEngine_SystemInfo:GetHashCode()
end

--- @return System_Type
function UnityEngine_SystemInfo:GetType()
end

--- @return System_String
function UnityEngine_SystemInfo:ToString()
end
