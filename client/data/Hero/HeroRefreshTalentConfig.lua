--- @class HeroRefreshTalentConfig
HeroRefreshTalentConfig = Class(HeroRefreshTalentConfig)

function HeroRefreshTalentConfig:Ctor()
    --- @type Dictionary
    self.refreshDict = nil
    self:Init()
end

function HeroRefreshTalentConfig:Init()
    local parsedData = CsvReaderUtils.ReadAndParseLocalFile("csv/item/talent/talent_config.csv")
    self.refreshDict = Dictionary()
    for i = 1, #parsedData do
        local data = parsedData[i]
        self.refreshDict:Add(tonumber(data.number_refresh),
                ItemIconData.CreateInstance(ResourceType.Money, tonumber(data.money_type), tonumber(data.money_value)))
    end
end

---@type ItemIconData
function HeroRefreshTalentConfig:GetPriceRefresh(number)
    local data = nil
    local index = nil
    for i, v in pairs(self.refreshDict:GetItems()) do
        if number >= i then
            if index == nil or index < i then
                index = i
                data = v
            end
        end
    end
    return data
end

function HeroRefreshTalentConfig:GetStarUnlockTalent()
    return 13
end

return HeroRefreshTalentConfig