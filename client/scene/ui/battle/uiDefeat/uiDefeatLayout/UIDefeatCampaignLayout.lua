--- @class UIDefeatCampaignLayout : UIDefeatLayout
UIDefeatCampaignLayout = Class(UIDefeatCampaignLayout, UIDefeatLayout)

function UIDefeatCampaignLayout:SetUpLayout()
    UIDefeatLayout.SetUpLayout(self)
    self.config.rewardAnchor.anchoredPosition3D = U_Vector3(0, -40, 0)
    self.config.recommendAnchor.anchoredPosition3D = U_Vector3(0, -40, 0)
end

--- @param data {}
function UIDefeatCampaignLayout:ShowData(data)
    if zg.playerData ~= nil and zg.playerData:HasReward() then
        self.config.recommendAnchor.gameObject:SetActive(false)
        self.config.rewardAnchor.gameObject:SetActive(true)
        self.view:SetReward(zg.playerData.rewardList)
    else
        self.config.recommendAnchor.gameObject:SetActive(true)
        self.config.rewardAnchor.gameObject:SetActive(false)
    end
end

function UIDefeatCampaignLayout:CheckLevelUpAndUnlockFeature()
    --- @type number
    local stageIdle = zg.playerData:GetCampaignData().stageIdle
    ClientConfigUtils.CheckLevelUpAndUnlockFeature(stageIdle)
end

function UIDefeatCampaignLayout:OnFinishAnimation()
    UIDefeatLayout.OnFinishAnimation(self)
    self.view:CheckAndInitTutorial()
end

function UIDefeatCampaignLayout:OnHide()
    UIDefeatLayout.OnHide()
    self.config.recommendAnchor.gameObject:SetActive(false)
end