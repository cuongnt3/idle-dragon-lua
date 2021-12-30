require "lua.client.core.network.purchase.PurchaseRequest"
require "lua.client.core.iap.IAPReceiptFactory"

local MAX_RETRY = 3

--- @class IAPMgr
IAPMgr = Class(IAPMgr)

--- @return void
function IAPMgr:Ctor()
    --- @type CS_IAPMgr
    self.iapMgr = zgUnity.iapMgr
    --- @type boolean
    self.isPurchasing = false
    --- @type boolean
    self.initialized = false
    ---@type EventDispatcherListener
    self.onPurchaseListener = nil
    --- @type number
    self.numberRetryInitPurchase = 0
    --- @type function
    self.onInitializedComplete = nil
    --- @type boolean
    self.isAvailableToRequestPendingPurchase = false
    self:InitListener()
    self:OnInitializedComplete()
    self:OnPurchaseComplete()
end

--- @return void
function IAPMgr:InitListener()
    self.onPurchaseListener = RxMgr.purchaseProduct:Subscribe(RxMgr.CreateFunction(self, self.OnPurchaseProduct))
end

--- @return void
function IAPMgr:RemoveListener()
    if self.onPurchaseListener then
        self.onPurchaseListener:Unsubscribe()
    end
end

--- @return void
function IAPMgr:InitProduct()
    if IS_VIET_NAM_VERSION then
        self:OnPlayerIdLoggedIn()
        zg.sungameMgr:InitProduct()
        return
    end

    if self.initialized then
        self.iapMgr:CheckPendingReceipt()
    else
        local packBaseDict = ResourceMgr.GetPurchaseConfig():GetAllPackBase()
        --- @param value ProductConfig
        for key, value in pairs(packBaseDict:GetItems()) do
            if value.isFree ~= true then
                self.iapMgr:AddProduct(key, value.androidPackageName, value.iosPackageName)
            end
        end
        self:InitPurchasing()
    end
end

function IAPMgr:InitPurchasing()
    self.numberRetryInitPurchase = self.numberRetryInitPurchase + 1
    self.iapMgr:InitPurchasing()
end

--- @return void
function IAPMgr:OnInitializedComplete()
    --PurchasingUnavailable = 0,
    --NoProductsAvailable = 1,
    --AppNotKnown = 2
    --- @param error number -1: ok
    self.iapMgr.onInitializedComplete = function(error)
        if error == -1 then
            self.initialized = true
            if self.onInitializedComplete ~= nil then
                self.onInitializedComplete()
            end
        else
            if self.numberRetryInitPurchase < MAX_RETRY then
                self:InitPurchasing()
            else
                if self.onInitializedComplete ~= nil then
                    self.onInitializedComplete()
                else
                    XDebug.Log("initialize nil")
                end
                XDebug.Warning(string.format("Init purchase failed: %d", error))
            end
        end
    end
end

--- @param productId string
function IAPMgr:ShowInitPurchaseFailed(productId)
    local noCallback = function()
        zg.audioMgr:PlaySfxUi(SfxUiType.BACK)
    end
    local yesCallback = function()
        PopupMgr.ShowPopup(UIPopupName.UIPopupWaiting, OpCode.PURCHASE_RAW_PACK)
        zg.audioMgr:PlaySfxUi(SfxUiType.CONFIRM)
        Coroutine.start(function()
            coroutine.waitforseconds(1)
            if self.onInitializedComplete == nil then
                self.onInitializedComplete = function()
                    self.onInitializedComplete = nil
                    self:OnPurchaseProduct(productId)
                    PopupMgr.HidePopup(UIPopupName.UIPopupWaiting)
                end
            end
            self.numberRetryInitPurchase = 0
            self:InitPurchasing()
        end)
    end
    PopupUtils.ShowPopupNotificationYesNo(LanguageUtils.LocalizeCommon("init_proceed_failed"), noCallback, yesCallback)
end

--- @return void
--- @param productId string
function IAPMgr:OnPurchaseProduct(productId)
    local productConfig = ResourceMgr.GetPurchaseConfig():GetPackBase(productId)
    if productConfig == nil then
        XDebug.Error("Product config not found: " .. productId);
        return
    end
    XDebug.Log("Purchase product: " .. tostring(productId))
    if productConfig.isFree then
        PurchaseRequest.FreeRequest(productConfig)
        return
    end

    if IS_PBE_VERSION then
        self:ShowDenyPurchasePbe()
        return
    end

    if (IS_VIET_NAM_PURCHASE == false and self.initialized == false) then
        self:ShowInitPurchaseFailed(productId)
        return
    end

    if IS_MOBILE_PLATFORM then
        zg.playerData.waitingPauseAction = true
        if IS_VIET_NAM_PURCHASE then
            zg.sungameMgr:PurchaseProduct(productConfig)
        else
            UIPopupWaitingUtils.ShowWaiting()
            self.iapMgr:Purchase(productId)
        end
    else
        local receipt = IAPReceiptFactory.GetReceipt(productConfig.androidPackageName)
        PurchaseRequest.Purchasing(productConfig, receipt)
    end
end

--- @return void
function IAPMgr:OnPurchaseComplete()
    --- @param purchaseResponseCode PurchaseResponseCode
    --- @param content string
    self.iapMgr.onPurchaseComplete = function(purchaseResponseCode, content)
        UIPopupWaitingUtils.StopWaitingCoroutine()

        if purchaseResponseCode == PurchaseResponseCode.Success then
            local receipt = IAPReceiptFactory.GetReceipt(content)
            self:OnPurchaseSuccessWithReceipt(receipt)
        elseif purchaseResponseCode == PurchaseResponseCode.DuplicateTransaction then
            self.iapMgr:CheckPendingReceipt()
        else
            if purchaseResponseCode == PurchaseResponseCode.Unknown then
                self:ShowPurchaseFailed(content)
            end
        end
    end
end

--- @param receipt {pack_name}
function IAPMgr:OnPurchaseSuccessWithReceipt(receipt)
    local packageName = receipt.pack_name
    local productConfig = ResourceMgr.GetPurchaseConfig():GetProductByPackage(packageName)
    local productId = productConfig.productID
    if IS_VIET_NAM_PURCHASE then
        self:CheckRequestPendingPurchase()
    else
        PurchaseRequest.Purchasing(productConfig, receipt, function(isSuccess, isTesterOrder)
            print("ConfirmPendingPurchase: ", productId)
            print("IsTesterOrder ", isTesterOrder)
            self.iapMgr:ConfirmPendingPurchase(productId)
            if isSuccess and isTesterOrder == false then
                --- Fire tracking event
                TrackingUtils.SetPurchase(receipt)
            end
        end)
    end
end

--- @param productId string
function IAPMgr:ShowPurchaseFailed(productId)
    --local noCallback = function()
    --    zg.audioMgr:PlaySfxUi(SfxUiType.BACK)
    --end
    --local yesCallback = function()
    --    zg.audioMgr:PlaySfxUi(SfxUiType.CONFIRM)
    --    if productId ~= nil then
    --        self:OnPurchaseProduct(productId)
    --    end
    --end
    --PopupUtils.ShowPopupNotificationYesNo(LanguageUtils.LocalizeCommon("init_proceed_failed"), noCallback, yesCallback)

    PopupUtils.ShowPopupNotificationOK(LanguageUtils.LocalizeCommon("init_proceed_failed"), function()
        SceneMgr.RequestAndResetToMainArea()
    end)
end

--- @return string
--- @param productId
function IAPMgr:GetLocalPrizeString(productId)
    assert(productId)
    if IS_VIET_NAM_VERSION then
        return zg.sungameMgr:GetLocalPrizeString(productId)
    end
    if self.initialized then
        local product = self.iapMgr.Products:WithID(productId)
        if product ~= nil and product.availableToPurchase == true then
            return product.metadata.localizedPriceString
        end
    else
        return self:GetConfigPrice(productId)
    end
end

function IAPMgr:GetConfigPrice(productId)
    local productConfig = ResourceMgr.GetPurchaseConfig():GetPackBase(productId)
    return string.format("%s$", productConfig.dollarPrice)
end

--- @return string
function IAPMgr:OnAllPlayerDataLoaded()
    if IS_VIET_NAM_PURCHASE and zg.sungameMgr ~= nil then
        self.isAvailableToRequestPendingPurchase = true
    end
end

--- @return string
function IAPMgr:CheckRequestPendingPurchase()
    if self.isAvailableToRequestPendingPurchase == true
            and IS_VIET_NAM_PURCHASE
            and zg.sungameMgr ~= nil then
        zg.sungameMgr:RequestGetPendingPurchase()
        self.isAvailableToRequestPendingPurchase = false
    end
end

function IAPMgr:OnPlayerIdLoggedIn()
    if IS_VIET_NAM_VERSION then
        zg.sungameMgr:OnPlayerIdLoggedIn()
    end
end

function IAPMgr:ShowDenyPurchasePbe()
    zg.audioMgr:PlaySfxUi(SfxUiType.DENIED)
    SmartPoolUtils.ShowShortNotification(LanguageUtils.LocalizeCommon("cannot_purchase_in_pbe"))
end