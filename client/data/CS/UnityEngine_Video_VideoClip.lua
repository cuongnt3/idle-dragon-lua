--- @class UnityEngine_Video_VideoClip
UnityEngine_Video_VideoClip = Class(UnityEngine_Video_VideoClip)

--- @return void
function UnityEngine_Video_VideoClip:Ctor()
	--- @type System_String
	self.originalPath = nil
	--- @type System_UInt64
	self.frameCount = nil
	--- @type System_Double
	self.frameRate = nil
	--- @type System_Double
	self.length = nil
	--- @type System_UInt32
	self.width = nil
	--- @type System_UInt32
	self.height = nil
	--- @type System_UInt32
	self.pixelAspectRatioNumerator = nil
	--- @type System_UInt32
	self.pixelAspectRatioDenominator = nil
	--- @type System_UInt16
	self.audioTrackCount = nil
	--- @type System_String
	self.name = nil
	--- @type UnityEngine_HideFlags
	self.hideFlags = nil
end

--- @return System_UInt16
--- @param audioTrackIdx System_UInt16
function UnityEngine_Video_VideoClip:GetAudioChannelCount(audioTrackIdx)
end

--- @return System_UInt32
--- @param audioTrackIdx System_UInt16
function UnityEngine_Video_VideoClip:GetAudioSampleRate(audioTrackIdx)
end

--- @return System_String
--- @param audioTrackIdx System_UInt16
function UnityEngine_Video_VideoClip:GetAudioLanguage(audioTrackIdx)
end

--- @return System_Int32
function UnityEngine_Video_VideoClip:GetInstanceID()
end

--- @return System_Int32
function UnityEngine_Video_VideoClip:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function UnityEngine_Video_VideoClip:Equals(other)
end

--- @return System_String
function UnityEngine_Video_VideoClip:ToString()
end

--- @return System_Type
function UnityEngine_Video_VideoClip:GetType()
end
