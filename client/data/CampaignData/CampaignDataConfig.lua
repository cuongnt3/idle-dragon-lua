require "lua.client.data.CampaignData.CampaignConfig"
require "lua.client.data.CampaignData.CampaignStageConfig"
require "lua.client.data.CampaignData.CampaignRewardConfig"
require "lua.client.data.CampaignData.CampaignBackgroundConfig"

--- @class CampaignDataConfig
CampaignDataConfig = Class(CampaignDataConfig)

function CampaignDataConfig:Ctor()
    --- @type CampaignConfig
    self.campaignConfig = nil
    --- @type CampaignStageConfig
    self.campaignStageConfig = nil
    --- @type CampaignRewardConfig
    self.campaignRewardConfig = nil
    --- @type Dictionary --<stage, level>
    self.levelRequiredDict = nil
    --- @type CampaignBackgroundConfig
    self.campaignBackgroundConfig = nil

    self:InitData()
end

function CampaignDataConfig:InitData()
    self:_InitCampaignConfig()
    self:_InitCampaignStageConfig()
end

--- @return number
function CampaignDataConfig:GetTimeRewardMoney()
    return self.campaignConfig.timeRewardMoney
end

function CampaignDataConfig:GetMaxTimeIdle()
    return self.campaignConfig:GetMaxTimeIdle()
end

function CampaignDataConfig:_InitCampaignConfig()
    self.campaignConfig = CampaignConfig()
    local data = CsvReaderUtils.ReadAndParseLocalFile(CsvPathConstants.CAMPAIGN_CONFIG_PATH)
    self.campaignConfig:ParseCsv(data)
end

function CampaignDataConfig:_InitCampaignStageConfig()
    local levelDesignContent = CsvReaderUtils.ReadAndParseLocalFile(CsvPathConstants.CAMPAIGN_STAGE_PATH)
    self.campaignStageConfig = CampaignStageConfig()
    self.campaignStageConfig:ParseCsv(levelDesignContent)
end

--- @return DefenderTeamData
--- @param stageId number
function CampaignDataConfig:GetLevelRequired(stageId)
    if self.levelRequiredDict == nil then
        self.levelRequiredDict = Dictionary()
        local parsedData = CsvReaderUtils.ReadAndParseLocalFile(CsvPathConstants.CAMPAIGN_LEVEL_REQUIRED_PATH)
        for _, v in ipairs(parsedData) do
            local stage = tonumber(v['stage'])
            local level = tonumber(v['level_required'])
            self.levelRequiredDict:Add(stage, level)
        end
    end
    return self.levelRequiredDict:Get(stageId)
end

--- @return DefenderTeamData
--- @param stageId number
function CampaignDataConfig:GetCampaignStageConfigById(stageId)
    return self.campaignStageConfig:GetCampaignStageConfigById(stageId)
end

--- @return CampaignStageConfig
function CampaignDataConfig:GetCampaignStageConfig()
    return self.campaignStageConfig
end

--- @return List<ItemIconData>
--- @param stageId number
function CampaignDataConfig:GetCampaignRewardById(stageId)
    if self.campaignRewardConfig == nil then
        self.campaignRewardConfig = CampaignRewardConfig()
        self.campaignRewardConfig:InitData()
    end
    return self.campaignRewardConfig:GetCampaignRewardById(stageId)
end

--- @return number
--- @param stageId number
--- @param fixedIndex number
function CampaignDataConfig:GetRandomBgByStage(stageId, fixedIndex)
    if self.campaignBackgroundConfig == nil then
        self.campaignBackgroundConfig = CampaignBackgroundConfig()
    end
    return self.campaignBackgroundConfig:GetRandomBgByStage(stageId, fixedIndex)
end

return CampaignDataConfig