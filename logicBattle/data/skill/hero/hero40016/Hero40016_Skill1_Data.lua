--- @class Hero40016_Skill1_Data Roo
Hero40016_Skill1_Data = Class(Hero40016_Skill1_Data, BaseSkillData)

---------------------------------------- Initialization ----------------------------------------
--- @return BaseSkill
--- @param id number id of skill (1: activeSkill, 2-4: passiveSkills)
--- @param hero BaseHero
function Hero40016_Skill1_Data:CreateInstance(id, hero)
    return Hero40016_Skill1_Data(id, hero)
end

--- @return void
--- @param parsedData table
function Hero40016_Skill1_Data:ValidateBeforeParseCsv(parsedData)
    assert(parsedData.damage ~= nil, "damage = nil")

    assert(parsedData.target_position ~= nil, "target_position = nil")
    assert(parsedData.target_number ~= nil, "target_number = nil")

    assert(parsedData.target_hp_percent ~= nil, "target_hp_percent = nil")
    assert(parsedData.dot_type ~= nil, "dot_type = nil")
    assert(parsedData.dot_amount ~= nil, "dot_amount = nil")
    assert(parsedData.dot_duration ~= nil, "dot_duration = nil")
end

--- @return void
--- @param parsedData table
function Hero40016_Skill1_Data:ParseCsv(parsedData)
    self.damage = tonumber(parsedData.damage)

    self.targetPosition = tonumber(parsedData.target_position)
    self.targetNumber = tonumber(parsedData.target_number)

    self.targetHpPercent = tonumber(parsedData.target_hp_percent)
    self.dotType = tonumber(parsedData.dot_type)
    self.dotAmount = tonumber(parsedData.dot_amount)
    self.dotDuration = tonumber(parsedData.dot_duration)
end

return Hero40016_Skill1_Data