--- @class UnityEngine_Purchasing_ProductCollection
UnityEngine_Purchasing_ProductCollection = Class(UnityEngine_Purchasing_ProductCollection)

--- @return void
function UnityEngine_Purchasing_ProductCollection:Ctor()
	--- @type System_Collections_Generic_HashSet`1[UnityEngine_Purchasing_Product]
	self.set = nil
	--- @type UnityEngine_Purchasing_Product[]
	self.all = nil
end

--- @return UnityEngine_Purchasing_Product
--- @param id System_String
function UnityEngine_Purchasing_ProductCollection:WithID(id)
end

--- @return UnityEngine_Purchasing_Product
--- @param id System_String
function UnityEngine_Purchasing_ProductCollection:WithStoreSpecificID(id)
end

--- @return System_Boolean
--- @param obj System_Object
function UnityEngine_Purchasing_ProductCollection:Equals(obj)
end

--- @return System_Int32
function UnityEngine_Purchasing_ProductCollection:GetHashCode()
end

--- @return System_Type
function UnityEngine_Purchasing_ProductCollection:GetType()
end

--- @return System_String
function UnityEngine_Purchasing_ProductCollection:ToString()
end
