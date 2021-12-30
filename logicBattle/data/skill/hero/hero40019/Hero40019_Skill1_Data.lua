--- @class Hero40019_Skill1_Data Lith
Hero40019_Skill1_Data = Class(Hero40019_Skill1_Data, BaseSkillData)

---------------------------------------- Initialization ----------------------------------------
--- @return BaseSkill
--- @param id number id of skill (1: activeSkill, 2-4: passiveSkills)
--- @param hero BaseHero
function Hero40019_Skill1_Data:CreateInstance(id, hero)
    return Hero40019_Skill1_Data(id, hero)
end

--- @return void
--- @param parsedData table
function Hero40019_Skill1_Data:ValidateBeforeParseCsv(parsedData)
    assert(parsedData.damage ~= nil, "damage = nil")

    assert(parsedData.target_position ~= nil, "target_position = nil")
    assert(parsedData.target_number ~= nil, "target_number = nil")

    assert(parsedData.effect_type ~= nil, "effect_type = nil")
    assert(parsedData.effect_chance ~= nil, "effect_chance = nil")
    assert(parsedData.effect_duration ~= nil, "effect_duration = nil")
    assert(parsedData.effect_trigger_class ~= nil, "effect_trigger_class = nil")
end

--- @return void
--- @param parsedData table
function Hero40019_Skill1_Data:ParseCsv(parsedData)
    self.damage = tonumber(parsedData.damage)

    self.targetPosition = tonumber(parsedData.target_position)
    self.targetNumber = tonumber(parsedData.target_number)

    self.effectType = tonumber(parsedData.effect_type)
    self.effectChance = tonumber(parsedData.effect_chance)
    self.effectDuration = tonumber(parsedData.effect_duration)
    self.effectTriggerClass = tonumber(parsedData.effect_trigger_class)
end

return Hero40019_Skill1_Data