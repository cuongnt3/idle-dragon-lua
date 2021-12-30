--- @class FeatureLockData
FeatureLockData = Class(FeatureLockData)

--- @return void
function FeatureLockData:Ctor(feature, level, stage)
    --- @type number
    self.feature = feature
    --- @type number
    self.level = level
    --- @type number
    self.stage = stage
end

--- @return void
--- @param data string
function FeatureLockData:ParseCsv(data)
    self.level = tonumber(data.level)
    self.stage = tonumber(data.stage)
end