--- @class UnityEngine_Audio_AudioMixerGroup
UnityEngine_Audio_AudioMixerGroup = Class(UnityEngine_Audio_AudioMixerGroup)

--- @return void
function UnityEngine_Audio_AudioMixerGroup:Ctor()
	--- @type UnityEngine_Audio_AudioMixer
	self.audioMixer = nil
	--- @type System_String
	self.name = nil
	--- @type UnityEngine_HideFlags
	self.hideFlags = nil
end

--- @return System_Int32
function UnityEngine_Audio_AudioMixerGroup:GetInstanceID()
end

--- @return System_Int32
function UnityEngine_Audio_AudioMixerGroup:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function UnityEngine_Audio_AudioMixerGroup:Equals(other)
end

--- @return System_String
function UnityEngine_Audio_AudioMixerGroup:ToString()
end

--- @return System_Type
function UnityEngine_Audio_AudioMixerGroup:GetType()
end
