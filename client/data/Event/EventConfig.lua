local EVENT_SUMMON_PATH = "csv/event/event_summon/data_%d/summon_quest.csv"
local EVENT_ARENA_PATH = "csv/event/event_arena/data_%d/arena_quest.csv"
local EVENT_TAVERN_PATH = "csv/event/event_tavern/data_%d/tavern_quest.csv"
local EVENT_CASINO_PATH = "csv/event/event_casino/data_%d/casino_quest.csv"
local EVENT_HERO_COLLECT_PATH = "csv/event/event_hero_collect/data_%d/hero_collect_quest.csv"
local EVENT_PROPHET_TREE_PATH = "csv/event/event_prophet_tree/data_%d/prophet_tree_quest.csv"
local EVENT_LOGIN_PATH = "csv/event/event_login/data_%d/login_reward.csv"
local EVENT_ARENA_RANKING_PATH = "csv/event/event_arena_rank/data_%d/arena_reward.csv"
local EVENT_RELEASE_FESTIVAL_PATH = "csv/event/event_release_festival/data_%d/release_festival.csv"
local EVENT_MARKET_CONFIG_FORMAT = "csv/event/event_market/data_%d/market_config.csv"
local EVENT_MARKET_ITEM_RATE_FORMAT = "csv/event/event_market/data_%d/market_item_rate.csv"

local EVENT_QUEST_ROUND_PATH = "csv/client/event_quest_round_config.csv"
local EVENT_MID_AUTUMN_PATH = "csv/event/event_mid_autumn/data_%d"
local EVENT_HALLO_WEEN_PATH = "csv/event/event_halloween/data_%d"
local EVENT_XMAS_PATH = "csv/event/event_christmas/data_%d"
local EVENT_BLACK_FRIDAY_PATH = "csv/event/event_black_friday/data_%d"
local EVENT_NEW_YEAR_PATH = "csv/event/event_new_year/data_%d"
local EVENT_LUNAR_NEW_YEAR_PATH = "csv/event/event_lunar_new_year/data_%d"
local EVENT_LUNAR_PATH_PATH = "csv/event/event_lunar_path/data_%d"
local EVENT_VALENTINE_PATH = "csv/event/event_valentine/data_%d"
local EVENT_NEW_HERO_QUEST_PATH = "csv/event/event_new_hero_quest/data_%d"
local EVENT_NEW_HERO_LOGIN_PATH = "csv/event/event_new_hero_login/data_%d"
local EVENT_NEW_HERO_COLLECTION_PATH = "csv/event/event_new_hero_collection_quest/data_%d"
local EVENT_NEW_HERO_EXCHANGE_PATH = "csv/event/event_new_hero_exchange/data_%d"
local EVENT_NEW_HERO_SPIN_PATH = "csv/event/event_new_hero_spin/data_%d"
local EVENT_MERGE_SERVER_PATH = "csv/event/event_server_merge/data_%d"
local EVENT_EASTER_EGG_PATH = "csv/event/event_easter/data_%d"

local EVENT_NEW_HERO_BOSS_CHALLENGE_PATH = "csv/event/event_new_hero_challenge_boss/data_%d"
local EVENT_BIRTHDAY_PATH = "csv/event/event_birthday/data_%d"
local EVENT_NEW_HERO_TREASURE_PATH = "csv/event/event_new_hero_treasure/data_%d"

local EVENT_NEW_HERO_SUMMON_PATH = "csv/event/event_new_hero_summon/data_%d"
local EVENT_NEW_HERO_RATE_UP_PATH = "csv/event/event_new_hero_rate_up/data_%d"

--- @class EventConfig
EventConfig = Class(EventConfig)

function EventConfig:Ctor()
    --- @type Dictionary -- {eventTimeType:EventTimeType, data:table}
    self.dataDict = Dictionary()
    --- @type Dictionary -- {eventTimeType:EventTimeType, round : number}
    self.eventQuestRoundConfig = nil
end

--- @return PackOfProducts|Dictionary<number,QuestElementConfig>
--- @param eventTimeType EventTimeType
--- @param dataId number => use when init data 
function EventConfig:GetData(eventTimeType, dataId)
    assert(eventTimeType)
    local data = self.dataDict:Get(eventTimeType)
    if data == nil or data.dataId ~= dataId then
        if eventTimeType == EventTimeType.EVENT_BUNDLE then
            data = ResourceMgr.GetPurchaseConfig():GetBundle():GetPack(dataId)
        elseif eventTimeType == EventTimeType.EVENT_HOT_DEAL then
            data = ResourceMgr.GetPurchaseConfig():GetHotDeal():GetPack(dataId)
        elseif EventTimeType.IsEventPopupQuest(eventTimeType) then
            if dataId == nil then
                XDebug.Error(string.format("dataId is nil: %d", data.dataId))
            end
            if eventTimeType == EventTimeType.EVENT_SUMMON_QUEST then
                data = self:GetQuestId(EVENT_SUMMON_PATH, dataId)
            elseif eventTimeType == EventTimeType.EVENT_PROPHET_TREE_QUEST then
                data = self:GetQuestId(EVENT_PROPHET_TREE_PATH, dataId)
            elseif eventTimeType == EventTimeType.EVENT_ARENA_QUEST then
                data = self:GetQuestId(EVENT_ARENA_PATH, dataId)
            elseif eventTimeType == EventTimeType.EVENT_TAVERN_QUEST then
                data = self:GetQuestId(EVENT_TAVERN_PATH, dataId)
            elseif eventTimeType == EventTimeType.EVENT_CASINO_QUEST then
                data = self:GetQuestId(EVENT_CASINO_PATH, dataId)
            elseif eventTimeType == EventTimeType.EVENT_COLLECT_QUEST then
                data = self:GetQuestId(EVENT_HERO_COLLECT_PATH, dataId)
            end
        elseif eventTimeType == EventTimeType.EVENT_LOGIN then
            require "lua.client.data.Event.EventLoginConfig"
            local eventLoginConfig = EventLoginConfig()
            data = eventLoginConfig:GetConfig(EVENT_LOGIN_PATH, dataId)
        elseif eventTimeType == EventTimeType.EVENT_ARENA_RANKING then
            require "lua.client.data.Event.EventArenaRankingConfig"
            data = EventArenaRankingConfig(EVENT_ARENA_RANKING_PATH, dataId)
        elseif eventTimeType == EventTimeType.EVENT_RELEASE_FESTIVAL then
            require "lua.client.data.Event.EventReleaseFestivalConfig"
            data = EventReleaseFestivalConfig(EVENT_RELEASE_FESTIVAL_PATH, dataId)
        elseif eventTimeType == EventTimeType.EVENT_MARKET then
            require "lua.client.data.Event.EventMarketConfig"
            data = EventMarketConfig(EVENT_MARKET_CONFIG_FORMAT, EVENT_MARKET_ITEM_RATE_FORMAT, dataId)
        elseif eventTimeType == EventTimeType.EVENT_SALE_OFF then
            data = ResourceMgr.GetPurchaseConfig():GetSaleOff():GetPack(dataId)
        elseif eventTimeType == EventTimeType.EVENT_SERVER_OPEN then
            require "lua.client.data.Event.EventServerOpen.ServerOpenData"
            data = ServerOpenData(dataId)
        elseif eventTimeType == EventTimeType.EVENT_RATE_UP then
            require "lua.client.data.Event.EventRateUp"
            data = EventRateUp(dataId)
        elseif eventTimeType == EventTimeType.EVENT_ARENA_PASS then
            data = ResourceMgr.GetPurchaseConfig():GetArenaPass():GetPack(dataId)
        elseif eventTimeType == EventTimeType.EVENT_DAILY_QUEST_PASS then
            data = ResourceMgr.GetPurchaseConfig():GetDailyQuestPass():GetPack(dataId)
        elseif eventTimeType == EventTimeType.EVENT_MID_AUTUMN then
            require "lua.client.data.Event.EventMidAutumnConfig"
            data = EventMidAutumnConfig(string.format(EVENT_MID_AUTUMN_PATH, dataId))
        elseif eventTimeType == EventTimeType.EVENT_HALLOWEEN then
            require "lua.client.data.Event.EventHalloweenConfig"
            data = EventHalloweenConfig(string.format(EVENT_HALLO_WEEN_PATH, dataId))
        elseif eventTimeType == EventTimeType.EVENT_XMAS then
            require "lua.client.data.Event.EventXmasConfig"
            data = EventXmasConfig(string.format(EVENT_XMAS_PATH, dataId))
        elseif eventTimeType == EventTimeType.EVENT_BLACK_FRIDAY then
            require "lua.client.data.Event.EventBlackFridayConfig"
            data = EventBlackFridayConfig(string.format(EVENT_BLACK_FRIDAY_PATH, dataId))
        elseif eventTimeType == EventTimeType.EVENT_NEW_YEAR then
            require "lua.client.data.Event.EventNewYearConfig"
            data = EventNewYearConfig(string.format(EVENT_NEW_YEAR_PATH, dataId))
        elseif eventTimeType == EventTimeType.EVENT_LUNAR_NEW_YEAR then
            require "lua.client.data.Event.EventLunarNewYear.EventLunarNewYearConfig"
            data = EventLunarNewYearConfig(string.format(EVENT_LUNAR_NEW_YEAR_PATH, dataId))
        elseif eventTimeType == EventTimeType.EVENT_VALENTINE then
            require "lua.client.data.Event.EventValentine.EventValentineConfig"
            data = EventValentineConfig(string.format(EVENT_VALENTINE_PATH, dataId))
        elseif eventTimeType == EventTimeType.EVENT_LUNAR_PATH then
            require "lua.client.data.Event.EventLunarPath.EventLunarPathConfig"
            data = EventLunarPathConfig(string.format(EVENT_LUNAR_PATH_PATH, dataId))
        elseif eventTimeType == EventTimeType.EVENT_NEW_HERO_QUEST then
            require "lua.client.data.Event.EventNewHeroQuest.EventNewHeroQuestConfig"
            data = EventNewHeroQuestConfig(string.format(EVENT_NEW_HERO_QUEST_PATH, dataId))
        elseif eventTimeType == EventTimeType.EVENT_NEW_HERO_LOGIN then
            require "lua.client.data.Event.EventNewHero.EventNewHeroLoginConfig"
            data = EventNewHeroLoginConfig(string.format(EVENT_NEW_HERO_LOGIN_PATH, dataId))
        elseif eventTimeType == EventTimeType.EVENT_NEW_HERO_BUNDLE then
            data = ResourceMgr.GetPurchaseConfig():GetNewHeroBundle():GetPack(dataId)
        elseif eventTimeType == EventTimeType.EVENT_NEW_HERO_COLLECTION then
            require "lua.client.data.Event.EventNewHeroCollection.EventNewHeroCollectionConfig"
            data = EventNewHeroCollectionConfig(string.format(EVENT_NEW_HERO_COLLECTION_PATH, dataId))
        elseif eventTimeType == EventTimeType.EVENT_NEW_HERO_EXCHANGE then
            require "lua.client.data.Event.EventNewHeroExchange.EventNewHeroExchangeConfig"
            data = EventNewHeroExchangeConfig(string.format(EVENT_NEW_HERO_EXCHANGE_PATH, dataId))
        elseif eventTimeType == EventTimeType.EVENT_NEW_HERO_SPIN then
            require "lua.client.data.Event.EventNewHero.Spin.EventNewHeroSpinConfig"
            data = EventNewHeroSpinConfig(string.format(EVENT_NEW_HERO_SPIN_PATH, dataId))
        elseif eventTimeType == EventTimeType.EVENT_MERGE_SERVER then
            require "lua.client.data.Event.EventMergeServer.EventMergeServerConfig"
            data = EventMergeServerConfig(string.format(EVENT_MERGE_SERVER_PATH, dataId))
        elseif eventTimeType == EventTimeType.EVENT_NEW_HERO_SUMMON then
            require "lua.client.data.Event.EventNewHero.Summon.EventNewHeroSummonConfig"
            data = EventNewHeroSummonConfig(string.format(EVENT_NEW_HERO_SUMMON_PATH, dataId))
        elseif eventTimeType == EventTimeType.EVENT_EASTER_EGG then
            require "lua.client.data.Event.EventEasterEgg.EventEasterEggConfig"
            data = EventEasterEggConfig(string.format(EVENT_EASTER_EGG_PATH, dataId))
        elseif eventTimeType == EventTimeType.EVENT_NEW_HERO_BOSS_CHALLENGE then
            require "lua.client.data.Event.EventNewHero.BossChallenge.EventNewHeroBossChallengeConfig"
            data = EventNewHeroBossChallengeConfig(string.format(EVENT_NEW_HERO_BOSS_CHALLENGE_PATH, dataId))
        elseif eventTimeType == EventTimeType.EVENT_BIRTHDAY then
            require "lua.client.data.Event.EventBirthday.EventBirthdayConfig"
            data = EventBirthdayConfig(string.format(EVENT_BIRTHDAY_PATH, dataId))
        elseif eventTimeType == EventTimeType.EVENT_NEW_HERO_TREASURE then
            require "lua.client.data.Event.EventNewHeroTreasure.EventNewHeroTreasureConfig"
            data = EventNewHeroTreasureConfig(string.format(EVENT_NEW_HERO_TREASURE_PATH, dataId))
        elseif eventTimeType == EventTimeType.EVENT_NEW_HERO_RATE_UP then
            require "lua.client.data.Event.EventNewHero.Summon.EventNewHeroSummonConfig"
            data = EventNewHeroSummonConfig(string.format(EVENT_NEW_HERO_RATE_UP_PATH, dataId))
        elseif eventTimeType == EventTimeType.EVENT_NEW_HERO_SKIN_BUNDLE then
            data = ResourceMgr.GetPurchaseConfig():GetNewHeroSkinBundleStore():GetPack(dataId)
        elseif eventTimeType == EventTimeType.EVENT_SKIN_BUNDLE then
            data = ResourceMgr.GetPurchaseConfig():GetSkinBundleStore():GetPack(dataId)
        else
            XDebug.Error(string.format("event_time_type don't support: %d", eventTimeType))
            return nil
        end
        if data ~= nil then
            data.dataId = dataId
            self.dataDict:Add(eventTimeType, data)
        end
    end
    return data
end

--- @return Dictionary
--- @param pathFormat string
--- @param dataId number
function EventConfig:GetQuestId(pathFormat, dataId)
    local path = string.format(pathFormat, dataId)
    local parsedData = CsvReaderUtils.ReadAndParseLocalFile(path)
    if parsedData == nil then
        XDebug.Error(string.format("Get EventConfig nil %s, %s", pathFormat, dataId))
        return
    end
    --- @type Dictionary
    local questDict = Dictionary()
    --- @type QuestElementConfig
    local questConfig
    for i = 1, #parsedData do
        local questId = parsedData[i].quest_id
        if questId ~= nil then
            questConfig = QuestElementConfig.GetInstanceFromCsv(parsedData[i])
            questDict:Add(tonumber(questId), questConfig)
        else
            questConfig:AddResData(RewardInBound.CreateByParams(parsedData[i]))
        end
    end
    return questDict
end

--- @return number
--- @param eventTimeType EventTimeType
function EventConfig:GetEventQuestRoundConfigByType(eventTimeType)
    if self.eventQuestRoundConfig == nil then
        self.eventQuestRoundConfig = Dictionary()
        local parsedData = CsvReaderUtils.ReadAndParseLocalFile(EVENT_QUEST_ROUND_PATH)
        for i = 1, #parsedData do
            local eventTimeType = tonumber(parsedData[i].event_time_type)
            local round = tonumber(parsedData[i].round)
            self.eventQuestRoundConfig:Add(eventTimeType, round)
        end
    end
    if self.eventQuestRoundConfig:IsContainKey(eventTimeType) then
        return self.eventQuestRoundConfig:Get(eventTimeType)
    end
    return 1
end

return EventConfig

