--- @class GoldenTimeConfig
GoldenTimeConfig = Class(GoldenTimeConfig)

function GoldenTimeConfig:Ctor(path)
    local parsedData = CsvReaderUtils.ReadAndParseLocalFile(path)
    if parsedData == nil then
        XDebug.Error(string.format("Get EventConfig nil %s", path))
        return
    end
    self.lastDuration = tonumber(parsedData[1].last_duration)
    self.listGoldenTimeReward = List()
    for i = 1, #parsedData do
        local reward = RewardInBound.CreateByParams(parsedData[i])
        self.listGoldenTimeReward:Add(reward)
    end
end