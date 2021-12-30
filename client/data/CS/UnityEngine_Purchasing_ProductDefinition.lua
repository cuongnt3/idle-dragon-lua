--- @class UnityEngine_Purchasing_ProductDefinition
UnityEngine_Purchasing_ProductDefinition = Class(UnityEngine_Purchasing_ProductDefinition)

--- @return void
function UnityEngine_Purchasing_ProductDefinition:Ctor()
	--- @type System_String
	self.id = nil
	--- @type System_String
	self.storeSpecificId = nil
	--- @type UnityEngine_Purchasing_ProductType
	self.type = nil
	--- @type System_Boolean
	self.enabled = nil
	--- @type System_Collections_Generic_IEnumerable`1[UnityEngine_Purchasing_PayoutDefinition]
	self.payouts = nil
	--- @type UnityEngine_Purchasing_PayoutDefinition
	self.payout = nil
end

--- @return System_Boolean
--- @param obj System_Object
function UnityEngine_Purchasing_ProductDefinition:Equals(obj)
end

--- @return System_Int32
function UnityEngine_Purchasing_ProductDefinition:GetHashCode()
end

--- @return System_Type
function UnityEngine_Purchasing_ProductDefinition:GetType()
end

--- @return System_String
function UnityEngine_Purchasing_ProductDefinition:ToString()
end
