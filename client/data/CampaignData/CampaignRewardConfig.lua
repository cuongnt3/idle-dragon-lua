--- @class CampaignRewardConfig
CampaignRewardConfig = Class(CampaignRewardConfig)

function CampaignRewardConfig:Ctor()
    --- @type Dictionary--<number, List<ItemIconData>>
    self.rewardDictionary = Dictionary()
    --- @type Dictionary--<number, number>
    self.expTrainDictionary = Dictionary()
end

function CampaignRewardConfig:InitData()
    --self:ParseCsv(CsvReaderUtils.ReadAndParseLocalFile(CsvPathConstants.CAMPAIGN_REWARD_PATH))
    self:ParseCsvOptimize(CsvReaderUtils.ReadAndParseLocalFile(CsvPathConstants.CAMPAIGN_REWARD_PATH_OPTIMIZE))
end

--- @data string
function CampaignRewardConfig:ParseCsv(parsedData)
    local lastStageId = 0
    local currentStageId = 0

    for _, v in ipairs(parsedData) do
        currentStageId = tonumber(v['stage'])
        local itemIconData = RewardInBound.CreateByParams(v):GetIconData()
        if MathUtils.IsInteger(currentStageId) then
            lastStageId = currentStageId
        end
        local listRewardLastLevel = self.rewardDictionary:Get(lastStageId)
        if listRewardLastLevel == nil then
            listRewardLastLevel = List()
        end
        listRewardLastLevel:Add(itemIconData)
        self.rewardDictionary:Add(lastStageId, listRewardLastLevel)
    end
end

--- @data string
function CampaignRewardConfig:ParseCsvOptimize(parsedData)
    local lastStageId = 0
    local currentStageId = 0
    local listRewardLastLevel = nil

    for _, v in ipairs(parsedData) do
        currentStageId = tonumber(v['stage'])
        local itemIconData = RewardInBound.CreateByParams(v):GetIconData()
        if MathUtils.IsInteger(currentStageId) then
            lastStageId = currentStageId
            listRewardLastLevel = List()
            for i = tonumber(v['stage1']), currentStageId do
                self.rewardDictionary:Add(i, listRewardLastLevel)
            end
        end
        listRewardLastLevel:Add(itemIconData)
    end
end

--- @return List<ItemIconData>
--- @param stageId number
function CampaignRewardConfig:GetCampaignRewardById(stageId)
    if self.rewardDictionary:IsContainKey(stageId) then
        return self.rewardDictionary:Get(stageId)
    end
    XDebug.Log("There is no reward config for campaign id", stageId)
end