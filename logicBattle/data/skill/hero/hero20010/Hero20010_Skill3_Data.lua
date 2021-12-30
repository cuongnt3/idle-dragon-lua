--- @class Hero20010_Skill3_Data Ungoliant
Hero20010_Skill3_Data = Class(Hero20010_Skill3_Data, BaseSkillData)

--- @return void
function Hero20010_Skill3_Data:Ctor()
    BaseSkillData.Ctor(self)

    --- @type StatChangerDataHelper
    self.statChangerDataHelper = StatChangerDataHelper(self)
end

---------------------------------------- Initialization ----------------------------------------
--- @return BaseSkillData
function Hero20010_Skill3_Data:CreateInstance()
    return Hero20010_Skill3_Data()
end

--- @return void
--- @param parsedData table
function Hero20010_Skill3_Data:ValidateBeforeParseCsv(parsedData)
    self.statChangerDataHelper:ValidateBeforeParseCsv(parsedData)
end

--- @return void
--- @param parsedData table
function Hero20010_Skill3_Data:ParseCsv(parsedData)
    self.statChangerDataHelper:ParseCsv(parsedData)
end

return Hero20010_Skill3_Data