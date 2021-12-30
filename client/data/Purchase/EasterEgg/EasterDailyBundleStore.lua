local EVENT_EASTER_DAILY_PURCHASE_PATH = "csv/event/event_easter/data_%d/daily_bundle.csv"

--- @class EasterDailyBundleStore : EventStore
EasterDailyBundleStore = Class(EasterDailyBundleStore, EventStore)

function EasterDailyBundleStore:Ctor()
    EventStore.Ctor(self)
    --- @type EventTimeType
    self.eventTimeType = EventTimeType.EVENT_EASTER_EGG
    --- @type OpCode
    self.opCode = OpCode.EVENT_EASTER_DAILY_BUNDLE_PURCHASE
    --- @type string
    self.filePath = EVENT_EASTER_DAILY_PURCHASE_PATH
    --- @type EasterDailyProduct
    self.pack = EasterDailyProduct
end

--- @return boolean
function EasterDailyBundleStore:IsNotificationDailyDeal()
    local notify = false
    ---@type EventEasterEggModel
    local easterEggModel = zg.playerData:GetEvents():GetEvent(self.eventTimeType)
    --- @param v LimitedProduct
    for _, v in ipairs(self:GetCurrentPack().packList:GetItems()) do
        if v.isFree == true and easterEggModel:GetLimitedPackStatisticsInBound(v.id):GetNumberOfBought() < v.stock then
            notify = true
            break
        end
    end
    return notify
end

--- @class EasterDailyProduct : EventProduct
EasterDailyProduct = Class(EasterDailyProduct, EventProduct)

function EasterDailyProduct:Ctor()
    EventProduct.Ctor(self)
    self.opCode = OpCode.EVENT_EASTER_DAILY_BUNDLE_PURCHASE
    self.eventTimeType = EventTimeType.EVENT_EASTER_EGG
end