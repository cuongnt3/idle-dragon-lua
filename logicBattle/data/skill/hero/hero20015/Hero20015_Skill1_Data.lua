--- @class Hero20015_Skill1_Data Rufus
Hero20015_Skill1_Data = Class(Hero20015_Skill1_Data, BaseSkillData)

--- @return void
function Hero20015_Skill1_Data:CreateInstance()
    return Hero20015_Skill1_Data()
end

--- @return void
function Hero20015_Skill1_Data:ValidateBeforeParseCsv(parsedData)
    assert(parsedData.damage ~= nil, "damage = nil")
    assert(parsedData.damage_target_position ~= nil, "damage_target_position = nil")
    assert(parsedData.damage_target_number ~= nil, "damage_target_number = nil")

    assert(parsedData.heal_percent ~= nil, "heal_percent = nil")
    assert(parsedData.heal_target_position ~= nil, "heal_target_position = nil")
    assert(parsedData.heal_target_number ~= nil, "heal_target_number = nil")
end

--- @return void
function Hero20015_Skill1_Data:ParseCsv(parsedData)
    self.damage = tonumber(parsedData.damage)
    self.damageTargetPosition = tonumber(parsedData.damage_target_position)
    self.damageTargetNumber = tonumber(parsedData.damage_target_number)

    self.healPercent = tonumber(parsedData.heal_percent)
    self.healTargetPosition = tonumber(parsedData.heal_target_position)
    self.healTargetNumber = tonumber(parsedData.heal_target_number)
end

return Hero20015_Skill1_Data