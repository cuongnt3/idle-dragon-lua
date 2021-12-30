--- @class CS_SungameMgr
CS_SungameMgr = Class(CS_SungameMgr)

--- @return void
function CS_SungameMgr:Ctor()
	--- @type System_Action`4[System_Int32,System_String,System_String,System_String]
	self.onPurchaseCompleted = nil
	--- @type System_Action`1[System_Int32]
	self.onIapInitialized = nil
	--- @type System_String
	self.packageName = nil
end

--- @return System_Void
--- @param isProduction System_Boolean
function CS_SungameMgr:InitSungameSdk(isProduction)
end

--- @return System_Void
--- @param seId System_String
function CS_SungameMgr:BuyProduct(seId)
end

--- @return System_Void
--- @param productId System_String
--- @param _purchaseCallback System_Action`2[UnityEngine_Purchasing_Product,System_String]
function CS_SungameMgr:PurchaseProduct(productId, _purchaseCallback)
end

--- @return System_Void
--- @param productId System_String
function CS_SungameMgr:ConfirmPendingPurchase(productId)
end

--- @return System_Void
--- @param loginCallback System_Action`2[System_String,System_String]
--- @param playnowCallback System_Action`2[System_String,System_String]
--- @param fbLoginCallback System_Action`2[System_String,System_String]
function CS_SungameMgr:Login(loginCallback, playnowCallback, fbLoginCallback)
end

--- @return System_Void
function CS_SungameMgr:IapInitFailed()
end

--- @return System_Void
--- @param hash System_String
--- @param uuid System_String
--- @param partner System_Int32
--- @param isProduction System_Boolean
--- @param domainDev System_String
--- @param domainProduction System_String
--- @param apiDomainDev System_String
--- @param apiDomainProduction System_String
--- @param querryParams System_String
--- @param querryParamsIap System_String
--- @param querryParamsProduct System_String
function CS_SungameMgr:SetSungameDefine(hash, uuid, partner, isProduction, domainDev, domainProduction, apiDomainDev, apiDomainProduction, querryParams, querryParamsIap, querryParamsProduct)
end

--- @return System_Void
--- @param name System_String
--- @param androidProductId System_String
--- @param iosProductId System_String
function CS_SungameMgr:AddProduct(name, androidProductId, iosProductId)
end

--- @return System_Void
function CS_SungameMgr:InitPurchasing()
end

--- @return System_Void
--- @param packageName System_String
--- @param receipt System_String
--- @param product UnityEngine_Purchasing_Product
function CS_SungameMgr:OnPurchasePendingSuccess(packageName, receipt, product)
end

--- @return System_Void
--- @param code System_Int32
--- @param message System_String
--- @param receipt System_String
--- @param packageName System_String
function CS_SungameMgr:OnResponseLua(code, message, receipt, packageName)
end

--- @return System_Void
--- @param level System_Int32
--- @param roleId System_Int64
--- @param serverId System_Int32
--- @param accountId System_String
function CS_SungameMgr:OnPlayerIdLoggedIn(level, roleId, serverId, accountId)
end

--- @return System_Void
--- @param seId System_String
--- @param packageName System_String
function CS_SungameMgr:ReBuyPendingProduct(seId, packageName)
end

--- @return System_Void
--- @param code System_Int32
function CS_SungameMgr:OnIapInitialized(code)
end

--- @return System_String
--- @param packageName System_String
function CS_SungameMgr:GetLocalPrizeString(packageName)
end

--- @return System_Boolean
--- @param obj System_Object
function CS_SungameMgr:Equals(obj)
end

--- @return System_Int32
function CS_SungameMgr:GetHashCode()
end

--- @return System_Type
function CS_SungameMgr:GetType()
end

--- @return System_String
function CS_SungameMgr:ToString()
end
