--- @class UnityEngine_Purchasing_PayoutDefinition
UnityEngine_Purchasing_PayoutDefinition = Class(UnityEngine_Purchasing_PayoutDefinition)

--- @return void
function UnityEngine_Purchasing_PayoutDefinition:Ctor()
	--- @type UnityEngine_Purchasing_PayoutType
	self.type = nil
	--- @type System_String
	self.typeString = nil
	--- @type System_String
	self.subtype = nil
	--- @type System_Double
	self.quantity = nil
	--- @type System_String
	self.data = nil
	--- @type System_Int32
	self.MaxSubtypeLength = nil
	--- @type System_Int32
	self.MaxDataLength = nil
end

--- @return System_Boolean
--- @param obj System_Object
function UnityEngine_Purchasing_PayoutDefinition:Equals(obj)
end

--- @return System_Int32
function UnityEngine_Purchasing_PayoutDefinition:GetHashCode()
end

--- @return System_Type
function UnityEngine_Purchasing_PayoutDefinition:GetType()
end

--- @return System_String
function UnityEngine_Purchasing_PayoutDefinition:ToString()
end
