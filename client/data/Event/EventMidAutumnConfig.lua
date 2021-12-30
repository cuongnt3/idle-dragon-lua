--- @class EventMidAutumnConfig
EventMidAutumnConfig = Class(EventMidAutumnConfig)

function EventMidAutumnConfig:Ctor(path)
    self.path = path
    --- @type Dictionary
    self.loginRewardDict = nil
    --- @type EventFeedBeastConfig
    self._feedBeastConfig = nil
    --- @type List
    self._listExchange = nil
    --- @type {listGoldenTimeReward : List, lastDuration: number}
    self._goldenTimeConfig = nil
end

--- @return Dictionary
function EventMidAutumnConfig:GetLoginConfig()
    local path = string.format("%s/%s", self.path, "login_reward.csv")
    local parsedData = CsvReaderUtils.ReadAndParseLocalFile(path)
    if parsedData == nil then
        XDebug.Error(string.format("Get EventConfig nil %s", path))
        return
    end
    if self.loginRewardDict == nil then
        local listReward = nil
        self.loginRewardDict = Dictionary()
        for i = 1, #parsedData do
            local day = parsedData[i].day
            if day == nil then
                listReward:Add(RewardInBound.CreateByParams(parsedData[i]))
            else
                day = tonumber(parsedData[i].day)
                listReward = List()
                listReward:Add(RewardInBound.CreateByParams(parsedData[i]))
                self.loginRewardDict:Add(day, listReward)
            end
        end
    end
    return self.loginRewardDict
end

--- @return {listGoldenTimeReward : List, lastDuration : number}
function EventMidAutumnConfig:GetGoldenTimeConfig()
    if self._goldenTimeConfig == nil then
        local path = string.format("%s/golden_time/%s", self.path, "golden_time.csv")
        require "lua.client.data.Event.GoldenTimeConfig"
        self._goldenTimeConfig = GoldenTimeConfig(path)
    end
    return self._goldenTimeConfig
end

--- @return EventFeedBeastConfig
function EventMidAutumnConfig:GetEventFeedBeastConfig()
    if self._feedBeastConfig == nil then
        require "lua.client.data.Event.EventMidAutumn.EventFeedBeastConfig"
        self._feedBeastConfig = EventFeedBeastConfig(self.path)
    end
    return self._feedBeastConfig
end

--- @return List
function EventMidAutumnConfig:_GetListExchangeConfigPath(key, csv)
    ---@type List
    local list = self[key]
    if list == nil then
        local path = string.format("%s/%s", self.path, csv)
        require "lua.client.data.Event.ExchangeEventConfig"
        list = ExchangeEventConfig.GetListExchangeConfigPath(path)
        self[key] = list
    end
    return list
end

--- @return List
function EventMidAutumnConfig:GetListExchangeConfig()
    return self:_GetListExchangeConfigPath("listExchange", "exchange_reward.csv")
end

--- @return List
function EventMidAutumnConfig:GetListGemBoxConfig()
    return self:_GetListExchangeConfigPath("listGemBox", "gem_box.csv")
end
