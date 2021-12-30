require "lua.client.core.network.purchase.PurchaseOutBound"

--- @class PurchaseRequest
PurchaseRequest = Class(PurchaseRequest)

--- @param product ProductConfig
PurchaseRequest.ShowPopupReward = function(product)
    product:ClaimAndShowRewardList()
end

--- @return void
--- @param productConfig ProductConfig
--- @param data IAPReceipt
function PurchaseRequest.Purchasing(productConfig, data, callback)
    local outBound = PurchaseOutBound(productConfig.id, data.is_free, data.device_os, data.pack_name, data.transaction_id,
            data.transaction_time, data.receipt, data.is_test)
    local onReceived = function(result)
        local isTesterOrder = false
        --- @param buffer UnifiedNetwork_ByteBuf
        local onBufferReading = function(buffer)
            NetworkUtils.GetListDataInBound(buffer, RewardInBound.CreateByBuffer)
            isTesterOrder = buffer:GetBool()
        end
        local onSuccess = function()
            if callback ~= nil then
                callback(true, isTesterOrder)
            end
            PurchaseRequest.OnPurchaseProductConfigSuccess(productConfig)
        end
        local onFailed = function(logicCode)
            if logicCode == LogicCode.PURCHASE_TRANSACTION_INVALID
                    or logicCode == LogicCode.PURCHASE_TRANSACTION_ALREADY_PROCESSED then
                --- ignore
            else
                SmartPoolUtils.LogicCodeNotification(logicCode)
            end
            XDebug.Warning(LogUtils.ToDetail(outBound))
            if callback ~= nil then
                callback(false)
            end
        end
        NetworkUtils.ExecuteResult(result, onBufferReading, onSuccess, onFailed)
    end
    NetworkUtils.Request(productConfig.opCode, outBound, onReceived)
end

--- @param productConfig ProductConfig
function PurchaseRequest.OnPurchaseProductConfigSuccess(productConfig)
    PurchaseRequest.UpdateStatistic(productConfig)
    RxMgr.buyCompleted:Next(true)
    Coroutine.start(function()
        local touchObject = TouchUtils.Spawn("Purchasing Delay show reward")
        coroutine.waitforendofframe()
        coroutine.waitforendofframe()
        PurchaseRequest.ShowPopupReward(productConfig)
        touchObject:Enable()
    end)
    TrackingUtils.server:GetTracking(FBProperties.IAP_COUNT):Increase(1)
end

--- @param packBase ProductConfig
function PurchaseRequest.FreeRequest(packBase)
    local onReceived = function(result)
        local onSuccess = function()
            PurchaseRequest.ShowPopupReward(packBase)
            PurchaseRequest.UpdateStatistic(packBase)
            RxMgr.buyCompleted:Next(true)
        end
        NetworkUtils.ExecuteResult(result, nil, onSuccess, SmartPoolUtils.LogicCodeNotification)
    end
    NetworkUtils.Request(packBase.opCode, UnknownOutBound.CreateInstance(PutMethod.Int, packBase.id, PutMethod.Bool, packBase.isFree), onReceived)
end

--- @param id number
function PurchaseRequest.RequestTrialSubscription(id, callback, onFailed)
    local onReceived = function(result)
        local onSuccess = function()
            PlayerDataRequest.RequestAndCallback({ PlayerDataMethod.IAP }, callback)
        end
        NetworkUtils.ExecuteResult(result, nil, onSuccess, onFailed)
    end
    NetworkUtils.Request(OpCode.PURCHASE_SUBSCRIPTION_TRIAL_PACK,
            UnknownOutBound.CreateInstance(PutMethod.Int, id),
            onReceived)
end

--- @param productConfig ProductConfig
function PurchaseRequest.UpdateStatistic(productConfig)
    local opCode = productConfig.opCode
    XDebug.Log("UpdateStatistic " .. opCode)

    if opCode == OpCode.PURCHASE_LIMITED_PACK then
        zg.playerData:GetIAP():IncreaseNumberOfBoughtLimitedPack(productConfig.id)
    elseif opCode == OpCode.EVENT_HALLOWEEN_DAILY_PURCHASE then
        ---@type EventHalloweenModel
        local eventHalloweenModel = zg.playerData:GetEvents():GetEvent(EventTimeType.EVENT_HALLOWEEN)
        if eventHalloweenModel then
            eventHalloweenModel:IncreaseNumberOfBoughtLimitedPack(productConfig.id)
        end
    elseif opCode == OpCode.PURCHASE_SUBSCRIPTION_PACK then
        --- @type SubscriptionProduct
        local subscriptionProduct = productConfig
        zg.playerData:GetIAP():AddDurationInSubscriptionPack(subscriptionProduct.id, subscriptionProduct.durationInDays)
    elseif opCode == OpCode.EVENT_CHRISTMAS_DAILY_PURCHASE then
        ---@type EventXmasModel
        local eventModel = zg.playerData:GetEvents():GetEvent(EventTimeType.EVENT_XMAS)
        if eventModel then
            eventModel:IncreaseNumberOfBoughtLimitedPack(productConfig.id)
        end
    elseif opCode == OpCode.EVENT_NEW_YEAR_DAILY_BUNDLE_PURCHASE then
        ---@type EventNewYearModel
        local eventModel = zg.playerData:GetEvents():GetEvent(EventTimeType.EVENT_NEW_YEAR)
        if eventModel then
            eventModel:IncreaseNumberOfBoughtLimitedPack(productConfig.id)
        end
    elseif opCode == OpCode.EVENT_LUNAR_NEW_YEAR_ELITE_STORE_PURCHASE then
        ---@type EventLunarNewYearModel
        local eventModel = zg.playerData:GetEvents():GetEvent(EventTimeType.EVENT_LUNAR_NEW_YEAR)
        if eventModel then
            eventModel:IncreaseNumberOfBoughtLimitedPack(productConfig.id)
        end
    elseif opCode == OpCode.EVENT_VALENTINE_LOVE_BUNDLE_PURCHASE then
        ---@type EventValentineModel
        local eventModel = zg.playerData:GetEvents():GetEvent(EventTimeType.EVENT_VALENTINE)
        if eventModel then
            eventModel:IncreaseNumberOfBoughtLimitedPack(productConfig.id)
        end
    elseif opCode == OpCode.EVENT_BUNDLE_PURCHASE
            or opCode == OpCode.EVENT_HOT_DEAL_PURCHASE then
        --- @type EventProduct
        local eventProduct = productConfig
        --- @type EventPopupPurchaseModel
        local eventModel = zg.playerData:GetEvents():GetEvent(eventProduct.eventTimeType)
        if eventModel then
            local data = eventModel:GetData(productConfig.id)
            data:IncreaseNumberOfBought()
        end
    elseif opCode == OpCode.PURCHASE_RAW_PACK then
        zg.playerData:GetIAP():IncreaseNumberOfBoughtRawPack(productConfig.id)
    elseif opCode == OpCode.PURCHASE_STARTER_PACK then
        zg.playerData:GetIAP():IncreaseConditionalBoughtPack(opCode, productConfig.id)
    elseif opCode == OpCode.EVENT_SALE_OFF_PURCHASE then
        --- @type SaleOffProductConfig
        local saleOffProductConfig = productConfig
        --- @type SubscriptionProduct
        local subscriptionProduct = ResourceMgr.GetPurchaseConfig():GetCashShop():GetSubscription(saleOffProductConfig.originalPackId)
        zg.playerData:GetIAP():AddDurationInSubscriptionPack(subscriptionProduct.id, subscriptionProduct.durationInDays)

        --- @type EventSaleOffModel
        local eventSaleOffModel = zg.playerData:GetEvents():GetEvent(EventTimeType.EVENT_SALE_OFF)
        if eventSaleOffModel ~= nil then
            eventSaleOffModel:OnBuySalePackSuccess(saleOffProductConfig.id)
        end
    elseif opCode == OpCode.EVENT_NEW_HERO_BUNDLE_PURCHASE then
        --- @type EventNewHeroBundleModel
        local eventModel = zg.playerData:GetEvents():GetEvent(EventTimeType.EVENT_NEW_HERO_BUNDLE)
        if eventModel then
            eventModel:OnPurchaseSuccess(productConfig.id)
        end
    elseif opCode == OpCode.EVENT_SERVER_MERGE_BUNDLE_PURCHASE then
        --- @type EventMergeServerModel
        local eventModel = zg.playerData:GetEvents():GetEvent(EventTimeType.EVENT_MERGE_SERVER)
        if eventModel then
            eventModel:AddNumberBuy(EventActionType.SERVER_MERGE_LIMITED_BUNDLE, productConfig.id, 1)
        end
    elseif opCode == OpCode.EVENT_EASTER_DAILY_BUNDLE_PURCHASE then
        --- @type EventEasterEggModel
        local eventModel = zg.playerData:GetEvents():GetEvent(EventTimeType.EVENT_EASTER_EGG)
        if eventModel then
            eventModel:IncreaseNumberOfBoughtLimitedPack(productConfig.id)
        end
    elseif opCode == OpCode.EVENT_EASTER_CARD_PURCHASE then
        --- @type EventEasterEggModel
        local eventModel = zg.playerData:GetEvents():GetEvent(EventTimeType.EVENT_EASTER_EGG)
        if eventModel then
            eventModel:AddNumberBuy(EventActionType.EASTER_BUNNY_CARD_PURCHASE, productConfig.id, 1)
        end
    elseif opCode == OpCode.EVENT_EASTER_LIMIT_OFFER_PURCHASE then
        --- @type EventEasterEggModel
        local eventModel = zg.playerData:GetEvents():GetEvent(EventTimeType.EVENT_EASTER_EGG)
        if eventModel then
            eventModel:AddNumberBuy(EventActionType.EASTER_LIMIT_OFFER_PURCHASE, productConfig.id, 1)
        end
    elseif opCode == OpCode.EVENT_DAILY_QUEST_PASS_PURCHASE then
        --- @type EventDailyQuestPassModel
        local eventModel = zg.playerData:GetEvents():GetEvent(EventTimeType.EVENT_DAILY_QUEST_PASS_PURCHASE)
        if eventModel then
            eventModel:IncreaseBoughtPack(productConfig.id)
        end
    elseif opCode == OpCode.COMEBACK_BUNDLE_PURCHASE then
        --- @type WelcomeBackInBound
        local welcomeBackInBound = zg.playerData:GetMethod(PlayerDataMethod.COMEBACK)
        if welcomeBackInBound ~= nil then
            welcomeBackInBound:IncreaseBoughtPack(productConfig.id)
        end
    elseif opCode == OpCode.EVENT_BIRTHDAY_DAILY_BUNDLE_PURCHASE then
        --- @type EventBirthdayModel
        local eventModel = zg.playerData:GetEvents():GetEvent(EventTimeType.EVENT_BIRTHDAY)
        if eventModel then
            eventModel:IncreaseNumberOfBoughtLimitedPack(productConfig.id)
        end
    elseif opCode == OpCode.EVENT_BIRTHDAY_ANNIVERSARY_OFFER_PURCHASE then
        --- @type EventBirthdayModel
        local eventModel = zg.playerData:GetEvents():GetEvent(EventTimeType.EVENT_BIRTHDAY)
        if eventModel then
            eventModel:AddNumberBuy(EventActionType.BIRTHDAY_ANNIVERSARY_OFFER_PURCHASE, productConfig.id, 1)
        end
    elseif opCode == OpCode.EVENT_NEW_HERO_SKIN_BUNDLE_PURCHASE then
        --- @type EventNewHeroSkinBundleModel
        local eventModel = zg.playerData:GetEvents():GetEvent(EventTimeType.EVENT_NEW_HERO_SKIN_BUNDLE)
        if eventModel then
            eventModel:AddNumberBuyOpCode(opCode, productConfig.id, 1)
        end
    elseif opCode == OpCode.EVENT_SKIN_BUNDLE_PURCHASE then
        --- @type EventSkinBundleModel
        local eventModel = zg.playerData:GetEvents():GetEvent(EventTimeType.EVENT_SKIN_BUNDLE)
        if eventModel then
            eventModel:AddNumberBuyOpCode(opCode, productConfig.id, 1)
        end
    else
        XDebug.Error("Missing Update Statistic OpCde ", opCode)
    end
end