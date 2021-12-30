--- @class Spine_Skeleton
Spine_Skeleton = Class(Spine_Skeleton)

--- @return void
function Spine_Skeleton:Ctor()
	--- @type Spine_SkeletonData
	self.Data = nil
	--- @type Spine_ExposedList`1[Spine_Bone]
	self.Bones = nil
	--- @type Spine_ExposedList`1[Spine_IUpdatable]
	self.UpdateCacheList = nil
	--- @type Spine_ExposedList`1[Spine_Slot]
	self.Slots = nil
	--- @type Spine_ExposedList`1[Spine_Slot]
	self.DrawOrder = nil
	--- @type Spine_ExposedList`1[Spine_IkConstraint]
	self.IkConstraints = nil
	--- @type Spine_ExposedList`1[Spine_PathConstraint]
	self.PathConstraints = nil
	--- @type Spine_ExposedList`1[Spine_TransformConstraint]
	self.TransformConstraints = nil
	--- @type Spine_Skin
	self.Skin = nil
	--- @type System_Single
	self.R = nil
	--- @type System_Single
	self.G = nil
	--- @type System_Single
	self.B = nil
	--- @type System_Single
	self.A = nil
	--- @type System_Single
	self.Time = nil
	--- @type System_Single
	self.X = nil
	--- @type System_Single
	self.Y = nil
	--- @type System_Boolean
	self.FlipX = nil
	--- @type System_Boolean
	self.FlipY = nil
	--- @type Spine_Bone
	self.RootBone = nil
end

--- @return System_Void
function Spine_Skeleton:UpdateCache()
end

--- @return System_Void
function Spine_Skeleton:UpdateWorldTransform()
end

--- @return System_Void
function Spine_Skeleton:SetToSetupPose()
end

--- @return System_Void
function Spine_Skeleton:SetBonesToSetupPose()
end

--- @return System_Void
function Spine_Skeleton:SetSlotsToSetupPose()
end

--- @return Spine_Bone
--- @param boneName System_String
function Spine_Skeleton:FindBone(boneName)
end

--- @return System_Int32
--- @param boneName System_String
function Spine_Skeleton:FindBoneIndex(boneName)
end

--- @return Spine_Slot
--- @param slotName System_String
function Spine_Skeleton:FindSlot(slotName)
end

--- @return System_Int32
--- @param slotName System_String
function Spine_Skeleton:FindSlotIndex(slotName)
end

--- @return System_Void
--- @param skinName System_String
function Spine_Skeleton:SetSkin(skinName)
end

--- @return System_Void
--- @param newSkin Spine_Skin
function Spine_Skeleton:SetSkin(newSkin)
end

--- @return Spine_Attachment
--- @param slotName System_String
--- @param attachmentName System_String
function Spine_Skeleton:GetAttachment(slotName, attachmentName)
end

--- @return Spine_Attachment
--- @param slotIndex System_Int32
--- @param attachmentName System_String
function Spine_Skeleton:GetAttachment(slotIndex, attachmentName)
end

--- @return System_Void
--- @param slotName System_String
--- @param attachmentName System_String
function Spine_Skeleton:SetAttachment(slotName, attachmentName)
end

--- @return Spine_IkConstraint
--- @param constraintName System_String
function Spine_Skeleton:FindIkConstraint(constraintName)
end

--- @return Spine_TransformConstraint
--- @param constraintName System_String
function Spine_Skeleton:FindTransformConstraint(constraintName)
end

--- @return Spine_PathConstraint
--- @param constraintName System_String
function Spine_Skeleton:FindPathConstraint(constraintName)
end

--- @return System_Void
--- @param delta System_Single
function Spine_Skeleton:Update(delta)
end

--- @return System_Void
--- @param x System_Single&
--- @param y System_Single&
--- @param width System_Single&
--- @param height System_Single&
--- @param vertexBuffer System_Single[]&
function Spine_Skeleton:GetBounds(x, y, width, height, vertexBuffer)
end

--- @return System_Boolean
--- @param obj System_Object
function Spine_Skeleton:Equals(obj)
end

--- @return System_Int32
function Spine_Skeleton:GetHashCode()
end

--- @return System_Type
function Spine_Skeleton:GetType()
end

--- @return System_String
function Spine_Skeleton:ToString()
end
