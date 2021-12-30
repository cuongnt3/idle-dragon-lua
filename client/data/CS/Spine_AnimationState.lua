--- @class Spine_AnimationState
Spine_AnimationState = Class(Spine_AnimationState)

--- @return void
function Spine_AnimationState:Ctor()
	--- @type Spine_AnimationStateData
	self.Data = nil
	--- @type Spine_ExposedList`1[Spine_TrackEntry]
	self.Tracks = nil
	--- @type System_Single
	self.TimeScale = nil
end

--- @return System_Void
--- @param delta System_Single
function Spine_AnimationState:Update(delta)
end

--- @return System_Boolean
--- @param skeleton Spine_Skeleton
function Spine_AnimationState:Apply(skeleton)
end

--- @return System_Void
function Spine_AnimationState:ClearTracks()
end

--- @return System_Void
--- @param trackIndex System_Int32
function Spine_AnimationState:ClearTrack(trackIndex)
end

--- @return Spine_TrackEntry
--- @param trackIndex System_Int32
--- @param animationName System_String
--- @param loop System_Boolean
function Spine_AnimationState:SetAnimation(trackIndex, animationName, loop)
end

--- @return Spine_TrackEntry
--- @param trackIndex System_Int32
--- @param animation Spine_Animation
--- @param loop System_Boolean
function Spine_AnimationState:SetAnimation(trackIndex, animation, loop)
end

--- @return Spine_TrackEntry
--- @param trackIndex System_Int32
--- @param animationName System_String
--- @param loop System_Boolean
--- @param delay System_Single
function Spine_AnimationState:AddAnimation(trackIndex, animationName, loop, delay)
end

--- @return Spine_TrackEntry
--- @param trackIndex System_Int32
--- @param animation Spine_Animation
--- @param loop System_Boolean
--- @param delay System_Single
function Spine_AnimationState:AddAnimation(trackIndex, animation, loop, delay)
end

--- @return Spine_TrackEntry
--- @param trackIndex System_Int32
--- @param mixDuration System_Single
function Spine_AnimationState:SetEmptyAnimation(trackIndex, mixDuration)
end

--- @return Spine_TrackEntry
--- @param trackIndex System_Int32
--- @param mixDuration System_Single
--- @param delay System_Single
function Spine_AnimationState:AddEmptyAnimation(trackIndex, mixDuration, delay)
end

--- @return System_Void
--- @param mixDuration System_Single
function Spine_AnimationState:SetEmptyAnimations(mixDuration)
end

--- @return Spine_TrackEntry
--- @param trackIndex System_Int32
function Spine_AnimationState:GetCurrent(trackIndex)
end

--- @return System_String
function Spine_AnimationState:ToString()
end

--- @return System_Boolean
--- @param obj System_Object
function Spine_AnimationState:Equals(obj)
end

--- @return System_Int32
function Spine_AnimationState:GetHashCode()
end

--- @return System_Type
function Spine_AnimationState:GetType()
end
