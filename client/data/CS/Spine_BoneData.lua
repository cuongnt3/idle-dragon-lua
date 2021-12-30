--- @class Spine_BoneData
Spine_BoneData = Class(Spine_BoneData)

--- @return void
function Spine_BoneData:Ctor()
	--- @type System_Int32
	self.Index = nil
	--- @type System_String
	self.Name = nil
	--- @type Spine_BoneData
	self.Parent = nil
	--- @type System_Single
	self.Length = nil
	--- @type System_Single
	self.X = nil
	--- @type System_Single
	self.Y = nil
	--- @type System_Single
	self.Rotation = nil
	--- @type System_Single
	self.ScaleX = nil
	--- @type System_Single
	self.ScaleY = nil
	--- @type System_Single
	self.ShearX = nil
	--- @type System_Single
	self.ShearY = nil
	--- @type Spine_TransformMode
	self.TransformMode = nil
end

--- @return System_String
function Spine_BoneData:ToString()
end

--- @return System_Boolean
--- @param obj System_Object
function Spine_BoneData:Equals(obj)
end

--- @return System_Int32
function Spine_BoneData:GetHashCode()
end

--- @return System_Type
function Spine_BoneData:GetType()
end
