--- @class UnityEngine_Animation
UnityEngine_Animation = Class(UnityEngine_Animation)

--- @return void
function UnityEngine_Animation:Ctor()
	--- @type UnityEngine_AnimationClip
	self.clip = nil
	--- @type System_Boolean
	self.playAutomatically = nil
	--- @type UnityEngine_WrapMode
	self.wrapMode = nil
	--- @type System_Boolean
	self.isPlaying = nil
	--- @type UnityEngine_AnimationState
	self.Item = nil
	--- @type System_Boolean
	self.animatePhysics = nil
	--- @type System_Boolean
	self.animateOnlyIfVisible = nil
	--- @type UnityEngine_AnimationCullingType
	self.cullingType = nil
	--- @type UnityEngine_Bounds
	self.localBounds = nil
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
function UnityEngine_Animation:Stop()
end

--- @return System_Void
--- @param name System_String
function UnityEngine_Animation:Stop(name)
end

--- @return System_Void
--- @param name System_String
function UnityEngine_Animation:Rewind(name)
end

--- @return System_Void
function UnityEngine_Animation:Rewind()
end

--- @return System_Void
function UnityEngine_Animation:Sample()
end

--- @return System_Boolean
--- @param name System_String
function UnityEngine_Animation:IsPlaying(name)
end

--- @return System_Boolean
function UnityEngine_Animation:Play()
end

--- @return System_Boolean
--- @param mode UnityEngine_PlayMode
function UnityEngine_Animation:Play(mode)
end

--- @return System_Boolean
--- @param animation System_String
--- @param mode UnityEngine_PlayMode
function UnityEngine_Animation:Play(animation, mode)
end

--- @return System_Boolean
--- @param animation System_String
function UnityEngine_Animation:Play(animation)
end

--- @return System_Void
--- @param animation System_String
--- @param fadeLength System_Single
--- @param mode UnityEngine_PlayMode
function UnityEngine_Animation:CrossFade(animation, fadeLength, mode)
end

--- @return System_Void
--- @param animation System_String
--- @param fadeLength System_Single
function UnityEngine_Animation:CrossFade(animation, fadeLength)
end

--- @return System_Void
--- @param animation System_String
function UnityEngine_Animation:CrossFade(animation)
end

--- @return System_Void
--- @param animation System_String
--- @param targetWeight System_Single
--- @param fadeLength System_Single
function UnityEngine_Animation:Blend(animation, targetWeight, fadeLength)
end

--- @return System_Void
--- @param animation System_String
--- @param targetWeight System_Single
function UnityEngine_Animation:Blend(animation, targetWeight)
end

--- @return System_Void
--- @param animation System_String
function UnityEngine_Animation:Blend(animation)
end

--- @return UnityEngine_AnimationState
--- @param animation System_String
--- @param fadeLength System_Single
--- @param queue UnityEngine_QueueMode
--- @param mode UnityEngine_PlayMode
function UnityEngine_Animation:CrossFadeQueued(animation, fadeLength, queue, mode)
end

--- @return UnityEngine_AnimationState
--- @param animation System_String
--- @param fadeLength System_Single
--- @param queue UnityEngine_QueueMode
function UnityEngine_Animation:CrossFadeQueued(animation, fadeLength, queue)
end

--- @return UnityEngine_AnimationState
--- @param animation System_String
--- @param fadeLength System_Single
function UnityEngine_Animation:CrossFadeQueued(animation, fadeLength)
end

--- @return UnityEngine_AnimationState
--- @param animation System_String
function UnityEngine_Animation:CrossFadeQueued(animation)
end

--- @return UnityEngine_AnimationState
--- @param animation System_String
--- @param queue UnityEngine_QueueMode
--- @param mode UnityEngine_PlayMode
function UnityEngine_Animation:PlayQueued(animation, queue, mode)
end

--- @return UnityEngine_AnimationState
--- @param animation System_String
--- @param queue UnityEngine_QueueMode
function UnityEngine_Animation:PlayQueued(animation, queue)
end

--- @return UnityEngine_AnimationState
--- @param animation System_String
function UnityEngine_Animation:PlayQueued(animation)
end

--- @return System_Void
--- @param clip UnityEngine_AnimationClip
--- @param newName System_String
function UnityEngine_Animation:AddClip(clip, newName)
end

--- @return System_Void
--- @param clip UnityEngine_AnimationClip
--- @param newName System_String
--- @param firstFrame System_Int32
--- @param lastFrame System_Int32
--- @param addLoopFrame System_Boolean
function UnityEngine_Animation:AddClip(clip, newName, firstFrame, lastFrame, addLoopFrame)
end

--- @return System_Void
--- @param clip UnityEngine_AnimationClip
--- @param newName System_String
--- @param firstFrame System_Int32
--- @param lastFrame System_Int32
function UnityEngine_Animation:AddClip(clip, newName, firstFrame, lastFrame)
end

--- @return System_Void
--- @param clip UnityEngine_AnimationClip
function UnityEngine_Animation:RemoveClip(clip)
end

--- @return System_Void
--- @param clipName System_String
function UnityEngine_Animation:RemoveClip(clipName)
end

--- @return System_Int32
function UnityEngine_Animation:GetClipCount()
end

--- @return System_Boolean
--- @param mode UnityEngine_AnimationPlayMode
function UnityEngine_Animation:Play(mode)
end

--- @return System_Boolean
--- @param animation System_String
--- @param mode UnityEngine_AnimationPlayMode
function UnityEngine_Animation:Play(animation, mode)
end

--- @return System_Void
--- @param layer System_Int32
function UnityEngine_Animation:SyncLayer(layer)
end

--- @return System_Collections_IEnumerator
function UnityEngine_Animation:GetEnumerator()
end

--- @return UnityEngine_AnimationClip
--- @param name System_String
function UnityEngine_Animation:GetClip(name)
end

--- @return UnityEngine_Component
--- @param type System_Type
function UnityEngine_Animation:GetComponent(type)
end

--- @return CS_T
function UnityEngine_Animation:GetComponent()
end

--- @return UnityEngine_Component
--- @param type System_String
function UnityEngine_Animation:GetComponent(type)
end

--- @return UnityEngine_Component
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_Animation:GetComponentInChildren(t, includeInactive)
end

--- @return UnityEngine_Component
--- @param t System_Type
function UnityEngine_Animation:GetComponentInChildren(t)
end

--- @return CS_T
--- @param includeInactive System_Boolean
function UnityEngine_Animation:GetComponentInChildren(includeInactive)
end

--- @return CS_T
function UnityEngine_Animation:GetComponentInChildren()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_Animation:GetComponentsInChildren(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function UnityEngine_Animation:GetComponentsInChildren(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function UnityEngine_Animation:GetComponentsInChildren(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param result System_Collections_Generic_List`1[T]
function UnityEngine_Animation:GetComponentsInChildren(includeInactive, result)
end

--- @return CS_T[]
function UnityEngine_Animation:GetComponentsInChildren()
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_Animation:GetComponentsInChildren(results)
end

--- @return UnityEngine_Component
--- @param t System_Type
function UnityEngine_Animation:GetComponentInParent(t)
end

--- @return CS_T
function UnityEngine_Animation:GetComponentInParent()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_Animation:GetComponentsInParent(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function UnityEngine_Animation:GetComponentsInParent(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function UnityEngine_Animation:GetComponentsInParent(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_Animation:GetComponentsInParent(includeInactive, results)
end

--- @return CS_T[]
function UnityEngine_Animation:GetComponentsInParent()
end

--- @return UnityEngine_Component[]
--- @param type System_Type
function UnityEngine_Animation:GetComponents(type)
end

--- @return System_Void
--- @param type System_Type
--- @param results System_Collections_Generic_List`1[UnityEngine_Component]
function UnityEngine_Animation:GetComponents(type, results)
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_Animation:GetComponents(results)
end

--- @return CS_T[]
function UnityEngine_Animation:GetComponents()
end

--- @return System_Boolean
--- @param tag System_String
function UnityEngine_Animation:CompareTag(tag)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_Animation:SendMessageUpwards(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_Animation:SendMessageUpwards(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_Animation:SendMessageUpwards(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_Animation:SendMessageUpwards(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_Animation:SendMessage(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_Animation:SendMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_Animation:SendMessage(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_Animation:SendMessage(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_Animation:BroadcastMessage(methodName, parameter, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
function UnityEngine_Animation:BroadcastMessage(methodName, parameter)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_Animation:BroadcastMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_Animation:BroadcastMessage(methodName, options)
end

--- @return System_Int32
function UnityEngine_Animation:GetInstanceID()
end

--- @return System_Int32
function UnityEngine_Animation:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function UnityEngine_Animation:Equals(other)
end

--- @return System_String
function UnityEngine_Animation:ToString()
end

--- @return System_Type
function UnityEngine_Animation:GetType()
end
