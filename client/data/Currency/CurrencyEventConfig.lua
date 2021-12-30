--- @class CurrencyEventConfig
CurrencyEventConfig = Class(CurrencyEventConfig)

--- @return void
function CurrencyEventConfig:Ctor()
    ---@type List
    self.list = List()
    local parsedData = CsvReaderUtils.ReadAndParseLocalFile("csv/client/money_event.csv")
    for i = 1, #parsedData do
        local data = {}
        data.id = tonumber(parsedData[i].id)
        data.eventType = tonumber(parsedData[i].event_type)
        data.dataId = tonumber(parsedData[i].data)
        self.list:Add(data)
    end
end

--- @return List
function CurrencyEventConfig:GetListCurrencyIgnor()
    local listIgnorBuyEvent = List()
    for i, v in ipairs(self.list:GetItems()) do
        if (listIgnorBuyEvent:IsContainValue(v.id) == false) then
            listIgnorBuyEvent:Add(v.id)
        end
    end
    for i, v in ipairs(self.list:GetItems()) do
        if EventInBound.IsEventOpening(v.eventType, v.dataId) then
            listIgnorBuyEvent:RemoveByReference(v.id)
        end
    end
    return listIgnorBuyEvent
end

return CurrencyEventConfig