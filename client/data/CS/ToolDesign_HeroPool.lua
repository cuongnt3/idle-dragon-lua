--- @class ToolDesign_HeroPool
ToolDesign_HeroPool = Class(ToolDesign_HeroPool)

--- @return void
function ToolDesign_HeroPool:Ctor()
	--- @type System_String
	self.name = nil
	--- @type UnityEngine_HideFlags
	self.hideFlags = nil
	--- @type System_Collections_Generic_List`1[ToolDesign_HeroData]
	self.heroList = nil
end

--- @return System_Void
function ToolDesign_HeroPool:SetDirty()
end

--- @return System_Int32
function ToolDesign_HeroPool:GetInstanceID()
end

--- @return System_Int32
function ToolDesign_HeroPool:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function ToolDesign_HeroPool:Equals(other)
end

--- @return System_String
function ToolDesign_HeroPool:ToString()
end

--- @return System_Type
function ToolDesign_HeroPool:GetType()
end
