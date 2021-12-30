require "lua.client.data.Event.EventXmas.EventXmasLoginDataConfig"

local LOGIN_PATH = "login_reward.csv"
local DAILY_QUEST_PATH = "daily_quest.csv"
local ACCUMULATE_QUEST_PATH = "point_quest.csv"
local BONUS_DAILY_QUEST_REWARD_PATH = "csv/event/event_easter/data_%d/egg_hunt/daily_quest_reward.csv"

--- @class BreakEggPrice
BreakEggPrice = Class(BreakEggPrice)

function BreakEggPrice:Ctor(data)
    if data ~= nil then
        self.gem = tonumber(data.gem_price)
        self.moneyType = tonumber(data.money_type)
        self.moneyValue = tonumber(data.money_value)
    end
end

--- @class EventEasterEggConfig
EventEasterEggConfig = Class(EventEasterEggConfig)

function EventEasterEggConfig:Ctor(path)
    self.path = path
    --- @type Dictionary
    self.dailyQuestDict = nil
    --- @type Dictionary
    self.accumulateQuestDict = nil
    --- @type Dictionary
    self._bonusDailyQuestRewardDict = Dictionary()
end

--- @type Dictionary -- <number, QuestElementConfig>
function EventEasterEggConfig:GetQuestConfig()
    if self.dailyQuestDict == nil then
        self.dailyQuestDict = self:InitQuest(DAILY_QUEST_PATH)
    end
    return self.dailyQuestDict
end

--- @type Dictionary -- <number, QuestElementConfig>
function EventEasterEggConfig:GetAccumulateQuestConfig()
    if self.accumulateQuestDict == nil then
        self.accumulateQuestDict = self:InitQuest(ACCUMULATE_QUEST_PATH)
    end
    return self.accumulateQuestDict
end

--- @return Dictionary
function EventEasterEggConfig:InitQuest(path)
    local path = string.format("%s/%s", self.path, path)
    return QuestElementConfig.ReadQuestConfigFromPath(path)
end

--- @return Dictionary
function EventEasterEggConfig:GetLoginConfig()
    local path = string.format("%s/%s", self.path, LOGIN_PATH)
    local parsedData = CsvReaderUtils.ReadAndParseLocalFile(path)
    if parsedData == nil then
        XDebug.Error(string.format("Get EventConfig nil %s", path))
        return
    end
    if self.loginRewardDict == nil then
        local listReward = nil
        -- Dictionary(page, Dictionary(day, List<RewardInBound>)
        self.pageDict = Dictionary()
        self.loginRewardDict = Dictionary()
        local isReclaim = parsedData[1].is_reclaim
        if isReclaim ~= nil then
            self.isReclaim = MathUtils.ToBoolean(isReclaim)
        end
        local page = 1
        local loginDataConfig = nil
        for i = 1, #parsedData do
            local day = parsedData[i].day
            if day == nil then
                loginDataConfig.rewardList:Add(RewardInBound.CreateByParams(parsedData[i]))
            else
                day = tonumber(parsedData[i].day)
                listReward = List()
                listReward:Add(RewardInBound.CreateByParams(parsedData[i]))
                local rewardInBound = RewardInBound.CreateBySingleParam(ResourceType.Money, parsedData[i].money_type, parsedData[i].money_value)
                loginDataConfig = EventXmasLoginDataConfig(listReward, rewardInBound)
                self.loginRewardDict:Add(day, loginDataConfig)
                if day % 7 == 0 then
                    self.pageDict:Add(page, self.loginRewardDict)
                    page = page + 1
                    self.loginRewardDict = Dictionary()
                end
            end
        end
    end
    return self.pageDict
end

--- @return Dictionary
function EventEasterEggConfig:IsNewLogin()
    if self.isReclaim == nil then
        return false
    end
    return self.isReclaim
end

--- @return List
function EventEasterEggConfig:GetListExchangeConfig()
    if self.listExchange == nil then
        local path = string.format("%s/%s", self.path, "exchange_egg.csv")
        require "lua.client.data.Event.ExchangeEventConfig"
        self.listExchange = ExchangeEventConfig.GetListExchangeConfigPath(path)
    end
    return self.listExchange
end

function EventEasterEggConfig:GetBreakEggPrice(index)
    if self.breakEggPriceList == nil then
        ---@type List
        self.breakEggPriceList = List()
        local path = string.format("%s/%s", self.path, "break_egg_config.csv")
        local parsedData = CsvReaderUtils.ReadAndParseLocalFile(path)
        if parsedData == nil then
            XDebug.Error(string.format("Get EventConfig nil %s", path))
            return
        end
        for i = 1, #parsedData do
            self.breakEggPriceList:Add(BreakEggPrice(parsedData[i]))
        end
    end
    return self.breakEggPriceList:Get(index)
end

function EventEasterEggConfig:GetListRewardEggSilver()
    if self.listRewardEggSilver == nil then
        ---@type List
        self.listRewardEggSilver = List()
        local path = string.format("%s/%s", self.path, "egg_rate/egg_silver_rate.csv")
        local parsedData = CsvReaderUtils.ReadAndParseLocalFile(path)
        if parsedData == nil then
            XDebug.Error(string.format("Get EventConfig nil %s", path))
            return
        end
        for i = 1, #parsedData do
            self.listRewardEggSilver:Add(RewardInBound.CreateByParams(parsedData[i]):GetIconData())
        end
    end
    return self.listRewardEggSilver
end

function EventEasterEggConfig:GetListRewardEggYellow()
    if self.listRewardEggYellow == nil then
        ---@type List
        self.listRewardEggYellow = List()
        local path = string.format("%s/%s", self.path, "egg_rate/egg_yellow_rate.csv")
        local parsedData = CsvReaderUtils.ReadAndParseLocalFile(path)
        if parsedData == nil then
            XDebug.Error(string.format("Get EventConfig nil %s", path))
            return
        end
        for i = 1, #parsedData do
            self.listRewardEggYellow:Add(RewardInBound.CreateByParams(parsedData[i]):GetIconData())
        end
    end
    return self.listRewardEggYellow
end

function EventEasterEggConfig:GetListRewardEggRainbow()
    if self.listRewardEggRainbow == nil then
        ---@type List
        self.listRewardEggRainbow = List()
        local path = string.format("%s/%s", self.path, "egg_rate/egg_rainbow_rate.csv")
        local parsedData = CsvReaderUtils.ReadAndParseLocalFile(path)
        if parsedData == nil then
            XDebug.Error(string.format("Get EventConfig nil %s", path))
            return
        end
        for i = 1, #parsedData do
            self.listRewardEggRainbow:Add(RewardInBound.CreateByParams(parsedData[i]):GetIconData())
        end
    end
    return self.listRewardEggRainbow
end

--- @return RewardInBound
function EventEasterEggConfig:GetDailyQuestBonusReward(dataId, questId)
    if self._bonusDailyQuestRewardDict:IsContainKey(dataId) == false then
        self:_ReadBonusRewardData(dataId)
    end
    --- @type Dictionary
    local rewardDict = self._bonusDailyQuestRewardDict:Get(dataId)
    return rewardDict:Get(questId)
end

function EventEasterEggConfig:_ReadBonusRewardData(dataId)
    local rewardDict = Dictionary()
    local dataConfig = CsvReaderUtils.ReadAndParseLocalFile(string.format(BONUS_DAILY_QUEST_REWARD_PATH, dataId))
    for i = 1, #dataConfig do
        local questId = tonumber(dataConfig[i].id)
        local rewardInBound = RewardInBound.CreateByParams(dataConfig[i])
        rewardDict:Add(questId, rewardInBound)
    end
    self._bonusDailyQuestRewardDict:Add(dataId, rewardDict)
end