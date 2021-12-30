--- @class CampaignInBound : BaseJsonInBound
CampaignInBound = Class(CampaignInBound, BaseJsonInBound)

--- @return void
function CampaignInBound:InitDatabase()
    local jsonDatabase = json.decode(self.jsonData)
    local campaignData = zg.playerData:GetCampaignData()
    campaignData:InitDatabase(jsonDatabase)
    if bundleDownloader:IsDownloadComplete() then
        BattleBackgroundUtils.PreloadDummyCampaignBackground(campaignData.stageCurrent)
    end
end