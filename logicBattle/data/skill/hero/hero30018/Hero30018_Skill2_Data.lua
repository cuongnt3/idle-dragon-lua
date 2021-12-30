--- @class Hero30018_Skill2_Data DeathJester
Hero30018_Skill2_Data = Class(Hero30018_Skill2_Data, BaseSkillData)

--- @return void
function Hero30018_Skill2_Data:Ctor()
    BaseSkillData.Ctor(self)

    --- @type StatChangerDataHelper
    self.statChangerDataHelper = StatChangerDataHelper(self)
end

---------------------------------------- Initialization ----------------------------------------
--- @return BaseSkillData
function Hero30018_Skill2_Data:CreateInstance()
    return Hero30018_Skill2_Data()
end

--- @return void
--- @param parsedData table
function Hero30018_Skill2_Data:ValidateBeforeParseCsv(parsedData)
    self.statChangerDataHelper:ValidateBeforeParseCsv(parsedData)
end

--- @return void
--- @param parsedData table
function Hero30018_Skill2_Data:ParseCsv(parsedData)
    self.statChangerDataHelper:ParseCsv(parsedData)
end

return Hero30018_Skill2_Data