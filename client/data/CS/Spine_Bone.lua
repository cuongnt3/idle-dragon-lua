--- @class Spine_Bone
Spine_Bone = Class(Spine_Bone)

--- @return void
function Spine_Bone:Ctor()
	--- @type Spine_BoneData
	self.Data = nil
	--- @type Spine_Skeleton
	self.Skeleton = nil
	--- @type Spine_Bone
	self.Parent = nil
	--- @type Spine_ExposedList`1[Spine_Bone]
	self.Children = nil
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
	--- @type System_Single
	self.AppliedRotation = nil
	--- @type System_Single
	self.AX = nil
	--- @type System_Single
	self.AY = nil
	--- @type System_Single
	self.AScaleX = nil
	--- @type System_Single
	self.AScaleY = nil
	--- @type System_Single
	self.AShearX = nil
	--- @type System_Single
	self.AShearY = nil
	--- @type System_Single
	self.A = nil
	--- @type System_Single
	self.B = nil
	--- @type System_Single
	self.C = nil
	--- @type System_Single
	self.D = nil
	--- @type System_Single
	self.WorldX = nil
	--- @type System_Single
	self.WorldY = nil
	--- @type System_Single
	self.WorldRotationX = nil
	--- @type System_Single
	self.WorldRotationY = nil
	--- @type System_Single
	self.WorldScaleX = nil
	--- @type System_Single
	self.WorldScaleY = nil
	--- @type System_Single
	self.WorldToLocalRotationX = nil
	--- @type System_Single
	self.WorldToLocalRotationY = nil
	--- @type System_Boolean
	self.yDown = nil
end

--- @return System_Void
function Spine_Bone:Update()
end

--- @return System_Void
function Spine_Bone:UpdateWorldTransform()
end

--- @return System_Void
--- @param x System_Single
--- @param y System_Single
--- @param rotation System_Single
--- @param scaleX System_Single
--- @param scaleY System_Single
--- @param shearX System_Single
--- @param shearY System_Single
function Spine_Bone:UpdateWorldTransform(x, y, rotation, scaleX, scaleY, shearX, shearY)
end

--- @return System_Void
function Spine_Bone:SetToSetupPose()
end

--- @return System_Void
--- @param worldX System_Single
--- @param worldY System_Single
--- @param localX System_Single&
--- @param localY System_Single&
function Spine_Bone:WorldToLocal(worldX, worldY, localX, localY)
end

--- @return System_Void
--- @param localX System_Single
--- @param localY System_Single
--- @param worldX System_Single&
--- @param worldY System_Single&
function Spine_Bone:LocalToWorld(localX, localY, worldX, worldY)
end

--- @return System_Single
--- @param worldRotation System_Single
function Spine_Bone:WorldToLocalRotation(worldRotation)
end

--- @return System_Single
--- @param localRotation System_Single
function Spine_Bone:LocalToWorldRotation(localRotation)
end

--- @return System_Void
--- @param degrees System_Single
function Spine_Bone:RotateWorld(degrees)
end

--- @return System_String
function Spine_Bone:ToString()
end

--- @return System_Boolean
--- @param obj System_Object
function Spine_Bone:Equals(obj)
end

--- @return System_Int32
function Spine_Bone:GetHashCode()
end

--- @return System_Type
function Spine_Bone:GetType()
end
