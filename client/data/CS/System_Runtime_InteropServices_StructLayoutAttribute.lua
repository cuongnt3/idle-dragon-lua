--- @class System_Runtime_InteropServices_StructLayoutAttribute
System_Runtime_InteropServices_StructLayoutAttribute = Class(System_Runtime_InteropServices_StructLayoutAttribute)

--- @return void
function System_Runtime_InteropServices_StructLayoutAttribute:Ctor()
	--- @type System_Runtime_InteropServices_LayoutKind
	self.Value = nil
	--- @type System_Object
	self.TypeId = nil
	--- @type System_Runtime_InteropServices_CharSet
	self.CharSet = nil
	--- @type System_Int32
	self.Pack = nil
	--- @type System_Int32
	self.Size = nil
end

--- @return System_Int32
function System_Runtime_InteropServices_StructLayoutAttribute:GetHashCode()
end

--- @return System_Boolean
function System_Runtime_InteropServices_StructLayoutAttribute:IsDefaultAttribute()
end

--- @return System_Boolean
--- @param obj System_Object
function System_Runtime_InteropServices_StructLayoutAttribute:Match(obj)
end

--- @return System_Boolean
--- @param obj System_Object
function System_Runtime_InteropServices_StructLayoutAttribute:Equals(obj)
end

--- @return System_Type
function System_Runtime_InteropServices_StructLayoutAttribute:GetType()
end

--- @return System_String
function System_Runtime_InteropServices_StructLayoutAttribute:ToString()
end
