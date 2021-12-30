--- @class UnityEngine_AnimationClip
UnityEngine_AnimationClip = Class(UnityEngine_AnimationClip)

--- @return void
function UnityEngine_AnimationClip:Ctor()
	--- @type UnityEngine_AnimationEvent[]
	self.events = nil
	--- @type System_Single
	self.length = nil
	--- @type System_Single
	self.frameRate = nil
	--- @type UnityEngine_WrapMode
	self.wrapMode = nil
	--- @type UnityEngine_Bounds
	self.localBounds = nil
	--- @type System_Boolean
	self.legacy = nil
	--- @type System_Boolean
	self.humanMotion = nil
	--- @type System_Boolean
	self.empty = nil
	--- @type System_Boolean
	self.hasGenericRootTransform = nil
	--- @type System_Boolean
	self.hasMotionFloatCurves = nil
	--- @type System_Boolean
	self.hasMotionCurves = nil
	--- @type System_Boolean
	self.hasRootCurves = nil
	--- @type System_Single
	self.averageDuration = nil
	--- @type System_Single
	self.averageAngularSpeed = nil
	--- @type UnityEngine_Vector3
	self.averageSpeed = nil
	--- @type System_Single
	self.apparentSpeed = nil
	--- @type System_Boolean
	self.isLooping = nil
	--- @type System_Boolean
	self.isHumanMotion = nil
	--- @type System_Boolean
	self.isAnimatorMotion = nil
	--- @type System_String
	self.name = nil
	--- @type UnityEngine_HideFlags
	self.hideFlags = nil
end

--- @return System_Void
--- @param evt UnityEngine_AnimationEvent
function UnityEngine_AnimationClip:AddEvent(evt)
end

--- @return System_Void
--- @param go UnityEngine_GameObject
--- @param time System_Single
function UnityEngine_AnimationClip:SampleAnimation(go, time)
end

--- @return System_Void
--- @param relativePath System_String
--- @param type System_Type
--- @param propertyName System_String
--- @param curve UnityEngine_AnimationCurve
function UnityEngine_AnimationClip:SetCurve(relativePath, type, propertyName, curve)
end

--- @return System_Void
function UnityEngine_AnimationClip:EnsureQuaternionContinuity()
end

--- @return System_Void
function UnityEngine_AnimationClip:ClearCurves()
end

--- @return System_Boolean
--- @param val System_Boolean
function UnityEngine_AnimationClip:ValidateIfRetargetable(val)
end

--- @return System_Int32
function UnityEngine_AnimationClip:GetInstanceID()
end

--- @return System_Int32
function UnityEngine_AnimationClip:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function UnityEngine_AnimationClip:Equals(other)
end

--- @return System_String
function UnityEngine_AnimationClip:ToString()
end

--- @return System_Type
function UnityEngine_AnimationClip:GetType()
end
