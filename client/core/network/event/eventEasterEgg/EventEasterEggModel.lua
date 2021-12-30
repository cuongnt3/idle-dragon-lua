require "lua.client.core.network.iap.SubscriptionPackCollectionInBound"

--- @class EventEasterEggModel : EventPopupModel
EventEasterEggModel = Class(EventEasterEggModel, EventPopupModel)

function EventEasterEggModel:Ctor()
    --- @type EventLoginData
    self.eventLoginData = nil
    --- @type List
    self.listOfLimitedPackStatistics = nil
    --- @type Dictionary
    self.numberBuyDataDict = nil

    --- @type Dictionary
    self.numberChallenge = nil

    --- @type Dictionary
    self.subscriptionDataDict = nil

    EventPopupModel.Ctor(self)
end

function EventEasterEggModel:HasNotification()
    return self:IsTabNotified(EasterEggTab.CHECK_IN)
            or self:IsTabNotified(EasterEggTab.BUNNY_CARD)
            or self:IsTabNotified(EasterEggTab.LIMITED_OFFER)
            or self:IsTabNotified(EasterEggTab.HUNT)
            or self:IsTabNotified(EasterEggTab.BREAK)
end

--- @param buffer UnifiedNetwork_ByteBuf
function EventEasterEggModel:ReadData(buffer)
    EventPopupModel.ReadData(self, buffer)
    self:ReadSubscriptionPack(buffer)
end

--- @param buffer UnifiedNetwork_ByteBuf
function EventEasterEggModel:ReadInnerData(buffer)
    self.eventLoginData = EventLoginData(buffer)

    self.numberBuyDataDict = Dictionary()
    local size = buffer:GetByte()
    for _ = 1, size do
        --- @type number
        local actionType = buffer:GetByte()
        local numberBuyData = NumberBuyData()
        numberBuyData:ReadBuffer(buffer)
        self.numberBuyDataDict:Add(actionType, numberBuyData)
    end

    self.listOfLimitedPackStatistics = List()
    size = buffer:GetByte()
    for i = 1, size do
        self.listOfLimitedPackStatistics:Add(LimitedPackStatisticsInBound.CreateByBuffer(buffer))
    end

    self.numberChallenge = Dictionary()
    local size = buffer:GetByte()
    for _ = 1, size do
        self.numberChallenge:Add(buffer:GetInt(), buffer:GetInt())
    end
end

function EventEasterEggModel:ReadSubscriptionPack(buffer)
    self.subscriptionDataDict = Dictionary()

    local size = buffer:GetByte()
    for _ = 1, size do
        local dataId = buffer:GetByte()
        local subscriptionPackCollectionInBound = SubscriptionPackCollectionInBound(buffer)
        self.subscriptionDataDict:Add(dataId, subscriptionPackCollectionInBound)
    end
end

--- @return EventMergeServerConfig
function EventEasterEggModel:GetConfig()
    return EventPopupModel.GetConfig(self)
end

--- @param mergeServerTab MergeServerTab
function EventEasterEggModel:IsTabNotified(mergeServerTab)
    if mergeServerTab == EasterEggTab.CHECK_IN then
        return self:IsDailyLoginHasNotification()
    elseif mergeServerTab == EasterEggTab.BUNNY_CARD then
        return false
    elseif mergeServerTab == EasterEggTab.BREAK then
        local dictEgg = Dictionary()
        dictEgg:Add(1, MoneyType.EVENT_EASTER_SILVER_EGG)
        dictEgg:Add(2, MoneyType.EVENT_EASTER_YELLOW_EGG)
        dictEgg:Add(3, MoneyType.EVENT_EASTER_RAINBOW_EGG)
        for i = 1, 3 do
            ---@type BreakEggPrice
            local breakEggPrice = self:GetConfig():GetBreakEggPrice(i)
            if InventoryUtils.Get(ResourceType.Money, dictEgg:Get(i)) > 0 and
                    ((breakEggPrice.moneyValue ~= nil and InventoryUtils.Get(ResourceType.Money, breakEggPrice.moneyType) >= breakEggPrice.moneyValue)
            or (breakEggPrice.gem ~= nil and InventoryUtils.GetMoney(MoneyType.GEM) >= breakEggPrice.gem)
            or breakEggPrice.gem == nil ) then
                return true
            end
        end
    end
    return false
end

function EventEasterEggModel:RequestClaimQuest(questId, callback)
    local onSuccess = function(rewardList)
        PopupUtils.ClaimAndShowRewardList(rewardList)
        self:OnClaimQuestSuccess(questId)
        if callback then
            callback()
        end
    end
    QuestDataInBound.RequestClaimQuest(OpCode.EVENT_SERVER_MERGE_DAILY_QUEST_CLAIM, questId, onSuccess)
end

function EventEasterEggModel:OnClaimQuestSuccess(questId)
    for i = 1, self.listQuestData:Count() do
        --- @type QuestUnitInBound
        local questUnitInBound = self.listQuestData:Get(i)
        if questUnitInBound.questId == questId then
            questUnitInBound.questState = QuestState.COMPLETED
            break
        end
    end
    self.listQuestData = QuestDataInBound.SortQuestByData(self.listQuestData)
end

function EventEasterEggModel:IsFreeClaim()
    if self.eventLoginData ~= nil then
        return self.eventLoginData:IsFreeClaim()
    end
    return false
end

function EventEasterEggModel:IsDailyLoginHasNotification()
    return not self:IsFreeClaim()
end

function EventEasterEggModel:IsClaim()
    if self.eventLoginData ~= nil then
        return self.eventLoginData:IsClaimed()
    end
    return nil
end

function EventEasterEggModel:IsFreeClaim()
    if self.eventLoginData ~= nil then
        return self.eventLoginData:IsFreeClaim()
    end
    return false
end

function EventEasterEggModel:GetLoginData()
    return self.eventLoginData
end

--- @param eventActionType EventActionType
function EventEasterEggModel:_GetNumberBuyData(eventActionType)
    ---@type NumberBuyData
    local numberBuyData = self.numberBuyDataDict:Get(eventActionType)
    if numberBuyData == nil then
        numberBuyData = NumberBuyData()
        self.numberBuyDataDict:Add(eventActionType, numberBuyData)
    end
    return numberBuyData
end

--- @param eventActionType EventActionType
function EventEasterEggModel:GetNumberBuy(eventActionType, id)
    ---@type NumberBuyData
    local numberBuyData = self:_GetNumberBuyData(eventActionType)
    return numberBuyData.buyStatsDict:Get(id) or 0
end

--- @param eventActionType EventActionType
function EventEasterEggModel:AddNumberBuy(eventActionType, id, number)
    ---@type NumberBuyData
    local numberBuyData = self:_GetNumberBuyData(eventActionType)
    local current = numberBuyData.buyStatsDict:Get(id) or 0
    numberBuyData.buyStatsDict:Add(id, current + number)
end

--- @param packId number
function EventEasterEggModel:IncreaseNumberOfBoughtLimitedPack(packId)
    local pack = self:GetLimitedPackStatisticsInBound(packId)
    if pack ~= nil then
        pack:IncreaseNumberOfBought()
    else
        XDebug.Error(string.format("Limited Pack %d isn't exist", packId))
    end
end

function EventEasterEggModel:CheckResourceOnSeason()
    local endTime = self.timeData.endTime
    local savedEndSeason = zg.playerData.remoteConfig.eventEasterEggEnd or endTime
    if savedEndSeason ~= endTime then
        self:ClearMoneyType()
    end
    zg.playerData.remoteConfig.eventEasterEggEnd = endTime
    zg.playerData:SaveRemoteConfig()
end

function EventEasterEggModel:ClearMoneyType()
    local clearResource = function(moneyType)
        local currentValue = InventoryUtils.GetMoney(moneyType)
        InventoryUtils.Sub(ResourceType.Money, moneyType, currentValue)
    end
    clearResource(MoneyType.EVENT_EASTER_SILVER_EGG)
    clearResource(MoneyType.EVENT_EASTER_YELLOW_EGG)
    clearResource(MoneyType.EVENT_EASTER_RAINBOW_EGG)
    clearResource(MoneyType.EVENT_EASTER_YELLOW_HAMMER)
    clearResource(MoneyType.EVENT_EASTER_RAINBOW_HAMMER)
end

--- @return LimitedPackStatisticsInBound
--- @param packId number
function EventEasterEggModel:GetLimitedPackStatisticsInBound(packId)
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

--- @return SubscriptionPackCollectionInBound
function EventEasterEggModel:GetSubscriptionDurationData(dataId)
    local subscriptionPackCollectionInBound = self.subscriptionDataDict:Get(dataId)
    if subscriptionPackCollectionInBound == nil then
        subscriptionPackCollectionInBound = SubscriptionPackCollectionInBound()
        self.subscriptionDataDict:Add(dataId, subscriptionPackCollectionInBound)
    end
    return subscriptionPackCollectionInBound
end

--- @return number
function EventEasterEggModel:GetNumberChallengeArena()
    return self.numberChallenge:Get(2) or 0
end

--- @class EasterEggTab
EasterEggTab = {
    CHECK_IN = 1,
    BUNNY_CARD = 2,
    LIMITED_OFFER = 3,
    HUNT = 4,
    BREAK = 5,
}