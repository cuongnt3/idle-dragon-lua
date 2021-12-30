--- @class UnityEngine_AudioClip
UnityEngine_AudioClip = Class(UnityEngine_AudioClip)

--- @return void
function UnityEngine_AudioClip:Ctor()
	--- @type System_Single
	self.length = nil
	--- @type System_Int32
	self.samples = nil
	--- @type System_Int32
	self.channels = nil
	--- @type System_Int32
	self.frequency = nil
	--- @type System_Boolean
	self.isReadyToPlay = nil
	--- @type UnityEngine_AudioClipLoadType
	self.loadType = nil
	--- @type System_Boolean
	self.preloadAudioData = nil
	--- @type System_Boolean
	self.ambisonic = nil
	--- @type UnityEngine_AudioDataLoadState
	self.loadState = nil
	--- @type System_Boolean
	self.loadInBackground = nil
	--- @type System_String
	self.name = nil
	--- @type UnityEngine_HideFlags
	self.hideFlags = nil
end

--- @return System_Boolean
function UnityEngine_AudioClip:LoadAudioData()
end

--- @return System_Boolean
function UnityEngine_AudioClip:UnloadAudioData()
end

--- @return System_Boolean
--- @param data System_Single[]
--- @param offsetSamples System_Int32
function UnityEngine_AudioClip:GetData(data, offsetSamples)
end

--- @return System_Boolean
--- @param data System_Single[]
--- @param offsetSamples System_Int32
function UnityEngine_AudioClip:SetData(data, offsetSamples)
end

--- @return UnityEngine_AudioClip
--- @param name System_String
--- @param lengthSamples System_Int32
--- @param channels System_Int32
--- @param frequency System_Int32
--- @param _3D System_Boolean
--- @param stream System_Boolean
function UnityEngine_AudioClip:Create(name, lengthSamples, channels, frequency, _3D, stream)
end

--- @return UnityEngine_AudioClip
--- @param name System_String
--- @param lengthSamples System_Int32
--- @param channels System_Int32
--- @param frequency System_Int32
--- @param _3D System_Boolean
--- @param stream System_Boolean
--- @param pcmreadercallback UnityEngine_AudioClip_PCMReaderCallback
function UnityEngine_AudioClip:Create(name, lengthSamples, channels, frequency, _3D, stream, pcmreadercallback)
end

--- @return UnityEngine_AudioClip
--- @param name System_String
--- @param lengthSamples System_Int32
--- @param channels System_Int32
--- @param frequency System_Int32
--- @param _3D System_Boolean
--- @param stream System_Boolean
--- @param pcmreadercallback UnityEngine_AudioClip_PCMReaderCallback
--- @param pcmsetpositioncallback UnityEngine_AudioClip_PCMSetPositionCallback
function UnityEngine_AudioClip:Create(name, lengthSamples, channels, frequency, _3D, stream, pcmreadercallback, pcmsetpositioncallback)
end

--- @return UnityEngine_AudioClip
--- @param name System_String
--- @param lengthSamples System_Int32
--- @param channels System_Int32
--- @param frequency System_Int32
--- @param stream System_Boolean
function UnityEngine_AudioClip:Create(name, lengthSamples, channels, frequency, stream)
end

--- @return UnityEngine_AudioClip
--- @param name System_String
--- @param lengthSamples System_Int32
--- @param channels System_Int32
--- @param frequency System_Int32
--- @param stream System_Boolean
--- @param pcmreadercallback UnityEngine_AudioClip_PCMReaderCallback
function UnityEngine_AudioClip:Create(name, lengthSamples, channels, frequency, stream, pcmreadercallback)
end

--- @return UnityEngine_AudioClip
--- @param name System_String
--- @param lengthSamples System_Int32
--- @param channels System_Int32
--- @param frequency System_Int32
--- @param stream System_Boolean
--- @param pcmreadercallback UnityEngine_AudioClip_PCMReaderCallback
--- @param pcmsetpositioncallback UnityEngine_AudioClip_PCMSetPositionCallback
function UnityEngine_AudioClip:Create(name, lengthSamples, channels, frequency, stream, pcmreadercallback, pcmsetpositioncallback)
end

--- @return System_Int32
function UnityEngine_AudioClip:GetInstanceID()
end

--- @return System_Int32
function UnityEngine_AudioClip:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function UnityEngine_AudioClip:Equals(other)
end

--- @return System_String
function UnityEngine_AudioClip:ToString()
end

--- @return System_Type
function UnityEngine_AudioClip:GetType()
end
