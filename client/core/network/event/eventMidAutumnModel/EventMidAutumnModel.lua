require "lua.client.core.network.playerData.quest.QuestUnitInBound"
require "lua.client.core.network.event.eventMidAutumnModel.FeedBeastQuestInBound"

--- @class EventMidAutumnModel : EventPopupModel
EventMidAutumnModel = Class(EventMidAutumnModel, EventPopupModel)

function EventMidAutumnModel:Ctor()
    --- @type Dictionary
    self.numberBuyDataDict = Dictionary()
    --- @type number
    self.feedBeastLevel = nil
    --- @type List
    self.listQuestData = nil
    EventPopupModel.Ctor(self)
end

function EventMidAutumnModel:ReadInnerData(buffer)
    self.numberBuyDataDict = Dictionary()
    local size = buffer:GetByte()
    for i = 1, size do
        --- @type EventActionType
        local eventActionType = buffer:GetByte()
        local numberBuyData = NumberBuyData()
        numberBuyData:ReadBuffer(buffer)
        self.numberBuyDataDict:Add(eventActionType, numberBuyData)
    end

    --- Event Login
    self.lastClaimLoginDay = buffer:GetInt()
    self.lastClaimLoginTime = buffer:GetLong()

    self.feedBeastLevel = buffer:GetInt()

    self.listQuestData = List()
    local sizeQuest = buffer:GetByte()
    for _ = 1, sizeQuest do
        local feedBeastQuestInBound = FeedBeastQuestInBound()
        feedBeastQuestInBound:ReadBuffer(buffer)
        self.listQuestData:Add(feedBeastQuestInBound)
    end
end

--- @param midAutumnTab MidAutumnTab
function EventMidAutumnModel:IsTabNotified(midAutumnTab)
    if midAutumnTab == MidAutumnTab.GOLDEN_TIME then
        return self:IsGoldenTimeHasNotification()
    elseif midAutumnTab == MidAutumnTab.FEED_BEAST then
        return self:IsFeedBeastHasNotification()
    elseif midAutumnTab == MidAutumnTab.EXCHANGE then
        return self:IsExchangeHasNotification()
    elseif midAutumnTab == MidAutumnTab.SPECIAL_OFFER then
        return self:IsSpecialOfferHasNotification()
    elseif midAutumnTab == MidAutumnTab.GEM_BOX then
        return self:IsGemBoxNotification()
    elseif midAutumnTab == MidAutumnTab.DAILY_CHECK_IN then
        return self:IsDailyCheckInHasNotification()
    end
    return false
end

function EventMidAutumnModel:_GetNumberBuyData(eventActionType)
    ---@type NumberBuyData
    local numberBuyData = self.numberBuyDataDict:Get(eventActionType)
    if numberBuyData == nil then
        numberBuyData = NumberBuyData()
        self.numberBuyDataDict:Add(eventActionType, numberBuyData)
    end
    return numberBuyData
end

function EventMidAutumnModel:GetNumberBuy(eventActionType, id)
    ---@type NumberBuyData
    local numberBuyData = self:_GetNumberBuyData(eventActionType)
    return numberBuyData.buyStatsDict:Get(id) or 0
end

function EventMidAutumnModel:AddNumberBuy(eventActionType, id, number)
    ---@type NumberBuyData
    local numberBuyData = self:_GetNumberBuyData(eventActionType)
    local current = numberBuyData.buyStatsDict:Get(id) or 0
    numberBuyData.buyStatsDict:Add(id, current + number)
end

function EventMidAutumnModel:IsClaim()
    if self.lastClaimLoginTime ~= nil then
        return TimeUtils.GetTimeStartDayFromSec(zg.timeMgr:GetServerTime()) <= self.lastClaimLoginTime
                or self.lastClaimLoginDay >= 7
    end
    return nil
end
--- @param _type EventActionType
function EventMidAutumnModel:GetPackBoughtWithType(_type)
    if self.numberBuyDataDict:IsContainKey(_type) then
        return self.numberBuyDataDict:Get(_type)
    end
    local numberBuyData = NumberBuyData()
    self.numberBuyDataDict:Add(_type, numberBuyData)
    return
end

--- @return EventMidAutumnConfig
function EventMidAutumnModel:GetConfig()
    return EventPopupModel.GetConfig(self)
end

function EventMidAutumnModel:HasNotification()
    return self:IsTabNotified(MidAutumnTab.GOLDEN_TIME)
            or self:IsTabNotified(MidAutumnTab.FEED_BEAST)
            or self:IsTabNotified(MidAutumnTab.EXCHANGE)
            or self:IsTabNotified(MidAutumnTab.SPECIAL_OFFER)
            or self:IsTabNotified(MidAutumnTab.GEM_BOX)
            or self:IsTabNotified(MidAutumnTab.DAILY_CHECK_IN)
end

function EventMidAutumnModel:IsGoldenTimeHasNotification()
    return false
end

function EventMidAutumnModel:IsFeedBeastHasNotification(isShowPopup)
    local eventFeedBeastConfig = self:GetConfig():GetEventFeedBeastConfig()
    return InventoryUtils.IsEnoughSingleResourceRequirement(eventFeedBeastConfig.feedRewardInBound, isShowPopup or false)
end

function EventMidAutumnModel:IsExchangeHasNotification()
    return false
end

function EventMidAutumnModel:IsSpecialOfferHasNotification()
    return false
end

function EventMidAutumnModel:IsGemBoxNotification()
    return false
end

function EventMidAutumnModel:IsDailyCheckInHasNotification()
    return not self:IsClaim()
end

function EventMidAutumnModel:CanRootEventReward()
    --- @type {listGoldenTimeReward : List, lastDuration: number}
    local goldenTimeConfig = self:GetConfig():GetGoldenTimeConfig()
    local serverTime = zg.timeMgr:GetServerTime()
    local startTime = self.timeData.startTime
    local endTime = self.timeData.endTime - goldenTimeConfig.lastDuration
    return startTime <= serverTime and endTime >= serverTime
end

--- @class MidAutumnTab
MidAutumnTab = {
    GOLDEN_TIME = 1,
    FEED_BEAST = 2,
    EXCHANGE = 3,
    SPECIAL_OFFER = 4,
    GEM_BOX = 5,
    DAILY_CHECK_IN = 6,
}
