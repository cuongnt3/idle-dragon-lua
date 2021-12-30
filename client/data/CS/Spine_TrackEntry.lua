--- @class Spine_TrackEntry
Spine_TrackEntry = Class(Spine_TrackEntry)

--- @return void
function Spine_TrackEntry:Ctor()
	--- @type System_Int32
	self.TrackIndex = nil
	--- @type Spine_Animation
	self.Animation = nil
	--- @type System_Boolean
	self.Loop = nil
	--- @type System_Single
	self.Delay = nil
	--- @type System_Single
	self.TrackTime = nil
	--- @type System_Single
	self.TrackEnd = nil
	--- @type System_Single
	self.AnimationStart = nil
	--- @type System_Single
	self.AnimationEnd = nil
	--- @type System_Single
	self.AnimationLast = nil
	--- @type System_Single
	self.AnimationTime = nil
	--- @type System_Single
	self.TimeScale = nil
	--- @type System_Single
	self.Alpha = nil
	--- @type System_Single
	self.EventThreshold = nil
	--- @type System_Single
	self.AttachmentThreshold = nil
	--- @type System_Single
	self.DrawOrderThreshold = nil
	--- @type Spine_TrackEntry
	self.Next = nil
	--- @type System_Boolean
	self.IsComplete = nil
	--- @type System_Single
	self.MixTime = nil
	--- @type System_Single
	self.MixDuration = nil
	--- @type Spine_TrackEntry
	self.MixingFrom = nil
	--- @type Spine_AnimationState+TrackEntryDelegate
	self.Complete = nil
	--- @type Spine_AnimationState+TrackEntryDelegate
	self.End = nil
	--- @type Spine_AnimationState+TrackEntryDelegate
	self.Start = nil

end

--- @return System_Void
function Spine_TrackEntry:Reset()
end

--- @return System_Void
function Spine_TrackEntry:ResetRotationDirections()
end

--- @return System_String
function Spine_TrackEntry:ToString()
end

--- @return System_Boolean
--- @param obj System_Object
function Spine_TrackEntry:Equals(obj)
end

--- @return System_Int32
function Spine_TrackEntry:GetHashCode()
end

--- @return System_Type
function Spine_TrackEntry:GetType()
end
