--- @class Hero40017_Skill1_Data Ktul
Hero40017_Skill1_Data = Class(Hero40017_Skill1_Data, BaseSkillData)

---------------------------------------- Initialization ----------------------------------------
--- @return BaseSkill
--- @param id number id of skill (1: activeSkill, 2-4: passiveSkills)
--- @param hero BaseHero
function Hero40017_Skill1_Data:CreateInstance(id, hero)
    return Hero40017_Skill1_Data(id, hero)
end

--- @return void
--- @param parsedData table
function Hero40017_Skill1_Data:ValidateBeforeParseCsv(parsedData)
    assert(parsedData.damage ~= nil, "damage = nil")

    assert(parsedData.target_position ~= nil, "target_position = nil")
    assert(parsedData.target_number ~= nil, "target_number = nil")

    assert(parsedData.bonus_class_hero ~= nil, "bonus_class_hero = nil")
    assert(parsedData.bonus_damage_with_class ~= nil, "bonus_damage_with_class = nil")
end

--- @return void
--- @param parsedData table
function Hero40017_Skill1_Data:ParseCsv(parsedData)
    self.damage = tonumber(parsedData.damage)

    self.targetPosition = tonumber(parsedData.target_position)
    self.targetNumber = tonumber(parsedData.target_number)

    self.bonusClassHero = tonumber(parsedData.bonus_class_hero)
    self.bonusDamageWithClass = tonumber(parsedData.bonus_damage_with_class)
end

return Hero40017_Skill1_Data