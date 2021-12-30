--- @class UnityEngine_Video_VideoPlayer
UnityEngine_Video_VideoPlayer = Class(UnityEngine_Video_VideoPlayer)

--- @return void
function UnityEngine_Video_VideoPlayer:Ctor()
	--- @type UnityEngine_Video_VideoSource
	self.source = nil
	--- @type System_String
	self.url = nil
	--- @type UnityEngine_Video_VideoClip
	self.clip = nil
	--- @type UnityEngine_Video_VideoRenderMode
	self.renderMode = nil
	--- @type UnityEngine_Camera
	self.targetCamera = nil
	--- @type UnityEngine_RenderTexture
	self.targetTexture = nil
	--- @type UnityEngine_Renderer
	self.targetMaterialRenderer = nil
	--- @type System_String
	self.targetMaterialProperty = nil
	--- @type UnityEngine_Video_VideoAspectRatio
	self.aspectRatio = nil
	--- @type System_Single
	self.targetCameraAlpha = nil
	--- @type UnityEngine_Video_Video3DLayout
	self.targetCamera3DLayout = nil
	--- @type UnityEngine_Texture
	self.texture = nil
	--- @type System_Boolean
	self.isPrepared = nil
	--- @type System_Boolean
	self.waitForFirstFrame = nil
	--- @type System_Boolean
	self.playOnAwake = nil
	--- @type System_Boolean
	self.isPlaying = nil
	--- @type System_Boolean
	self.isPaused = nil
	--- @type System_Boolean
	self.canSetTime = nil
	--- @type System_Double
	self.time = nil
	--- @type System_Int64
	self.frame = nil
	--- @type System_Double
	self.clockTime = nil
	--- @type System_Boolean
	self.canStep = nil
	--- @type System_Boolean
	self.canSetPlaybackSpeed = nil
	--- @type System_Single
	self.playbackSpeed = nil
	--- @type System_Boolean
	self.isLooping = nil
	--- @type System_Boolean
	self.canSetTimeSource = nil
	--- @type UnityEngine_Video_VideoTimeSource
	self.timeSource = nil
	--- @type UnityEngine_Video_VideoTimeReference
	self.timeReference = nil
	--- @type System_Double
	self.externalReferenceTime = nil
	--- @type System_Boolean
	self.canSetSkipOnDrop = nil
	--- @type System_Boolean
	self.skipOnDrop = nil
	--- @type System_UInt64
	self.frameCount = nil
	--- @type System_Single
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
	--- @type System_UInt16
	self.controlledAudioTrackMaxCount = nil
	--- @type System_UInt16
	self.controlledAudioTrackCount = nil
	--- @type UnityEngine_Video_VideoAudioOutputMode
	self.audioOutputMode = nil
	--- @type System_Boolean
	self.canSetDirectAudioVolume = nil
	--- @type System_Boolean
	self.sendFrameReadyEvents = nil
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
	self.particleSystem = nil
	--- @type System_String
	self.name = nil
	--- @type UnityEngine_HideFlags
	self.hideFlags = nil
end

--- @return System_Void
function UnityEngine_Video_VideoPlayer:Prepare()
end

--- @return System_Void
function UnityEngine_Video_VideoPlayer:Play()
end

--- @return System_Void
function UnityEngine_Video_VideoPlayer:Pause()
end

--- @return System_Void
function UnityEngine_Video_VideoPlayer:Stop()
end

--- @return System_Void
function UnityEngine_Video_VideoPlayer:StepForward()
end

--- @return System_String
--- @param trackIndex System_UInt16
function UnityEngine_Video_VideoPlayer:GetAudioLanguageCode(trackIndex)
end

--- @return System_UInt16
--- @param trackIndex System_UInt16
function UnityEngine_Video_VideoPlayer:GetAudioChannelCount(trackIndex)
end

--- @return System_UInt32
--- @param trackIndex System_UInt16
function UnityEngine_Video_VideoPlayer:GetAudioSampleRate(trackIndex)
end

--- @return System_Void
--- @param trackIndex System_UInt16
--- @param enabled System_Boolean
function UnityEngine_Video_VideoPlayer:EnableAudioTrack(trackIndex, enabled)
end

--- @return System_Boolean
--- @param trackIndex System_UInt16
function UnityEngine_Video_VideoPlayer:IsAudioTrackEnabled(trackIndex)
end

--- @return System_Single
--- @param trackIndex System_UInt16
function UnityEngine_Video_VideoPlayer:GetDirectAudioVolume(trackIndex)
end

--- @return System_Void
--- @param trackIndex System_UInt16
--- @param volume System_Single
function UnityEngine_Video_VideoPlayer:SetDirectAudioVolume(trackIndex, volume)
end

--- @return System_Boolean
--- @param trackIndex System_UInt16
function UnityEngine_Video_VideoPlayer:GetDirectAudioMute(trackIndex)
end

--- @return System_Void
--- @param trackIndex System_UInt16
--- @param mute System_Boolean
function UnityEngine_Video_VideoPlayer:SetDirectAudioMute(trackIndex, mute)
end

--- @return UnityEngine_AudioSource
--- @param trackIndex System_UInt16
function UnityEngine_Video_VideoPlayer:GetTargetAudioSource(trackIndex)
end

--- @return System_Void
--- @param trackIndex System_UInt16
--- @param source UnityEngine_AudioSource
function UnityEngine_Video_VideoPlayer:SetTargetAudioSource(trackIndex, source)
end

--- @return UnityEngine_Component
--- @param type System_Type
function UnityEngine_Video_VideoPlayer:GetComponent(type)
end

--- @return CS_T
function UnityEngine_Video_VideoPlayer:GetComponent()
end

--- @return UnityEngine_Component
--- @param type System_String
function UnityEngine_Video_VideoPlayer:GetComponent(type)
end

--- @return UnityEngine_Component
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_Video_VideoPlayer:GetComponentInChildren(t, includeInactive)
end

--- @return UnityEngine_Component
--- @param t System_Type
function UnityEngine_Video_VideoPlayer:GetComponentInChildren(t)
end

--- @return CS_T
--- @param includeInactive System_Boolean
function UnityEngine_Video_VideoPlayer:GetComponentInChildren(includeInactive)
end

--- @return CS_T
function UnityEngine_Video_VideoPlayer:GetComponentInChildren()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_Video_VideoPlayer:GetComponentsInChildren(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function UnityEngine_Video_VideoPlayer:GetComponentsInChildren(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function UnityEngine_Video_VideoPlayer:GetComponentsInChildren(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param result System_Collections_Generic_List`1[T]
function UnityEngine_Video_VideoPlayer:GetComponentsInChildren(includeInactive, result)
end

--- @return CS_T[]
function UnityEngine_Video_VideoPlayer:GetComponentsInChildren()
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_Video_VideoPlayer:GetComponentsInChildren(results)
end

--- @return UnityEngine_Component
--- @param t System_Type
function UnityEngine_Video_VideoPlayer:GetComponentInParent(t)
end

--- @return CS_T
function UnityEngine_Video_VideoPlayer:GetComponentInParent()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_Video_VideoPlayer:GetComponentsInParent(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function UnityEngine_Video_VideoPlayer:GetComponentsInParent(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function UnityEngine_Video_VideoPlayer:GetComponentsInParent(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_Video_VideoPlayer:GetComponentsInParent(includeInactive, results)
end

--- @return CS_T[]
function UnityEngine_Video_VideoPlayer:GetComponentsInParent()
end

--- @return UnityEngine_Component[]
--- @param type System_Type
function UnityEngine_Video_VideoPlayer:GetComponents(type)
end

--- @return System_Void
--- @param type System_Type
--- @param results System_Collections_Generic_List`1[UnityEngine_Component]
function UnityEngine_Video_VideoPlayer:GetComponents(type, results)
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_Video_VideoPlayer:GetComponents(results)
end

--- @return CS_T[]
function UnityEngine_Video_VideoPlayer:GetComponents()
end

--- @return System_Boolean
--- @param tag System_String
function UnityEngine_Video_VideoPlayer:CompareTag(tag)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_Video_VideoPlayer:SendMessageUpwards(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_Video_VideoPlayer:SendMessageUpwards(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_Video_VideoPlayer:SendMessageUpwards(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_Video_VideoPlayer:SendMessageUpwards(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_Video_VideoPlayer:SendMessage(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_Video_VideoPlayer:SendMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_Video_VideoPlayer:SendMessage(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_Video_VideoPlayer:SendMessage(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_Video_VideoPlayer:BroadcastMessage(methodName, parameter, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
function UnityEngine_Video_VideoPlayer:BroadcastMessage(methodName, parameter)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_Video_VideoPlayer:BroadcastMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_Video_VideoPlayer:BroadcastMessage(methodName, options)
end

--- @return System_Int32
function UnityEngine_Video_VideoPlayer:GetInstanceID()
end

--- @return System_Int32
function UnityEngine_Video_VideoPlayer:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function UnityEngine_Video_VideoPlayer:Equals(other)
end

--- @return System_String
function UnityEngine_Video_VideoPlayer:ToString()
end

--- @return System_Type
function UnityEngine_Video_VideoPlayer:GetType()
end
