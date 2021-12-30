local CARD_PATH = "event_card.csv"
local GEM_PACK_PATH = "event_gem_pack.csv"

--- @class EventBlackFridayConfig
EventBlackFridayConfig = Class(EventBlackFridayConfig)

function EventBlackFridayConfig:Ctor(path)
    self.path = path
    --- @type List
    self.gemPackList = nil

    self.cardDuration = nil
end

function EventBlackFridayConfig:GetGemPackListConfig()
    if self.gemPackList == nil then
        local path = string.format("%s/%s", self.path, GEM_PACK_PATH)
        require "lua.client.data.Event.ExchangeEventConfig"
        self.gemPackList = ExchangeEventConfig.GetListExchangeConfigPath(path)
    end
    return self.gemPackList
end
function EventBlackFridayConfig:GetCardDurationMaxDictionaryConfig()
    if self.cardDuration == nil then
        local path = string.format("%s/%s", self.path, CARD_PATH)
        self.cardDuration= Dictionary()
        local parsedData = CsvReaderUtils.ReadAndParseLocalFile(path)
        for i = 1, #parsedData do
            if parsedData[i].id ~= nil then
                local duration = parsedData[i].duration_in_days
                self.cardDuration:Add(i, duration)
            end
        end
        return self.cardDuration
    end
    return self.cardDuration
end

