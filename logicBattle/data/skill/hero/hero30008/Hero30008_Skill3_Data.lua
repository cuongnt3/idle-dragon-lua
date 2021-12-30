--- @class Hero30008_Skill3_Data Kozorg
Hero30008_Skill3_Data = Class(Hero30008_Skill3_Data, BaseSkillData)

---------------------------------------- Initialization ----------------------------------------
--- @return BaseSkillData
function Hero30008_Skill3_Data:CreateInstance()
    return Hero30008_Skill3_Data()
end

--- @return void
function Hero30008_Skill3_Data:ValidateBeforeParseCsv(parsedData)
    assert(parsedData.stat_per_faction_buff_type_1 ~= nil, "stat_per_faction_buff_type_1 = nil")
    assert(parsedData.stat_per_faction_buff_amount_1 ~= nil, "stat_per_faction_buff_amount_1 = nil")
    assert(parsedData.stat_per_faction_buff_type_2 ~= nil, "stat_per_faction_buff_type_2 = nil")
    assert(parsedData.stat_per_faction_buff_amount_2 ~= nil, "stat_per_faction_buff_amount_2 = nil")
end

--- @return void
function Hero30008_Skill3_Data:ParseCsv(parsedData)
    self.statPerFactionBuffType_1 = tonumber(parsedData.stat_per_faction_buff_type_1)
    self.statPerFactionBuffAmount_1 = tonumber(parsedData.stat_per_faction_buff_amount_1)

    self.statPerFactionBuffType_2 = tonumber(parsedData.stat_per_faction_buff_type_2)
    self.statPerFactionBuffAmount_2 = tonumber(parsedData.stat_per_faction_buff_amount_2)
end

return Hero30008_Skill3_Data