--- @class Spine_SlotData
Spine_SlotData = Class(Spine_SlotData)

--- @return void
function Spine_SlotData:Ctor()
	--- @type System_Int32
	self.Index = nil
	--- @type System_String
	self.Name = nil
	--- @type Spine_BoneData
	self.BoneData = nil
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
	--- @type System_String
	self.AttachmentName = nil
	--- @type Spine_BlendMode
	self.BlendMode = nil
end

--- @return System_String
function Spine_SlotData:ToString()
end

--- @return System_Boolean
--- @param obj System_Object
function Spine_SlotData:Equals(obj)
end

--- @return System_Int32
function Spine_SlotData:GetHashCode()
end

--- @return System_Type
function Spine_SlotData:GetType()
end
