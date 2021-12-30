--- @class CS_IAPMgr
CS_IAPMgr = Class(CS_IAPMgr)

--- @return void
function CS_IAPMgr:Ctor()
	--- @type UnityEngine_Purchasing_ProductCollection
	self.Products = nil
	--- @type System_Action`2[System_Int32,System_String]
	self.onPurchaseComplete = nil
	--- @type System_Action`1[System_Int32]
	self.onInitializedComplete = nil
end

--- @return System_Void
function CS_IAPMgr:InitPurchasing()
end

--- @return System_Void
--- @param name System_String
--- @param androidProductId System_String
--- @param iosProductId System_String
function CS_IAPMgr:AddProduct(name, androidProductId, iosProductId)
end

--- @return System_Void
--- @param controller UnityEngine_Purchasing_IStoreController
--- @param extensions UnityEngine_Purchasing_IExtensionProvider
function CS_IAPMgr:OnInitialized(controller, extensions)
end

--- @return UnityEngine_Purchasing_PurchaseProcessingResult
--- @param e UnityEngine_Purchasing_PurchaseEventArgs
function CS_IAPMgr:ProcessPurchase(e)
end

--- @return System_Void
--- @param item UnityEngine_Purchasing_Product
--- @param r UnityEngine_Purchasing_PurchaseFailureReason
function CS_IAPMgr:OnPurchaseFailed(item, r)
end

--- @return System_Void
--- @param error UnityEngine_Purchasing_InitializationFailureReason
function CS_IAPMgr:OnInitializeFailed(error)
end

--- @return System_Void
--- @param productID System_String
function CS_IAPMgr:Purchase(productID)
end

--- @return System_Void
--- @param productID System_String
function CS_IAPMgr:ConfirmPendingPurchase(productID)
end

--- @return System_Void
function CS_IAPMgr:CheckPendingReceipt()
end

--- @return System_String
--- @param productId System_String
function CS_IAPMgr:GetLocalizePrice(productId)
end

--- @return System_Boolean
--- @param obj System_Object
function CS_IAPMgr:Equals(obj)
end

--- @return System_Int32
function CS_IAPMgr:GetHashCode()
end

--- @return System_Type
function CS_IAPMgr:GetType()
end

--- @return System_String
function CS_IAPMgr:ToString()
end
