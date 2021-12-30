--- @class UnityEngine_Purchasing_Product
UnityEngine_Purchasing_Product = Class(UnityEngine_Purchasing_Product)

--- @return void
function UnityEngine_Purchasing_Product:Ctor()
	--- @type UnityEngine_Purchasing_ProductDefinition
	self.definition = nil
	--- @type UnityEngine_Purchasing_ProductMetadata
	self.metadata = nil
	--- @type System_Boolean
	self.availableToPurchase = nil
	--- @type System_String
	self.transactionID = nil
	--- @type System_Boolean
	self.hasReceipt = nil
	--- @type System_String
	self.receipt = nil
end

--- @return System_Boolean
--- @param obj System_Object
function UnityEngine_Purchasing_Product:Equals(obj)
end

--- @return System_Int32
function UnityEngine_Purchasing_Product:GetHashCode()
end

--- @return System_Type
function UnityEngine_Purchasing_Product:GetType()
end

--- @return System_String
function UnityEngine_Purchasing_Product:ToString()
end
