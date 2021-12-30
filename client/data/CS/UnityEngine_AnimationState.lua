--- @class UnityEngine_AnimationState
UnityEngine_AnimationState = Class(UnityEngine_AnimationState)

--- @return void
function UnityEngine_AnimationState:Ctor()
	--- @type System_Boolean
	self.enabled = nil
	--- @type System_Single
	self.weight = nil
	--- @type UnityEngine_WrapMode
	self.wrapMode = nil
	--- @type System_Single
	self.time = nil
	--- @type System_Single
	self.normalizedTime = nil
	--- @type System_Single
	self.speed = nil
	--- @type System_Single
	self.normalizedSpeed = nil
	--- @type System_Single
	self.length = nil
	--- @type System_Int32
	self.layer = nil
	--- @type UnityEngine_AnimationClip
	self.clip = nil
	--- @type System_String
	self.name = nil
	--- @type UnityEngine_AnimationBlendMode
	self.blendMode = nil
end

--- @return System_Void
--- @param mix UnityEngine_Transform
--- @param recursive System_Boolean
function UnityEngine_AnimationState:AddMixingTransform(mix, recursive)
end

--- @return System_Void
--- @param mix UnityEngine_Transform
function UnityEngine_AnimationState:AddMixingTransform(mix)
end

--- @return System_Void
--- @param mix UnityEngine_Transform
function UnityEngine_AnimationState:RemoveMixingTransform(mix)
end

--- @return System_Boolean
--- @param o System_Object
function UnityEngine_AnimationState:Equals(o)
end

--- @return System_Int32
function UnityEngine_AnimationState:GetHashCode()
end

--- @return System_Type
function UnityEngine_AnimationState:GetType()
end

--- @return System_String
function UnityEngine_AnimationState:ToString()
end
