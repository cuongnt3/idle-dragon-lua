require "lua.client.data.Event.EventXmas.EventXmasLoginDataConfig"

local LOGIN_PATH = "login_reward.csv"
local IDLE_REWARD = "idle_reward.csv"
local DAILY_QUEST_PATH = "daily_quest.csv"
local ACCUMULATE_QUEST_PATH = "point_quest.csv"

--- @class EventBirthdayConfig
EventBirthdayConfig = Class(EventBirthdayConfig)

function EventBirthdayConfig:Ctor(path)
    self.path = path
    --- @type Dictionary
    self.dailyQuestDict = nil
    --- @type Dictionary
    self.accumulateQuestDict = nil
end

--- @type Dictionary -- <number, QuestElementConfig>
function EventBirthdayConfig:GetQuestConfig()
    if self.dailyQuestDict == nil then
        self.dailyQuestDict = self:InitQuest(DAILY_QUEST_PATH)
    end
    return self.dailyQuestDict
end

--- @type Dictionary -- <number, QuestElementConfig>
function EventBirthdayConfig:GetAccumulateQuestConfig()
    if self.accumulateQuestDict == nil then
        self.accumulateQuestDict = self:InitQuest(ACCUMULATE_QUEST_PATH)
    end
    return self.accumulateQuestDict
end

--- @return Dictionary
function EventBirthdayConfig:InitQuest(path)
    local path = string.format("%s/%s", self.path, path)
    return QuestElementConfig.ReadQuestConfigFromPath(path)
end

--- @return Dictionary
function EventBirthdayConfig:GetLoginConfig()
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
function EventBirthdayConfig:IsNewLogin()
    if self.isReclaim == nil then
        return false
    end
    return self.isReclaim
end

--- @return {listGoldenTimeReward : List, lastDuration : number}
function EventBirthdayConfig:GetGoldenTimeConfig()
    if self._goldenTimeConfig == nil then
        local path = string.format("%s/%s", self.path, IDLE_REWARD)
        require "lua.client.data.Event.GoldenTimeConfig"
        self._goldenTimeConfig = GoldenTimeConfig(path)
    end
    return self._goldenTimeConfig
end

--- @return List
function EventBirthdayConfig:GetListExchangeConfig()
    if self.listExchange == nil then
        local path = string.format("%s/%s", self.path, "exchange_reward.csv")
        require "lua.client.data.Event.ExchangeEventConfig"
        self.listExchange = ExchangeEventConfig.GetListExchangeConfigPath(path)
    end
    return self.listExchange
end

--- @return TreasureRewardConfig
function EventBirthdayConfig:ReadCsvTreasure()
    if self.dictTreasureReward == nil then
        require "lua.client.data.Event.EventNewHeroTreasure.TreasureRewardConfig"
        local path = string.format("%s/%s", self.path, "treasure_map/island_reward.csv")
        local parsedData = CsvReaderUtils.ReadAndParseLocalFile(path)
        if parsedData == nil then
            XDebug.Error(string.format("GetListTreasureReward nil %s", path))
            return
        end
        self.dictTreasureReward = Dictionary()
        ---@type TreasureRewardConfig
        local treasureRewardConfig = nil
        for i = 1, #parsedData do
            if parsedData[i].id ~= nil then
                treasureRewardConfig = TreasureRewardConfig(parsedData[i])
                ---@type List
                local list = self.dictTreasureReward:Get(treasureRewardConfig.line)
                if list == nil then
                    list = List()
                    self.dictTreasureReward:Add(treasureRewardConfig.line, list)
                end
                list:Add(treasureRewardConfig)
            else
                treasureRewardConfig:AddReward(parsedData[i])
            end
        end
    end
end

--- @return TreasureRewardConfig
function EventBirthdayConfig:GetTreasureRewardConfig(line, index)
    self:ReadCsvTreasure()
    return self.dictTreasureReward:Get(line):Get(index)
end

--- @return number
function EventBirthdayConfig:GetTreasureLine()
    self:ReadCsvTreasure()
    return self.dictTreasureReward:Count()
end

--- @return List TreasureRewardConfig
function EventBirthdayConfig:GetListTreasureRewardConfig(line)
    self:ReadCsvTreasure()
    return self.dictTreasureReward:Get(line)
end

--- @return FinalTreasureRewardConfig
function EventBirthdayConfig:GetFinalTreasureRewardConfig(index)
    self:ReadCsvLineComplete()
    return self.dictListRewardLineComplete:Get(index)
end

--- @return Dict
function EventBirthdayConfig:GetDictRewardLineComplete()
    self:ReadCsvLineComplete()
    return self.dictListRewardLineComplete
end

---@return List
function EventBirthdayConfig:GetListWheelConfig()
    if self.listWheelConfig == nil then
        require "lua.client.data.Event.EventBirthday.EventBirthdayWheelConfig"
        local path = string.format("%s/%s", self.path, "wheel_config.csv")
        local parsedData = CsvReaderUtils.ReadAndParseLocalFile(path)
        if parsedData == nil then
            XDebug.Error(string.format("ReadDataWheel nil %s", path))
            return
        end
        self.listWheelConfig = List()
        ---@type EventBirthdayWheelConfig
        local cache = nil
        for i = 1, #parsedData do
            if parsedData[i].round_id ~= nil then
                cache = EventBirthdayWheelConfig.CreateByParams(parsedData[i])
                self.listWheelConfig:Add(cache)
            else
                cache:AddReward(parsedData[i])
            end
        end
    end
    return self.listWheelConfig
end