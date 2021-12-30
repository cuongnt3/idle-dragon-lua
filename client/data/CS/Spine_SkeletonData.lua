--- @class Spine_SkeletonData
Spine_SkeletonData = Class(Spine_SkeletonData)

--- @return void
function Spine_SkeletonData:Ctor()
	--- @type System_String
	self.Name = nil
	--- @type Spine_ExposedList`1[Spine_BoneData]
	self.Bones = nil
	--- @type Spine_ExposedList`1[Spine_SlotData]
	self.Slots = nil
	--- @type Spine_ExposedList`1[Spine_Skin]
	self.Skins = nil
	--- @type Spine_Skin
	self.DefaultSkin = nil
	--- @type Spine_ExposedList`1[Spine_EventData]
	self.Events = nil
	--- @type Spine_ExposedList`1[Spine_Animation]
	self.Animations = nil
	--- @type Spine_ExposedList`1[Spine_IkConstraintData]
	self.IkConstraints = nil
	--- @type Spine_ExposedList`1[Spine_TransformConstraintData]
	self.TransformConstraints = nil
	--- @type Spine_ExposedList`1[Spine_PathConstraintData]
	self.PathConstraints = nil
	--- @type System_Single
	self.Width = nil
	--- @type System_Single
	self.Height = nil
	--- @type System_String
	self.Version = nil
	--- @type System_String
	self.Hash = nil
	--- @type System_String
	self.ImagesPath = nil
	--- @type System_Single
	self.Fps = nil
end

--- @return Spine_BoneData
--- @param boneName System_String
function Spine_SkeletonData:FindBone(boneName)
end

--- @return System_Int32
--- @param boneName System_String
function Spine_SkeletonData:FindBoneIndex(boneName)
end

--- @return Spine_SlotData
--- @param slotName System_String
function Spine_SkeletonData:FindSlot(slotName)
end

--- @return System_Int32
--- @param slotName System_String
function Spine_SkeletonData:FindSlotIndex(slotName)
end

--- @return Spine_Skin
--- @param skinName System_String
function Spine_SkeletonData:FindSkin(skinName)
end

--- @return Spine_EventData
--- @param eventDataName System_String
function Spine_SkeletonData:FindEvent(eventDataName)
end

--- @return Spine_Animation
--- @param animationName System_String
function Spine_SkeletonData:FindAnimation(animationName)
end

--- @return Spine_IkConstraintData
--- @param constraintName System_String
function Spine_SkeletonData:FindIkConstraint(constraintName)
end

--- @return Spine_TransformConstraintData
--- @param constraintName System_String
function Spine_SkeletonData:FindTransformConstraint(constraintName)
end

--- @return Spine_PathConstraintData
--- @param constraintName System_String
function Spine_SkeletonData:FindPathConstraint(constraintName)
end

--- @return System_Int32
--- @param pathConstraintName System_String
function Spine_SkeletonData:FindPathConstraintIndex(pathConstraintName)
end

--- @return System_String
function Spine_SkeletonData:ToString()
end

--- @return System_Boolean
--- @param obj System_Object
function Spine_SkeletonData:Equals(obj)
end

--- @return System_Int32
function Spine_SkeletonData:GetHashCode()
end

--- @return System_Type
function Spine_SkeletonData:GetType()
end
