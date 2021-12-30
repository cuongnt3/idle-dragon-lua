--- @class UIVictoryCampaignLayout : UIVictoryLayout
UIVictoryCampaignLayout = Class(UIVictoryCampaignLayout, UIVictoryLayout)

function UIVictoryCampaignLayout:SetUpLayout()
    UIVictoryLayout.SetUpLayout(self)
    self.config.rewardAnchor.anchoredPosition3D = U_Vector3(0, -40, 0)
end

--- @param data {}
function UIVictoryCampaignLayout:ShowData(data)
    if zg.playerData ~= nil and zg.playerData:HasReward() then
        self.view:SetReward(zg.playerData.rewardList)
    end
end

function UIVictoryCampaignLayout:CheckLevelUpAndUnlockFeature()
    --- @type number
    local stageIdle = zg.playerData:GetCampaignData().stageIdle
    ClientConfigUtils.CheckLevelUpAndUnlockFeature(stageIdle)
end

function UIVictoryCampaignLayout:OnFinishAnimation()
    UIVictoryLayout.OnFinishAnimation(self)
    self.view:CheckAndInitTutorial()
end