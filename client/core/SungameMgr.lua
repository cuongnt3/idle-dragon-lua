require "lua.client.core.SungameDefine"
local MAX_RETRY = 3
local PLATFORM_WEB = "web"

--- @class SungameMgr
SungameMgr = Class(SungameMgr)

function SungameMgr:Ctor()
    print("SungameMgr:Ctor")
    --- @type CS_SungameMgr
    self.csMgr = zgUnity.SungameMgr

    --- @type boolean
    self.initialized = false

    --- @type number
    self.numberRetryInitPurchase = 0

    self:InitPurchaseCallback()

    self:SetSungameDefine()

    RxMgr.applicationPause:Subscribe(RxMgr.CreateFunction(self, self.OnApplicationPause))
end

function SungameMgr:InitPurchaseCallback()
    self.csMgr.onIapInitialized = function(initCode)
        if initCode == -1 then
            self.initialized = true
        else
            if self.numberRetryInitPurchase < MAX_RETRY then
                self:InitPurchasing()
            else
                self.numberRetryInitPurchase = 0
                XDebug.Log("sungame initialize purchase failed")
            end
        end
    end
end

function SungameMgr:SetSungameDefine()
    self.csMgr:SetSungameDefine(SungameDefine.HASH, SungameDefine.UUID, SungameDefine.PARTNER, SungameDefine.IS_PROD,
            SungameDefine.DOMAIN_DEV, SungameDefine.DOMAIN_PROD, SungameDefine.API_DOMAIN_DEV, SungameDefine.API_DOMAIN_PROD,
            SungameDefine.QUERY_PARAMS, SungameDefine.QUERY_PARAMS_IAP, SungameDefine.QUERY_PARAMS_PRODUCT)
end

function SungameMgr:InitSdk()
    self.csMgr:InitSungameSdk(SungameDefine.IS_PROD)
    self.csMgr.onPurchaseCompleted = function(sungameIapResponseCode, message, receipt, receiptProductId)
        self:OnPurchaseCompletedHandler(sungameIapResponseCode, message, receipt, receiptProductId)
    end
end

--- @param sungameIapResponseCode SungameIapResponseCode
--- @param message string
--- @param receipt string
function SungameMgr:OnPurchaseCompletedHandler(sungameIapResponseCode, message, receipt, packageName)
    UIPopupWaitingUtils.StopWaitingCoroutine()

    print("Sg Purchase Code ", sungameIapResponseCode)
    print("Message ", LogUtils.ToDetail(message))
    print("Receipt ", LogUtils.ToDetail(receipt))
    sungameIapResponseCode = tonumber(sungameIapResponseCode)
    print("receiptProductId ", packageName)

    local productPackageName
    if packageName ~= nil and packageName ~= "" then
        productPackageName = packageName
    else
        productPackageName = self.purchasingProductConfig:GetPackageNameByDeviceOs()
    end
    if sungameIapResponseCode == SungameIapResponseCode.SUCCESS then
        self:RequestGetPendingPurchase(false)

        print("sungameIapResponseCode Success receiptProductId: ", packageName)
        local receiptTracking = IAPReceiptFactory.GetReceipt(receipt)
        if packageName ~= nil and packageName ~= "" then
            TrackingUtils.SetPurchase(receiptTracking)
            if self.purchasingProductConfig ~= nil
                    and self.purchasingProductConfig:GetPackageNameByDeviceOs() == packageName then
                PurchaseRequest.OnPurchaseProductConfigSuccess(self.purchasingProductConfig)
            else
                if SceneMgr.IsHomeScene() then
                    PopupUtils.ShowPopupNotificationOK(LanguageUtils.LocalizeCommon("need_reload_data"), function()
                        SceneMgr.RequestAndResetToMainArea()
                    end)
                end
            end
        else
            print("Purchase normal success")
            TrackingUtils.SetPurchase(receiptTracking)
            PurchaseRequest.OnPurchaseProductConfigSuccess(self.purchasingProductConfig)
        end
        self.csMgr:ConfirmPendingPurchase(productPackageName)
    elseif sungameIapResponseCode == SungameIapResponseCode.FROM_PENDING then
        local productConfig = ResourceMgr.GetPurchaseConfig():FindProductConfigFromPackageName(packageName)
        if productConfig ~= nil then
            local sungamePackId = productConfig:GetSungamePackId()
            print("Process pending Sungame Product ", sungamePackId)
            self.csMgr:ReBuyPendingProduct(sungamePackId, packageName)
        end
    else
        local productId
        if self.purchasingProductConfig ~= nil then
            productId = self.purchasingProductConfig.productID
        end
        print("ShowPurchaseFailed ", productId)
        zg.iapMgr:ShowPurchaseFailed(productId)
    end
end

--- @param productConfig ProductConfig
function SungameMgr:PurchaseProduct(productConfig)
    local confirmPurchase = function()
        UIPopupWaitingUtils.ShowWaiting()

        self.purchasingProductConfig = productConfig
        local sungamePackId = productConfig:GetSungamePackId()
        print("Purchase Sungame Product ", sungamePackId)
        self.csMgr:BuyProduct(sungamePackId)
    end

    --- @type AuthenticationInBound
    local authenticationInBound = zg.playerData:GetMethod(PlayerDataMethod.AUTHENTICATION)
    if authenticationInBound:IsAlreadySignInSungame() == false then
        local callbackYes = function()
            LoginUtils.BindAccountBySunGame(confirmPurchase)
        end
        PopupUtils.ShowPopupNotificationYesNo(LanguageUtils.LocalizeCommon("require_login_sungame_to_purchase"), nil, callbackYes)
    else
        confirmPurchase()
    end
end

function SungameMgr:RequestGetPendingPurchase(isShowPendingReward)
    if isShowPendingReward == nil then
        isShowPendingReward = true
    end
    print(">>>>> RequestGetPendingPurchase")
    local onReceived = function(result)
        --- @param buffer UnifiedNetwork_ByteBuf
        local onBufferReading = function(buffer)
            local orderCount = buffer:GetShort()
            local listSungameOrder = NetworkUtils.GetListDataInBound(buffer, SungameOrder.CreateByBuffer, orderCount)

            self:FireTrackingPurchaseFromWeb(listSungameOrder)

            if isShowPendingReward == true then
                local listReward = List()
                for i = 1, listSungameOrder:Count() do
                    --- @type SungameOrder
                    local sungameOrder = listSungameOrder:Get(i)
                    listReward = ClientConfigUtils.CombineListRewardInBound(listReward, sungameOrder.listReward)
                end
                if listReward:Count() > 0 then
                    PopupUtils.ShowRewardList(RewardInBound.GetItemIconDataList(listReward))
                    PlayerDataRequest.RequestAllResources()
                end
                print("Order Count ", orderCount)
                print("listSungameOrder ", listSungameOrder:Count())
            end
        end
        local onSuccess = function()

        end
        local onFailed = function()

        end
        NetworkUtils.ExecuteResult(result, onBufferReading, onSuccess, onFailed)
    end
    NetworkUtils.Request(OpCode.SUN_GAME_PENDING_ORDER_GET, nil, onReceived, false)
end

--- @param status PauseStatus
function SungameMgr:OnApplicationPause(status)
    if status == PauseStatus.UN_PAUSE or status == PauseStatus.FOCUS then
        --self:RequestGetPendingPurchase()
    end
end

function SungameMgr:Login(callbackLogin, callbackPlayNow, callbackFacebook)
    self.csMgr:Login(callbackLogin, callbackPlayNow, callbackFacebook)
end

function SungameMgr:InitProduct()
    if self.initialized == false then
        local packBaseDict = ResourceMgr.GetPurchaseConfig():GetAllPackBase()
        --- @param value ProductConfig
        for _, value in pairs(packBaseDict:GetItems()) do
            if value.isFree ~= true then
                local key = value:GetPackageNameByDeviceOs()
                self.csMgr:AddProduct(key, value.androidPackageName, value.iosPackageName)
            end
        end
    end
    self:InitPurchasing()
end

function SungameMgr:InitPurchasing()
    self.numberRetryInitPurchase = self.numberRetryInitPurchase + 1
    self.csMgr:InitPurchasing()
end

function SungameMgr:OnPlayerIdLoggedIn()
    --- @type BasicInfoInBound
    local basicInfoInBound = zg.playerData:GetMethod(PlayerDataMethod.BASIC_INFO)
    local level = basicInfoInBound.level
    local roleId = PlayerSettingData.playerId
    local serverId = PlayerSettingData.serverId
    local accountId = ""
    self.csMgr:OnPlayerIdLoggedIn(level, roleId, serverId, accountId)
end

--- @return string
--- @param productId
function SungameMgr:GetLocalPrizeString(productId)
    if self.initialized then
        local productConfig = ResourceMgr.GetPurchaseConfig():GetPackBase(productId)
        return self.csMgr:GetLocalPrizeString(productConfig:GetPackageNameByDeviceOs())
    else
        return zg.iapMgr:GetConfigPrice(productId)
    end
end

--- @param listSungameOrder List
function SungameMgr:FireTrackingPurchaseFromWeb(listSungameOrder)
    for i = 1, listSungameOrder:Count() do
        --- @type SungameOrder
        local sungameOrder = listSungameOrder:Get(i)
        if sungameOrder.platform == PLATFORM_WEB then
            local productConfig = ResourceMgr.GetPurchaseConfig():GetSungameWebPackBase(sungameOrder.webProductId)
            if productConfig ~= nil then
                TrackingUtils.SetPurchaseWebSungame(productConfig, sungameOrder.money)
            end
        end
    end
end

--- @class SungameOrder
SungameOrder = Class(SungameOrder)

function SungameOrder:Ctor()
    --- @type string
    self.orderId = nil
    --- @type string
    self.webProductId = nil
    --- @type string
    self.platform = nil
    --- @type List
    self.listReward = nil
    --- @type number
    self.money = nil
end

--- @param buffer UnifiedNetwork_ByteBuf
function SungameOrder:ReadBuffer(buffer)
    self.orderId = buffer:GetString()

    self.webProductId = buffer:GetString()

    self.platform = string.lower(buffer:GetString())

    self.money = buffer:GetFloat()

    self.listReward = NetworkUtils.GetListDataInBound(buffer, RewardInBound.CreateByBuffer)
end

--- @param buffer UnifiedNetwork_ByteBuf
function SungameOrder.CreateByBuffer(buffer)
    local sungameOrder = SungameOrder()
    sungameOrder:ReadBuffer(buffer)
    return sungameOrder
end
