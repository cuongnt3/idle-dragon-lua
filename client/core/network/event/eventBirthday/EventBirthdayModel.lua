--- @class EventBirthdayModel : EventPopupModel
EventBirthdayModel = Class(EventBirthdayModel, EventPopupModel)

function EventBirthdayModel:Ctor()
    --- @type Dictionary
    self.numberBuyDataDict = Dictionary()
    --- @type EventLoginData
    self.eventLoginData = nil
    --- @type List
    self.listOfLimitedPackStatistics = nil
    --- @type Dictionary
    self.roundRewards = nil
    EventPopupModel.Ctor(self)
end

function EventBirthdayModel:HasNotification()
    return self:IsTabNotified(EventBirthdayTab.CHECK_IN) or self:IsTabNotified(EventBirthdayTab.WHEEL)
end

--- @param eventBirthdayTab EventBirthdayTab
function EventBirthdayModel:IsTabNotified(eventBirthdayTab)
    if eventBirthdayTab == EventBirthdayTab.CHECK_IN then
        return self:IsDailyLoginHasNotification()
    elseif eventBirthdayTab == EventBirthdayTab.WHEEL then
        return self:IsWheelHasNotification()
    end
    return false
end

function EventBirthdayModel:IsWheelHasNotification()
    ---@type EventBirthdayWheelConfig
    local wheelConfig = self:GetConfig():GetListWheelConfig():Get(self.roundRewards:Count() + 1)
    return InventoryUtils.IsEnoughSingleResourceRequirement(RewardInBound.CreateBySingleParam(ResourceType.Money, wheelConfig.moneyType, wheelConfig.moneyValue), false)
end

function EventBirthdayModel:ReadInnerData(buffer)
    self.eventLoginData = EventLoginData(buffer)

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
    local size = buffer:GetByte()
    for _ = 1, size do
        self.listOfLimitedPackStatistics:Add(LimitedPackStatisticsInBound.CreateByBuffer(buffer))
    end

    self.roundRewards = Dictionary()
    local size = buffer:GetByte()
    for _ = 1, size do
        self.roundRewards:Add(buffer:GetInt(), buffer:GetInt())
    end

    self:CheckResourceOnSeason()
end

function EventBirthdayModel:_GetNumberBuyData(eventActionType)
    ---@type NumberBuyData
    local numberBuyData = self.numberBuyDataDict:Get(eventActionType)
    if numberBuyData == nil then
        numberBuyData = NumberBuyData()
        self.numberBuyDataDict:Add(eventActionType, numberBuyData)
    end
    return numberBuyData
end

--- @param eventActionType EventActionType
function EventBirthdayModel:GetNumberBuy(eventActionType, id)
    ---@type NumberBuyData
    local numberBuyData = self:_GetNumberBuyData(eventActionType)
    return numberBuyData.buyStatsDict:Get(id) or 0
end

function EventBirthdayModel:AddNumberBuy(eventActionType, id, number)
    ---@type NumberBuyData
    local numberBuyData = self:_GetNumberBuyData(eventActionType)
    local current = numberBuyData.buyStatsDict:Get(id) or 0
    numberBuyData.buyStatsDict:Add(id, current + number)
end

--- @return EventBirthdayConfig
function EventBirthdayModel:GetConfig()
    return EventPopupModel.GetConfig(self)
end

function EventBirthdayModel:IsDailyLoginHasNotification()
    return not self:IsFreeClaim()
end

function EventBirthdayModel:IsClaim()
    if self.eventLoginData ~= nil then
        return self.eventLoginData:IsClaimed()
    end
    return nil
end

function EventBirthdayModel:IsFreeClaim()
    if self.eventLoginData ~= nil then
        return self.eventLoginData:IsFreeClaim()
    end
    return false
end

function EventBirthdayModel:GetLoginData()
    return self.eventLoginData
end

function EventBirthdayModel:CheckResourceOnSeason()
    local endTime = self.timeData.endTime
    local savedEndSeason = zg.playerData.remoteConfig.eventBirthdayEnd or endTime
    if savedEndSeason ~= endTime then
        self:ClearMoneyType()
        zg.playerData.remoteConfig.eventBirthdayEnd = endTime
        zg.playerData:SaveRemoteConfig()
    end
end

function EventBirthdayModel:ClearMoneyType()
    local clearResource = function(moneyType)
        local currentValue = InventoryUtils.GetMoney(moneyType)
        InventoryUtils.Sub(ResourceType.Money, moneyType, currentValue)
    end
    clearResource(MoneyType.EVENT_BIRTHDAY_WHEEL)
end

--- @return LimitedPackStatisticsInBound
--- @param packId number
function EventBirthdayModel:GetLimitedPackStatisticsInBound(packId)
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
function EventBirthdayModel:IncreaseNumberOfBoughtLimitedPack(packId)
    local pack = self:GetLimitedPackStatisticsInBound(packId)
    if pack ~= nil then
        pack:IncreaseNumberOfBought()
    else
        XDebug.Error(string.format("Limited Pack %d isn't exist", packId))
    end
end

--- @param opCode OpCode
--- @param packId number
function EventBirthdayModel:GetNumberBuyOpCode(opCode, packId)
    if opCode == OpCode.EVENT_BIRTHDAY_ANNIVERSARY_OFFER_PURCHASE then
        return self:GetNumberBuy(EventActionType.BIRTHDAY_ANNIVERSARY_OFFER_PURCHASE, packId)
    elseif opCode == OpCode.EVENT_BIRTHDAY_EXCHANGE then
        return self:GetNumberBuy(EventActionType.BIRTHDAY_EXCHANGE, packId)
    end
    return 0
end

--- @param opCode OpCode
--- @param packId number
function EventBirthdayModel:AddNumberBuyOpCode(opCode, packId, number)
    if opCode == OpCode.EVENT_BIRTHDAY_ANNIVERSARY_OFFER_PURCHASE then
        return self:AddNumberBuy(EventActionType.BIRTHDAY_ANNIVERSARY_OFFER_PURCHASE, packId, number)
    elseif opCode == OpCode.EVENT_BIRTHDAY_EXCHANGE then
        return self:AddNumberBuy(EventActionType.BIRTHDAY_EXCHANGE, packId, number)
    end
end

--- @class EventBirthdayTab
EventBirthdayTab = {
    CHECK_IN = 1,
    WHEEL = 2,
    BUNDLE = 3,
    EXCHANGE = 4,
}