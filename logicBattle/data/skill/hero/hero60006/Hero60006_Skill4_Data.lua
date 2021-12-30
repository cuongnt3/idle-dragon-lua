--- @class Hero60006_Skill4_Data Eitri
Hero60006_Skill4_Data = Class(Hero60006_Skill4_Data, BaseSkillData)

--- @return BaseSkillData
function Hero60006_Skill4_Data:CreateInstance()
    return Hero60006_Skill4_Data()
end

--- @return void
function Hero60006_Skill4_Data:ValidateBeforeParseCsv(parsedData)
    assert(parsedData.health_trigger ~= nil, "health_trigger = nil")
    assert(parsedData.stat_buff_duration ~= nil, "health_trigger = nil")

    assert(parsedData.stat_1_buff_type ~= nil, "stat_1_buff_type = nil")
    assert(parsedData.stat_1_buff_amount ~= nil, "stat_1_buff_amount = nil")

    assert(parsedData.stat_2_buff_type ~= nil, "stat_2_buff_type = nil")
    assert(parsedData.stat_2_buff_amount ~= nil, "stat_2_buff_amount = nil")

    assert(parsedData.stat_3_buff_type ~= nil, "stat_3_buff_type = nil")
    assert(parsedData.stat_3_buff_amount ~= nil, "stat_3_buff_amount = nil")
end

--- @return void
function Hero60006_Skill4_Data:ParseCsv(parsedData)
    self.healthTrigger = tonumber(parsedData.health_trigger)
    self.statBuffDuration = tonumber(parsedData.stat_buff_duration)

    self.statBuffType_1 = tonumber(parsedData.stat_1_buff_type)
    self.statBuffAmount_1 = tonumber(parsedData.stat_1_buff_amount)

    self.statBuffType_2 = tonumber(parsedData.stat_2_buff_type)
    self.statBuffAmount_2 = tonumber(parsedData.stat_2_buff_amount)

    self.statBufType_3 = tonumber(parsedData.stat_3_buff_type)
    self.statBuffAmount_3 = tonumber(parsedData.stat_3_buff_amount)
end
return Hero60006_Skill4_Data
