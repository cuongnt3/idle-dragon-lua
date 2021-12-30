require "lua.client.core.network.event.eventHalloweenModel.EventIdleTimeData"
require "lua.client.core.network.event.eventHalloweenModel.EventDiceGameData"
require "lua.client.core.network.event.eventHalloweenModel.EventHalloweenLoginData"
require "lua.client.core.network.event.eventMidAutumnModel.FeedBeastQuestInBound"
require "lua.client.core.network.iap.LimitedPackStatisticsInBound"

--- @class EventHalloweenModel : EventPopupModel
EventHalloweenModel = Class(EventHalloweenModel, EventPopupModel)

function EventHalloweenModel:Ctor()
    --- @type Dictionary
    self.numberBuyDataDict = Dictionary()
    --- @type List
    self.listOfLimitedPackStatistics = List()
    ---@type EventIdleTimeData
    self.eventIdleTimeData = nil
    ---@type EventDiceGameData
    self.eventDiceGameData = nil
    ---@type EventHalloweenLoginData
    self.eventHalloweenLoginData = nil
    EventPopupModel.Ctor(self)
end

function EventHalloweenModel:HasNotification()
    return self:IsTabNotified(HalloweenTab.GOLDEN_TIME)
            or self:IsTabNotified(HalloweenTab.DICE)
            or self:IsTabNotified(HalloweenTab.EXCHANGE)
            or self:IsTabNotified(HalloweenTab.SPECIAL_OFFER)
            or self:IsTabNotified(HalloweenTab.DAILY_CHECK_IN)
end

--- @param halloweenTab HalloweenTab
function EventHalloweenModel:IsTabNotified(halloweenTab)
    if halloweenTab == HalloweenTab.GOLDEN_TIME then
        -- return self:IsGoldenTimeHasNotification()
    elseif halloweenTab == HalloweenTab.DICE then
        return self:IsDiceHasNotification()
    elseif halloweenTab == HalloweenTab.EXCHANGE then
        --   return self:IsExchangeHasNotification()
    elseif halloweenTab == HalloweenTab.SPECIAL_OFFER then
         --return self:IsSpecialOfferHasNotification()
    elseif halloweenTab == HalloweenTab.DAILY_CHECK_IN then
         return self:IsDailyLoginHasNotification()
    end
    return false
end

function EventHalloweenModel:IsDiceHasNotification()
    local requireList = self:GetConfig():GetRollRequireConfig()
    return InventoryUtils.IsEnoughSingleResourceRequirement(requireList:Get(1), false)
end

function EventHalloweenModel:IsDailyLoginHasNotification()
    return not self:IsFreeClaim()
end

function EventHalloweenModel:ReadInnerData(buffer)
    --- Event IdleTime
    self.eventIdleTimeData = EventIdleTimeData()
    self.eventIdleTimeData:ReadBuffer(buffer)

    self.numberBuyDataDict = Dictionary()
    local size = buffer:GetByte()
    for i = 1, size do
        --- @type EventActionType
        local eventActionType = buffer:GetByte()
        local numberBuyData = NumberBuyData()
        numberBuyData:ReadBuffer(buffer)
        self.numberBuyDataDict:Add(eventActionType, numberBuyData)
    end

    self.listOfLimitedPackStatistics = List()
    size = buffer:GetByte()
    for i = 1, size do
        self.listOfLimitedPackStatistics:Add(LimitedPackStatisticsInBound.CreateByBuffer(buffer))
    end

    --- Event Login
    self.eventHalloweenLoginData = EventHalloweenLoginData()
    self.eventHalloweenLoginData:ReadBuffer(buffer)
    --- Event Dice
    self.eventDiceGameData = EventDiceGameData()
    self.eventDiceGameData:ReadBuffer(buffer)
    self.listQuestData = List()
    local sizeQuest = buffer:GetByte()
    for _ = 1, sizeQuest do
        local feedBeastQuestInBound = FeedBeastQuestInBound()
        feedBeastQuestInBound:ReadBuffer(buffer)
        self.listQuestData:Add(feedBeastQuestInBound)
    end
end

--- @return LimitedPackStatisticsInBound
--- @param packId number
function EventHalloweenModel:GetLimitedPackStatisticsInBound(packId)
    for i = 1, self.listOfLimitedPackStatistics:Count() do
        --- @type LimitedPackStatisticsInBound
        local itemData = self.listOfLimitedPackStatistics:Get(i)
        if itemData.packId == packId then
            return itemData
        end
    end
    local default = LimitedPackStatisticsInBound()
    default.packId = packId
    self.listOfLimitedPackStatistics:Add(default)
    return default
end

--- @param packId number
function EventHalloweenModel:IncreaseNumberOfBoughtLimitedPack(packId)
    local pack = self:GetLimitedPackStatisticsInBound(packId)
    if pack ~= nil then
        pack:IncreaseNumberOfBought()
    else
        XDebug.Error(string.format("Limited Pack %d isn't exist", packId))
    end
end

function EventHalloweenModel:GetDiceData()
    return self.eventDiceGameData
end

function EventHalloweenModel:GetLoginData()
    return self.eventHalloweenLoginData
end
function EventHalloweenModel:_GetNumberBuyData(eventActionType)
    ---@type NumberBuyData
    local numberBuyData = self.numberBuyDataDict:Get(eventActionType)
    if numberBuyData == nil then
        numberBuyData = NumberBuyData()
        self.numberBuyDataDict:Add(eventActionType, numberBuyData)
    end
    return numberBuyData
end

function EventHalloweenModel:GetPositionDiceList()
    return self.eventDiceGameData.historyPositionList
end

function EventHalloweenModel:GetNumberBuy(eventActionType, id)
    ---@type NumberBuyData
    local numberBuyData = self:_GetNumberBuyData(eventActionType)
    return numberBuyData.buyStatsDict:Get(id) or 0
end

function EventHalloweenModel:AddNumberBuy(eventActionType, id, number)
    ---@type NumberBuyData
    local numberBuyData = self:_GetNumberBuyData(eventActionType)
    local current = numberBuyData.buyStatsDict:Get(id) or 0
    numberBuyData.buyStatsDict:Add(id, current + number)
end

function EventHalloweenModel:IsClaim()
    if self.eventHalloweenLoginData ~= nil then
        return self.eventHalloweenLoginData:IsClaim()
    end
    return nil
end
function EventHalloweenModel:IsFreeClaim()
    if self.eventHalloweenLoginData ~= nil then
        return self.eventHalloweenLoginData:IsFreeClaim()
    end
    return nil
end

--- @return EventHalloweenConfig
function EventHalloweenModel:GetConfig()
    return EventPopupModel.GetConfig(self)
end

--- @class HalloweenTab
HalloweenTab = {
    GOLDEN_TIME = 1,
    DICE = 2,
    EXCHANGE = 3,
    SPECIAL_OFFER = 4,
    DAILY_CHECK_IN = 5,
}
