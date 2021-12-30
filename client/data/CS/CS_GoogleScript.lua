--- @class CS_GoogleScript
CS_GoogleScript = Class(CS_GoogleScript)

--- @return void
function CS_GoogleScript:Ctor()
	--- @type System_Int32
	self.patch = nil
	--- @type System_Int32
	self.numberFiles = nil
	--- @type System_String
	self.hash = nil
	--- @type System_Int32
	self.lua = nil
	--- @type System_Int32
	self.csv = nil
end

--- @return System_Boolean
--- @param obj System_Object
function CS_GoogleScript:Equals(obj)
end

--- @return System_Int32
function CS_GoogleScript:GetHashCode()
end

--- @return System_Type
function CS_GoogleScript:GetType()
end

--- @return System_String
function CS_GoogleScript:ToString()
end
