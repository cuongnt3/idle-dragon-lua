require "lua.client.core.network.event.eventXmasModel.EventXmasLoginData"
require "lua.client.core.network.event.eventLunarNewYear.EventLunarEliteSummonData"
require "lua.client.core.network.iap.LimitedPackStatisticsInBound"

--- @class EventLunarNewYearModel : EventPopupModel
EventLunarNewYearModel = Class(EventLunarNewYearModel, EventPopupModel)

function EventLunarNewYearModel:Ctor()
    ---@type EventXmasLoginData
    self.eventXmasLoginData = nil
    --- @type Dictionary
    self.diceRewardConfigDict = nil
    --- @type Dictionary
    self.numberBuyDataDict = Dictionary()
    --- @type Dictionary
    self.dictLimitedPackStatistics = Dictionary()
    EventPopupModel.Ctor(self)
end

function EventLunarNewYearModel:IsFreeClaim()
    if self.eventXmasLoginData ~= nil then
        return self.eventXmasLoginData:IsFreeClaim()
    end
    return false
end

function EventLunarNewYearModel:IsDailyLoginHasNotification()
    return not self:IsFreeClaim()
end

function EventLunarNewYearModel:HasNotification()
    return self:IsTabNotified(LunarNewYearTab.LOGIN)
            or self:IsTabNotified(LunarNewYearTab.ELITE_SUMMON)
end

--- @param lunarNewYearTab LunarNewYearTab
function EventLunarNewYearModel:IsTabNotified(lunarNewYearTab)
    if lunarNewYearTab == LunarNewYearTab.LOGIN then
        return self:IsDailyLoginHasNotification()
    elseif lunarNewYearTab == LunarNewYearTab.ELITE_SUMMON then
        return self.eventLunarEliteSummonData:HasNotification()
    end
    return false
end

function EventLunarNewYearModel:ReadInnerData(buffer)
    --- Event Login
    self.eventXmasLoginData = EventXmasLoginData()
    self.eventXmasLoginData:ReadBuffer(buffer)

    local size = buffer:GetByte()
    for i = 1, size do
        --- @type EventActionType
        local actionType = buffer:GetByte()
        local numberBuyData = NumberBuyData()
        numberBuyData:ReadBuffer(buffer)
        self.numberBuyDataDict:Add(actionType, numberBuyData)
    end

    self.eventLunarEliteSummonData = EventLunarEliteSummonData(buffer)

    self.dictLimitedPackStatistics = Dictionary()
end

--- @param packId number
function EventLunarNewYearModel:IncreaseNumberOfBoughtLimitedPack(packId)
    local pack = self:GetLimitedPackStatisticsInBound(packId)
    if pack ~= nil then
        pack:IncreaseNumberOfBought()
    else
        XDebug.Error(string.format("Limited Pack %d isn't exist", packId))
    end
end

--- @param eventActionType EventActionType
function EventLunarNewYearModel:_GetNumberBuyData(eventActionType)
    ---@type NumberBuyData
    local numberBuyData = self.numberBuyDataDict:Get(eventActionType)
    if numberBuyData == nil then
        numberBuyData = NumberBuyData()
        self.numberBuyDataDict:Add(eventActionType, numberBuyData)
    end
    return numberBuyData
end

--- @param eventActionType EventActionType
function EventLunarNewYearModel:GetNumberBuy(eventActionType, id)
    ---@type NumberBuyData
    local numberBuyData = self:_GetNumberBuyData(eventActionType)
    return numberBuyData.buyStatsDict:Get(id) or 0
end

--- @param eventActionType EventActionType
function EventLunarNewYearModel:AddNumberBuy(eventActionType, id, number)
    ---@type NumberBuyData
    local numberBuyData = self:_GetNumberBuyData(eventActionType)
    local current = numberBuyData.buyStatsDict:Get(id) or 0
    numberBuyData.buyStatsDict:Add(id, current + number)
end

--- @return EventNewYearConfig
function EventLunarNewYearModel:GetConfig()
    return EventPopupModel.GetConfig(self)
end

function EventLunarNewYearModel:IsClaim()
    if self.eventXmasLoginData ~= nil then
        return self.eventXmasLoginData:IsClaim()
    end
    return nil
end

function EventLunarNewYearModel:IsFreeClaim()
    if self.eventXmasLoginData ~= nil then
        return self.eventXmasLoginData:IsFreeClaim()
    end
    return false
end

function EventLunarNewYearModel:GetLoginData()
    return self.eventXmasLoginData
end

function EventLunarNewYearModel:CheckResourceOnSeason()
    local endTime = self.timeData.endTime
    local savedEndSeason = zg.playerData.remoteConfig.eventLunarNewYearEnd or endTime
    if savedEndSeason ~= endTime then
        self:ClearMoneyType()
        zg.playerData.remoteConfig.eventLunarNewYearEnd = endTime
        zg.playerData:SaveRemoteConfig()
    end
end

function EventLunarNewYearModel:ClearMoneyType()
    local clearResource = function(moneyType)
        local currentValue = InventoryUtils.Get(ResourceType.Money, moneyType)
        InventoryUtils.Sub(ResourceType.Money, moneyType, currentValue)
    end
    clearResource(MoneyType.EVENT_LUNAR_NEW_YEAR_SUMMON_TICKET)
    clearResource(MoneyType.EVENT_LUNAR_NEW_YEAR_SUMMON_POINT)
end

---@return LimitedPackStatisticsInBound
function EventLunarNewYearModel:GetLimitedPackStatisticsInBound(packId)
    ---@type LimitedPackStatisticsInBound
    local pack = self.dictLimitedPackStatistics:Get(packId)
    if pack == nil then
        ---@type NumberBuyData
        local numberBuyData = self.numberBuyDataDict:Get(EventActionType.LUNAR_NEW_YEAR_ELITE_BUNDLE_PURCHASE)
        if numberBuyData == nil then
            numberBuyData = NumberBuyData()
            self.numberBuyDataDict:Add(EventActionType.LUNAR_NEW_YEAR_ELITE_BUNDLE_PURCHASE, numberBuyData)
        end
        pack = LimitedPackStatisticsInBound()
        pack.numberOfBought = numberBuyData:GetNumberOfBoughtWithPackId(packId)
        self.dictLimitedPackStatistics:Add(packId, pack)
    end
    return pack
end

--- @class LunarNewYearTab
LunarNewYearTab = {
    GOLDEN_TIME = 1,
    LOGIN = 2,
    BUNDLE = 3,
    EXCHANGE = 4,
    ELITE_SUMMON = 5,
    SKIN_BUNDLE = 6,
}
