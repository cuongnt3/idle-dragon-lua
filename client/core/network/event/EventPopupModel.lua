require "lua.client.core.network.playerData.event.EventTimeData"

--- @class EventPopupModel
EventPopupModel = Class(EventPopupModel)

function EventPopupModel:Ctor()
    --- @type boolean
    self.hasData = nil
    --- @type EventTimeData
    self.timeData = nil
    --- @type number
    self.lastTimeRequest = nil
end

--- @param buffer UnifiedNetwork_ByteBuf
function EventPopupModel:ReadEventTime(buffer)
    self.timeData = EventTimeData.CreateByBuffer(buffer)
end

--- @return boolean
function EventPopupModel:IsOpening()
    return self.timeData:IsOpening()
end

--- @param buffer UnifiedNetwork_ByteBuf
function EventPopupModel:ReadData(buffer)
    self.hasData = buffer:GetBool()
    self.lastTimeRequest = zg.timeMgr:GetServerTime()
    --XDebug.Log(self.timeData.eventType)
    --XDebug.Log(self.hasData)
    if self.hasData == true then
        self:ReadInnerData(buffer)
    end
end

--- @param buffer UnifiedNetwork_ByteBuf
function EventPopupModel:ReadInnerData(buffer)

end

--- @return PackOfProducts|Dictionary<number,QuestElementConfig>
function EventPopupModel:GetConfig()
    local type = self:GetType()
    local dataId = self:GetTime().dataId
    return ResourceMgr.GetEventConfig():GetData(type, dataId)
end

--- @return EventTimeData
function EventPopupModel:GetTime()
    if self.timeData == nil then
        XDebug.Error("time data is nil")
    end
    return self.timeData
end

--- @return EventTimeType
function EventPopupModel:GetType()
    return self.timeData.eventType
end

--- @return boolean
function EventPopupModel:HasNotification()
    return false
end

function EventPopupModel:RequestEventData(callback)
    local onReceived = function(result)
        --- @param buffer UnifiedNetwork_ByteBuf
        local onBufferReading = function(buffer)
            local bitmask = buffer:GetLong()
            local getEventData = function(innerBuffer)
                self:ReadData(innerBuffer)
            end
            if NetworkUtils.CheckMaskRequest(buffer, getEventData) == false then
                XDebug.Log("event_time_type error bitmask: " .. tostring(self:GetType()))
            end
        end
        NetworkUtils.ExecuteResult(result, onBufferReading, callback, SmartPoolUtils.LogicCodeNotification)
    end
    NetworkUtils.Request(OpCode.EVENT_DATA_GET, UnknownOutBound.CreateInstance(PutMethod.Long, BitUtils.TurnOn(0, self:GetType())),
            onReceived, true)
end

function EventPopupModel.GetEventInstanceByType(eventTimeType)
    if EventTimeType.IsEventPopupQuest(eventTimeType) then
        require "lua.client.core.network.event.EventPopupQuestModel"
        return EventPopupQuestModel()
    elseif eventTimeType == EventTimeType.EVENT_BUNDLE
            or eventTimeType == EventTimeType.EVENT_HOT_DEAL then
        require "lua.client.core.network.event.EventPopupPurchaseModel"
        return EventPopupPurchaseModel()
    elseif eventTimeType == EventTimeType.EVENT_LOGIN then
        require "lua.client.core.network.event.EventPopupLoginModel"
        return EventPopupLoginModel()
    elseif eventTimeType == EventTimeType.EVENT_ARENA_RANKING then
        require "lua.client.core.network.event.EventPopupArenaRankingModel"
        return EventPopupArenaRankingModel()
    elseif eventTimeType == EventTimeType.EVENT_RELEASE_FESTIVAL then
        require "lua.client.core.network.event.EventReleaseFestivalModel"
        return EventReleaseFestivalModel()
    elseif eventTimeType == EventTimeType.EVENT_EXCHANGE_QUEST then
        require "lua.client.core.network.event.EventExchangeModel"
        return EventExchangeModel()
    elseif eventTimeType == EventTimeType.EVENT_MARKET then
        require "lua.client.core.network.event.EventMarketModel"
        return EventMarketModel()
    elseif eventTimeType == EventTimeType.EVENT_RATE_UP then
        require "lua.client.core.network.event.EventRateUpModel"
        return EventRateUpModel()
    elseif eventTimeType == EventTimeType.EVENT_GUILD_QUEST then
        require "lua.client.core.network.event.EventGuildQuestModel"
        return EventGuildQuestModel()
    elseif eventTimeType == EventTimeType.EVENT_SALE_OFF then
        require "lua.client.core.network.event.EventSaleOffModel"
        return EventSaleOffModel()
    elseif eventTimeType == EventTimeType.EVENT_SERVER_OPEN then
        require "lua.client.core.network.event.eventOpenServer.EventOpenServerInbound"
        return EventOpenServerInbound()
    elseif eventTimeType == EventTimeType.EVENT_ARENA_PASS then
        require "lua.client.core.network.event.EventArenaPassModel"
        return EventArenaPassModel()
    elseif eventTimeType == EventTimeType.EVENT_DAILY_QUEST_PASS then
        require "lua.client.core.network.event.EventDailyQuestPassModel"
        return EventDailyQuestPassModel()
    elseif eventTimeType == EventTimeType.EVENT_MID_AUTUMN then
        require "lua.client.core.network.event.eventMidAutumnModel.EventMidAutumnModel"
        return EventMidAutumnModel()
    elseif eventTimeType == EventTimeType.EVENT_HALLOWEEN then
        require "lua.client.core.network.event.eventHalloweenModel.EventHalloweenModel"
        return EventHalloweenModel()
    elseif eventTimeType == EventTimeType.EVENT_XMAS then
        require "lua.client.core.network.event.eventXmasModel.EventXmasModel"
        return EventXmasModel()
    elseif eventTimeType == EventTimeType.EVENT_NEW_YEAR then
        require "lua.client.core.network.event.eventNewYear.EventNewYearModel"
        return EventNewYearModel()
    elseif eventTimeType == EventTimeType.EVENT_BLACK_FRIDAY then
        require "lua.client.core.network.event.eventBlackFridayModel.EventBlackFridayModel"
        return EventBlackFridayModel()
    elseif eventTimeType == EventTimeType.EVENT_LUNAR_NEW_YEAR then
        require "lua.client.core.network.event.eventLunarNewYear.EventLunarNewYearModel"
        return EventLunarNewYearModel()
    elseif eventTimeType == EventTimeType.EVENT_VALENTINE then
        require "lua.client.core.network.event.eventValentine.EventValentineModel"
        return EventValentineModel()
    elseif eventTimeType == EventTimeType.EVENT_LUNAR_PATH then
        require "lua.client.core.network.event.eventLunarPathModel.EventLunarPathModel"
        return EventLunarPathModel()
    elseif eventTimeType == EventTimeType.EVENT_NEW_HERO_QUEST then
        require "lua.client.core.network.event.eventNewHeroQuest.EventNewHeroQuestModel"
        return EventNewHeroQuestModel()
    elseif eventTimeType == EventTimeType.EVENT_NEW_HERO_LOGIN then
        require "lua.client.core.network.event.eventNewHero.EventNewHeroLoginModel"
        return EventNewHeroLoginModel()
    elseif eventTimeType == EventTimeType.EVENT_NEW_HERO_BUNDLE then
        require "lua.client.core.network.event.eventNewHeroBundle.EventNewHeroBundleModel"
        return EventNewHeroBundleModel()
    elseif eventTimeType == EventTimeType.EVENT_NEW_HERO_COLLECTION then
        require "lua.client.core.network.event.eventNewHeroCollection.EventNewHeroCollectionModel"
        return EventNewHeroCollectionModel()
    elseif eventTimeType == EventTimeType.EVENT_NEW_HERO_EXCHANGE then
        require "lua.client.core.network.event.eventNewHeroExchange.EventNewHeroExchangeModel"
        return EventNewHeroExchangeModel()
    elseif eventTimeType == EventTimeType.EVENT_NEW_HERO_SPIN then
        require "lua.client.core.network.event.eventNewHero.EventNewHeroSpinModel"
        return EventNewHeroSpinModel()
    elseif eventTimeType == EventTimeType.EVENT_NEW_HERO_SUMMON then
        require "lua.client.core.network.event.eventNewHero.EventNewHeroSummonModel"
        return EventNewHeroSummonModel()
    elseif eventTimeType == EventTimeType.EVENT_MERGE_SERVER then
        require "lua.client.core.network.event.eventMergeServer.EventMergeServerModel"
        return EventMergeServerModel()
    elseif eventTimeType == EventTimeType.EVENT_EASTER_EGG then
        require "lua.client.core.network.event.eventEasterEgg.EventEasterEggModel"
        return EventEasterEggModel()
    elseif eventTimeType == EventTimeType.EVENT_NEW_HERO_BOSS_CHALLENGE then
        require "lua.client.core.network.event.eventNewHero.EventNewHeroBossChallengeModel"
        return EventNewHeroBossChallengeModel()
    elseif eventTimeType == EventTimeType.EVENT_NEW_HERO_BOSS_LEADER_BOARD then
        require "lua.client.core.network.event.eventNewHeroBossLeaderBoard.EventNewHeroBossLeaderBoardModel"
        return EventNewHeroBossLeaderBoardModel()
    elseif eventTimeType == EventTimeType.EVENT_BIRTHDAY then
        require "lua.client.core.network.event.eventBirthday.EventBirthdayModel"
        return EventBirthdayModel()
    elseif eventTimeType == EventTimeType.EVENT_NEW_HERO_TREASURE then
        require "lua.client.core.network.event.eventNewHero.EventNewHeroTreasureModel"
        return EventNewHeroTreasureModel()
    elseif eventTimeType == EventTimeType.EVENT_NEW_HERO_RATE_UP then
        require "lua.client.core.network.event.eventNewHero.EventNewHeroRateUpModel"
        return EventNewHeroRateUpModel()
    elseif eventTimeType == EventTimeType.EVENT_NEW_HERO_SKIN_BUNDLE then
        require "lua.client.core.network.event.eventNewHero.EventNewHeroSkinBundleModel"
        return EventNewHeroSkinBundleModel()
    elseif eventTimeType == EventTimeType.EVENT_SKIN_BUNDLE then
        require "lua.client.core.network.event.eventSkinBundle.EventSkinBundleModel"
        return EventSkinBundleModel()
    else
        return EventPopupModel()
    end
end

--- @return QuestUnitInBound
--- @param indexOfList number
function EventPopupModel:GetDataByIndexOfList(indexOfList)
    for _, v in pairs(self.dataDict:GetItems()) do
        indexOfList = indexOfList - 1
        if indexOfList == 0 then
            return v
        end
    end
    return nil
end

--- @return boolean
function EventPopupModel:IsAvailableToRequest()
    return false
end

--- @param opCode OpCode
--- @param packId number
function EventPopupModel:GetNumberBuyOpCode(opCode, packId)
    return 0
end

--- @param opCode OpCode
--- @param packId number
function EventPopupModel:AddNumberBuyOpCode(opCode, packId, number)
    XDebug.Error(string.format("Need override this method OpCode: %s, packId: %s, number: %s", opCode, packId, number))
end