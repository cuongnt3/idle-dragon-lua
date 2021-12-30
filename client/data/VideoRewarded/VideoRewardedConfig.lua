
--- @class VideoRewardedConfig
VideoRewardedConfig = Class(VideoRewardedConfig)

--- @return void
function VideoRewardedConfig:Ctor()
    self.limit = nil
    self.prizeList = nil
end

--- @return List RewardInBound
--- @param viewNumber number
function VideoRewardedConfig:GetPrize(viewNumber)
    if self.prizeList == nil then
        self.prizeList = List()
        local parsedData = CsvReaderUtils.ReadAndParseLocalFile(CsvPathConstants.VIDEO_REWARDED_PRIZE_PATH)
        --- @type List
        local rewardList
        for i = 1, #parsedData do
            local data = parsedData[i]
            if data['view_number'] ~= nil then
                rewardList = List()
                self.prizeList:Add(rewardList)
            end
            rewardList:Add(RewardInBound.CreateByParams(data))
        end
    end
    return self.prizeList:Get(viewNumber)
end

--- @return number
function VideoRewardedConfig:GetLimit()
    if self.limit == nil then
        local parsedData = CsvReaderUtils.ReadAndParseLocalFile(CsvPathConstants.VIDEO_REWARDED_CONFIG_PATH)
        self.limit = tonumber(parsedData[1]["limit"])
    end
    return self.limit
end

return VideoRewardedConfig