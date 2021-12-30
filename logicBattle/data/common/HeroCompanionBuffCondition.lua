--- @class HeroCompanionBuffCondition
HeroCompanionBuffCondition = Class(HeroCompanionBuffCondition)

--- @return void
function HeroCompanionBuffCondition:Ctor()
    --- @type HeroCompanionBuffConditionType
    self.conditionType = nil

    --- @type number
    self.conditionNumber = nil
end

--- @return void
--- @param data table
function HeroCompanionBuffCondition:ParseCsv(data)
    self.conditionType = tonumber(data.condition_type)
    self.conditionNumber = tonumber(data.condition_number)
end