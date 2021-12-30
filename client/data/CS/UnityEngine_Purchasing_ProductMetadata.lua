--- @class UnityEngine_Purchasing_ProductMetadata
UnityEngine_Purchasing_ProductMetadata = Class(UnityEngine_Purchasing_ProductMetadata)

--- @return void
function UnityEngine_Purchasing_ProductMetadata:Ctor()
	--- @type System_String
	self.localizedPriceString = nil
	--- @type System_String
	self.localizedTitle = nil
	--- @type System_String
	self.localizedDescription = nil
	--- @type System_String
	self.isoCurrencyCode = nil
	--- @type System_Decimal
	self.localizedPrice = nil
end

--- @return System_Boolean
--- @param obj System_Object
function UnityEngine_Purchasing_ProductMetadata:Equals(obj)
end

--- @return System_Int32
function UnityEngine_Purchasing_ProductMetadata:GetHashCode()
end

--- @return System_Type
function UnityEngine_Purchasing_ProductMetadata:GetType()
end

--- @return System_String
function UnityEngine_Purchasing_ProductMetadata:ToString()
end
