--- @class Summoner3_Skill4_2_Data Priest
Summoner3_Skill4_2_Data = Class(Summoner3_Skill4_2_Data, BaseSkillData)

--- @return void
--- @param id number id of skill (1: activeSkill, 2-4: passiveSkills)
--- @param hero BaseHero
function Summoner3_Skill4_2_Data:Ctor(id, hero)
    BaseSkill.Ctor(self, id, hero)

    --- @param List<number>
    self.roundTriggerList = List()
end

---------------------------------------- Initialization ----------------------------------------
--- @return BaseSkillData
function Summoner3_Skill4_2_Data:CreateInstance()
    return Summoner3_Skill4_2_Data()
end

--- @return void
--- @param parsedData table
function Summoner3_Skill4_2_Data:ValidateBeforeParseCsv(parsedData)
    assert(parsedData.target_position ~= nil, "target_position = nil")
    assert(parsedData.target_number ~= nil, "target_number = nil")

    assert(parsedData.round_trigger_list ~= nil, "round_trigger_list = nil")
end

--- @return void
--- @param parsedData table
function Summoner3_Skill4_2_Data:ParseCsv(parsedData)
    self.targetPosition = tonumber(parsedData.target_position)
    self.targetNumber = tonumber(parsedData.target_number)

    local content = StringUtils.Trim(parsedData.round_trigger_list)
    content = content:Split(';')

    for _, value in pairs(content) do
        self.roundTriggerList:Add(tonumber(value))
    end
end

return Summoner3_Skill4_2_Data