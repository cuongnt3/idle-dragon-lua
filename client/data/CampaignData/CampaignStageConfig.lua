require "lua.client.data.DefenderTeamData"
--- @class CampaignStageConfig
CampaignStageConfig = Class(CampaignStageConfig)

function CampaignStageConfig:Ctor()
    --- @type Dictionary --<number, DefenderTeamData>
    self._dataDictionary = Dictionary()
    --- @type Dictionary --<number, Dictionary>
    self.stageDictionary = Dictionary()
end

--- @data string
function CampaignStageConfig:ParseCsv(parsedData)
    for k, v in ipairs(parsedData) do
        local stageId = tonumber(v['stage'])
        if MathUtils.IsInteger(stageId) then
            local data = DefenderTeamData(v)
            self._dataDictionary:Add(data.stage, data)
            local difficult, map, stage = ClientConfigUtils.GetIdFromStageId(stageId)
            ---@type Dictionary
            local mapDict
            ---@type number
            local stageNumber = 0
            if self.stageDictionary:IsContainKey(difficult) then
                mapDict = self.stageDictionary:Get(difficult)
            else
                mapDict = Dictionary()
                self.stageDictionary:Add(difficult, mapDict)
            end
            if mapDict:IsContainKey(map) then
                stageNumber = mapDict:Get(map)
            end
            stageNumber = stageNumber + 1
            mapDict:Add(map, stageNumber)
        end
    end

    self:_InitPowerTeam()
end

--- @return void
function CampaignStageConfig:_InitPowerTeam()
    local data = CsvReaderUtils.ReadAndParseLocalFile(CsvPathConstants.CAMPAIGN_DEFENDER_POWER_PATH)
    for i = 1, #data do
        local v = data[i]
        self._dataDictionary:Get(tonumber(v.stage)).powerTeam = v.power
    end
end

--- @return DefenderTeamData
function CampaignStageConfig:GetCampaignStageConfigById(stageId)
    if self._dataDictionary:IsContainKey(stageId) == true then
        return self._dataDictionary:Get(stageId)
    end
    --assert(false, "There is no campaign stage config ".. stageId)
    return nil
end

--- @return number
function CampaignStageConfig:GetNextStage(currentStage)
    local nextStage
    for i, v in pairs(self._dataDictionary:GetItems()) do
        if (i > currentStage) and (nextStage == nil or nextStage > i) then
            nextStage = i
        end
    end
    if nextStage == nil then
        nextStage = currentStage
    end
    return nextStage
end

--- @return number
function CampaignStageConfig:GetNumberStageByMap(dificult, map)
    return self.stageDictionary:Get(dificult):Get(map)
end

--- @return number
function CampaignStageConfig:GetNumberStageByCurrentStage(stageId)
    local dificult, map, stage = ClientConfigUtils.GetIdFromStageId(stageId)
    return self:GetNumberStageByMap(dificult, map)
end

--- @return number
--- @param campaignDifficultLevel CampaignDifficultLevel
function CampaignStageConfig:GetNumberOfMapOfDifficultLevel(campaignDifficultLevel)
    --- @type Dictionary
    local mapDict = self.stageDictionary:Get(campaignDifficultLevel)
    if mapDict ~= nil then
        return mapDict:Count()
    end
    return -1
end