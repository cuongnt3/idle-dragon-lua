--- @class UnityEngine_Audio_AudioMixer
UnityEngine_Audio_AudioMixer = Class(UnityEngine_Audio_AudioMixer)

--- @return void
function UnityEngine_Audio_AudioMixer:Ctor()
	--- @type UnityEngine_Audio_AudioMixerGroup
	self.outputAudioMixerGroup = nil
	--- @type UnityEngine_Audio_AudioMixerUpdateMode
	self.updateMode = nil
	--- @type System_String
	self.name = nil
	--- @type UnityEngine_HideFlags
	self.hideFlags = nil
end

--- @return UnityEngine_Audio_AudioMixerGroup[]
--- @param subPath System_String
function UnityEngine_Audio_AudioMixer:FindMatchingGroups(subPath)
end

--- @return UnityEngine_Audio_AudioMixerSnapshot
--- @param name System_String
function UnityEngine_Audio_AudioMixer:FindSnapshot(name)
end

--- @return System_Void
--- @param snapshots UnityEngine_Audio_AudioMixerSnapshot[]
--- @param weights System_Single[]
--- @param timeToReach System_Single
function UnityEngine_Audio_AudioMixer:TransitionToSnapshots(snapshots, weights, timeToReach)
end

--- @return System_Boolean
--- @param name System_String
--- @param value System_Single
function UnityEngine_Audio_AudioMixer:SetFloat(name, value)
end

--- @return System_Boolean
--- @param name System_String
function UnityEngine_Audio_AudioMixer:ClearFloat(name)
end

--- @return System_Boolean
--- @param name System_String
--- @param value System_Single&
function UnityEngine_Audio_AudioMixer:GetFloat(name, value)
end

--- @return System_Int32
function UnityEngine_Audio_AudioMixer:GetInstanceID()
end

--- @return System_Int32
function UnityEngine_Audio_AudioMixer:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function UnityEngine_Audio_AudioMixer:Equals(other)
end

--- @return System_String
function UnityEngine_Audio_AudioMixer:ToString()
end

--- @return System_Type
function UnityEngine_Audio_AudioMixer:GetType()
end
