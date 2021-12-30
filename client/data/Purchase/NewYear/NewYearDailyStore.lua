local EVENT_NEW_YEAR_DAILY_PURCHASE_PATH = "csv/event/event_new_year/data_%d/daily_pack.csv"

--- @class NewYearDailyStore : EventStore
NewYearDailyStore = Class(NewYearDailyStore, EventStore)

function NewYearDailyStore:Ctor()
    EventStore.Ctor(self)
    --- @type EventTimeType
    self.eventTimeType = EventTimeType.EVENT_NEW_YEAR
    --- @type OpCode
    self.opCode = OpCode.EVENT_NEW_YEAR_DAILY_BUNDLE_PURCHASE
    --- @type string
    self.filePath = EVENT_NEW_YEAR_DAILY_PURCHASE_PATH
    --- @type EventNewYearDailyProduct
    self.pack = EventNewYearDailyProduct
end

--- @return boolean
function NewYearDailyStore:IsNotificationDailyDeal()
    local notify = false
    ---@type EventNewYearModel
    local eventNewYearModel = zg.playerData:GetEvents():GetEvent(self.eventTimeType)
    --- @param v LimitedProduct
    for _, v in ipairs(self:GetCurrentPack().packList:GetItems()) do
        if v.isFree == true and eventNewYearModel:GetLimitedPackStatisticsInBound(v.id):GetNumberOfBought() < v.stock then
            notify = true
            break
        end
    end
    return notify
end

--- @class EventNewYearDailyProduct : EventProduct
EventNewYearDailyProduct = Class(EventNewYearDailyProduct, EventProduct)

function EventNewYearDailyProduct:Ctor()
    EventProduct.Ctor(self)
    self.opCode = OpCode.EVENT_NEW_YEAR_DAILY_BUNDLE_PURCHASE
    self.eventTimeType = EventTimeType.EVENT_NEW_YEAR
end