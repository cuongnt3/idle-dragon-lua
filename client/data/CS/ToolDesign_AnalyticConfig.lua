--- @class ToolDesign_AnalyticConfig
ToolDesign_AnalyticConfig = Class(ToolDesign_AnalyticConfig)

--- @return void
function ToolDesign_AnalyticConfig:Ctor()
	--- @type System_String
	self.name = nil
	--- @type UnityEngine_HideFlags
	self.hideFlags = nil
	--- @type System_Int32
	self.attackerNumberHeroInBattle = nil
	--- @type System_Int32
	self.defenderNumberHeroInBattle = nil
	--- @type System_Int32
	self.numberRepeatBattle = nil
	--- @type ToolDesign_AnalyticConfig_Formation
	self.attackerFormation = nil
	--- @type ToolDesign_AnalyticConfig_Formation
	self.defenderFormation = nil
end

--- @return System_Void
function ToolDesign_AnalyticConfig:SetDirty()
end

--- @return System_Int32
function ToolDesign_AnalyticConfig:GetInstanceID()
end

--- @return System_Int32
function ToolDesign_AnalyticConfig:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function ToolDesign_AnalyticConfig:Equals(other)
end

--- @return System_String
function ToolDesign_AnalyticConfig:ToString()
end

--- @return System_Type
function ToolDesign_AnalyticConfig:GetType()
end
