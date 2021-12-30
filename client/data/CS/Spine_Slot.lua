--- @class Spine_Slot
Spine_Slot = Class(Spine_Slot)

--- @return void
function Spine_Slot:Ctor()
	--- @type Spine_SlotData
	self.Data = nil
	--- @type Spine_Bone
	self.Bone = nil
	--- @type Spine_Skeleton
	self.Skeleton = nil
	--- @type System_Single
	self.R = nil
	--- @type System_Single
	self.G = nil
	--- @type System_Single
	self.B = nil
	--- @type System_Single
	self.A = nil
	--- @type System_Single
	self.R2 = nil
	--- @type System_Single
	self.G2 = nil
	--- @type System_Single
	self.B2 = nil
	--- @type System_Boolean
	self.HasSecondColor = nil
	--- @type Spine_Attachment
	self.Attachment = nil
	--- @type System_Single
	self.AttachmentTime = nil
	--- @type Spine_ExposedList`1[System_Single]
	self.AttachmentVertices = nil
end

--- @return System_Void
function Spine_Slot:SetToSetupPose()
end

--- @return System_String
function Spine_Slot:ToString()
end

--- @return System_Boolean
--- @param obj System_Object
function Spine_Slot:Equals(obj)
end

--- @return System_Int32
function Spine_Slot:GetHashCode()
end

--- @return System_Type
function Spine_Slot:GetType()
end
