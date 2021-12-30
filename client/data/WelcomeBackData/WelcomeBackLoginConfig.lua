require "lua.client.data.Event.EventXmas.EventXmasLoginDataConfig"

local LOGIN_PATH = "csv/comeback/data_%s/login_reward.csv"

--- @class WelcomeBackLoginConfig
WelcomeBackLoginConfig = Class(WelcomeBackLoginConfig)

function WelcomeBackLoginConfig:Ctor(dataId)
    self.dataId = dataId
    --- @type Dictionary
    self.loginRewardDict = nil
end

--- @return Dictionary
function WelcomeBackLoginConfig:GetLoginConfig()
    local path = string.format(LOGIN_PATH, self.dataId)
    local parsedData = CsvReaderUtils.ReadAndParseLocalFile(path)
    if parsedData == nil then
        XDebug.Error(string.format("Get EventConfig nil %s", path))
        return
    end
    if self.loginRewardDict == nil then
        local listReward = nil
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
function WelcomeBackLoginConfig:IsNewLogin()
    if self.isReclaim == nil then
        return false
    end
    return self.isReclaim
end