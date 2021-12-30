--- @class UnityEngine_AudioSource
UnityEngine_AudioSource = Class(UnityEngine_AudioSource)

--- @return void
function UnityEngine_AudioSource:Ctor()
	--- @type System_Single
	self.volume = nil
	--- @type System_Single
	self.pitch = nil
	--- @type System_Single
	self.time = nil
	--- @type System_Int32
	self.timeSamples = nil
	--- @type UnityEngine_AudioClip
	self.clip = nil
	--- @type UnityEngine_Audio_AudioMixerGroup
	self.outputAudioMixerGroup = nil
	--- @type System_Boolean
	self.isPlaying = nil
	--- @type System_Boolean
	self.isVirtual = nil
	--- @type System_Boolean
	self.loop = nil
	--- @type System_Boolean
	self.ignoreListenerVolume = nil
	--- @type System_Boolean
	self.playOnAwake = nil
	--- @type System_Boolean
	self.ignoreListenerPause = nil
	--- @type UnityEngine_AudioVelocityUpdateMode
	self.velocityUpdateMode = nil
	--- @type System_Single
	self.panStereo = nil
	--- @type System_Single
	self.spatialBlend = nil
	--- @type System_Boolean
	self.spatialize = nil
	--- @type System_Boolean
	self.spatializePostEffects = nil
	--- @type System_Single
	self.reverbZoneMix = nil
	--- @type System_Boolean
	self.bypassEffects = nil
	--- @type System_Boolean
	self.bypassListenerEffects = nil
	--- @type System_Boolean
	self.bypassReverbZones = nil
	--- @type System_Single
	self.dopplerLevel = nil
	--- @type System_Single
	self.spread = nil
	--- @type System_Int32
	self.priority = nil
	--- @type System_Boolean
	self.mute = nil
	--- @type System_Single
	self.minDistance = nil
	--- @type System_Single
	self.maxDistance = nil
	--- @type UnityEngine_AudioRolloffMode
	self.rolloffMode = nil
	--- @type System_Single
	self.minVolume = nil
	--- @type System_Single
	self.maxVolume = nil
	--- @type System_Single
	self.rolloffFactor = nil
	--- @type System_Single
	self.panLevel = nil
	--- @type System_Single
	self.pan = nil
	--- @type System_Boolean
	self.enabled = nil
	--- @type System_Boolean
	self.isActiveAndEnabled = nil
	--- @type UnityEngine_Transform
	self.transform = nil
	--- @type UnityEngine_GameObject
	self.gameObject = nil
	--- @type System_String
	self.tag = nil
	--- @type UnityEngine_Component
	self.rigidbody = nil
	--- @type UnityEngine_Component
	self.rigidbody2D = nil
	--- @type UnityEngine_Component
	self.camera = nil
	--- @type UnityEngine_Component
	self.light = nil
	--- @type UnityEngine_Component
	self.animation = nil
	--- @type UnityEngine_Component
	self.constantForce = nil
	--- @type UnityEngine_Component
	self.renderer = nil
	--- @type UnityEngine_Component
	self.audio = nil
	--- @type UnityEngine_Component
	self.guiText = nil
	--- @type UnityEngine_Component
	self.networkView = nil
	--- @type UnityEngine_Component
	self.guiElement = nil
	--- @type UnityEngine_Component
	self.guiTexture = nil
	--- @type UnityEngine_Component
	self.collider = nil
	--- @type UnityEngine_Component
	self.collider2D = nil
	--- @type UnityEngine_Component
	self.hingeJoint = nil
	--- @type UnityEngine_Component
	self.particleEmitter = nil
	--- @type UnityEngine_Component
	self.particleSystem = nil
	--- @type System_String
	self.name = nil
	--- @type UnityEngine_HideFlags
	self.hideFlags = nil
end

--- @return System_Void
--- @param delay System_UInt64
function UnityEngine_AudioSource:Play(delay)
end

--- @return System_Void
function UnityEngine_AudioSource:Play()
end

--- @return System_Void
--- @param delay System_Single
function UnityEngine_AudioSource:PlayDelayed(delay)
end

--- @return System_Void
--- @param time System_Double
function UnityEngine_AudioSource:PlayScheduled(time)
end

--- @return System_Void
--- @param time System_Double
function UnityEngine_AudioSource:SetScheduledStartTime(time)
end

--- @return System_Void
--- @param time System_Double
function UnityEngine_AudioSource:SetScheduledEndTime(time)
end

--- @return System_Void
function UnityEngine_AudioSource:Stop()
end

--- @return System_Void
function UnityEngine_AudioSource:Pause()
end

--- @return System_Void
function UnityEngine_AudioSource:UnPause()
end

--- @return System_Void
--- @param clip UnityEngine_AudioClip
function UnityEngine_AudioSource:PlayOneShot(clip)
end

--- @return System_Void
--- @param clip UnityEngine_AudioClip
--- @param volumeScale System_Single
function UnityEngine_AudioSource:PlayOneShot(clip, volumeScale)
end

--- @return System_Void
--- @param clip UnityEngine_AudioClip
--- @param position UnityEngine_Vector3
function UnityEngine_AudioSource:PlayClipAtPoint(clip, position)
end

--- @return System_Void
--- @param clip UnityEngine_AudioClip
--- @param position UnityEngine_Vector3
--- @param volume System_Single
function UnityEngine_AudioSource:PlayClipAtPoint(clip, position, volume)
end

--- @return System_Void
--- @param type UnityEngine_AudioSourceCurveType
--- @param curve UnityEngine_AnimationCurve
function UnityEngine_AudioSource:SetCustomCurve(type, curve)
end

--- @return UnityEngine_AnimationCurve
--- @param type UnityEngine_AudioSourceCurveType
function UnityEngine_AudioSource:GetCustomCurve(type)
end

--- @return System_Single[]
--- @param numSamples System_Int32
--- @param channel System_Int32
function UnityEngine_AudioSource:GetOutputData(numSamples, channel)
end

--- @return System_Void
--- @param samples System_Single[]
--- @param channel System_Int32
function UnityEngine_AudioSource:GetOutputData(samples, channel)
end

--- @return System_Single[]
--- @param numSamples System_Int32
--- @param channel System_Int32
--- @param window UnityEngine_FFTWindow
function UnityEngine_AudioSource:GetSpectrumData(numSamples, channel, window)
end

--- @return System_Void
--- @param samples System_Single[]
--- @param channel System_Int32
--- @param window UnityEngine_FFTWindow
function UnityEngine_AudioSource:GetSpectrumData(samples, channel, window)
end

--- @return System_Boolean
--- @param index System_Int32
--- @param value System_Single
function UnityEngine_AudioSource:SetSpatializerFloat(index, value)
end

--- @return System_Boolean
--- @param index System_Int32
--- @param value System_Single&
function UnityEngine_AudioSource:GetSpatializerFloat(index, value)
end

--- @return System_Boolean
--- @param index System_Int32
--- @param value System_Single
function UnityEngine_AudioSource:SetAmbisonicDecoderFloat(index, value)
end

--- @return System_Boolean
--- @param index System_Int32
--- @param value System_Single&
function UnityEngine_AudioSource:GetAmbisonicDecoderFloat(index, value)
end

--- @return UnityEngine_Component
--- @param type System_Type
function UnityEngine_AudioSource:GetComponent(type)
end

--- @return CS_T
function UnityEngine_AudioSource:GetComponent()
end

--- @return UnityEngine_Component
--- @param type System_String
function UnityEngine_AudioSource:GetComponent(type)
end

--- @return UnityEngine_Component
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_AudioSource:GetComponentInChildren(t, includeInactive)
end

--- @return UnityEngine_Component
--- @param t System_Type
function UnityEngine_AudioSource:GetComponentInChildren(t)
end

--- @return CS_T
--- @param includeInactive System_Boolean
function UnityEngine_AudioSource:GetComponentInChildren(includeInactive)
end

--- @return CS_T
function UnityEngine_AudioSource:GetComponentInChildren()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_AudioSource:GetComponentsInChildren(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function UnityEngine_AudioSource:GetComponentsInChildren(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function UnityEngine_AudioSource:GetComponentsInChildren(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param result System_Collections_Generic_List`1[T]
function UnityEngine_AudioSource:GetComponentsInChildren(includeInactive, result)
end

--- @return CS_T[]
function UnityEngine_AudioSource:GetComponentsInChildren()
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_AudioSource:GetComponentsInChildren(results)
end

--- @return UnityEngine_Component
--- @param t System_Type
function UnityEngine_AudioSource:GetComponentInParent(t)
end

--- @return CS_T
function UnityEngine_AudioSource:GetComponentInParent()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_AudioSource:GetComponentsInParent(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function UnityEngine_AudioSource:GetComponentsInParent(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function UnityEngine_AudioSource:GetComponentsInParent(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_AudioSource:GetComponentsInParent(includeInactive, results)
end

--- @return CS_T[]
function UnityEngine_AudioSource:GetComponentsInParent()
end

--- @return UnityEngine_Component[]
--- @param type System_Type
function UnityEngine_AudioSource:GetComponents(type)
end

--- @return System_Void
--- @param type System_Type
--- @param results System_Collections_Generic_List`1[UnityEngine_Component]
function UnityEngine_AudioSource:GetComponents(type, results)
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_AudioSource:GetComponents(results)
end

--- @return CS_T[]
function UnityEngine_AudioSource:GetComponents()
end

--- @return System_Boolean
--- @param tag System_String
function UnityEngine_AudioSource:CompareTag(tag)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_AudioSource:SendMessageUpwards(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_AudioSource:SendMessageUpwards(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_AudioSource:SendMessageUpwards(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_AudioSource:SendMessageUpwards(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_AudioSource:SendMessage(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_AudioSource:SendMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_AudioSource:SendMessage(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_AudioSource:SendMessage(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_AudioSource:BroadcastMessage(methodName, parameter, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
function UnityEngine_AudioSource:BroadcastMessage(methodName, parameter)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_AudioSource:BroadcastMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_AudioSource:BroadcastMessage(methodName, options)
end

--- @return System_Int32
function UnityEngine_AudioSource:GetInstanceID()
end

--- @return System_Int32
function UnityEngine_AudioSource:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function UnityEngine_AudioSource:Equals(other)
end

--- @return System_String
function UnityEngine_AudioSource:ToString()
end

--- @return System_Type
function UnityEngine_AudioSource:GetType()
end
