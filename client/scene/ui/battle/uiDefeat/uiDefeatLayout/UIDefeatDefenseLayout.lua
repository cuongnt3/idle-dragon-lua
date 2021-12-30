--- @class UIDefeatDefenseLayout : UIDefeatLayout
UIDefeatDefenseLayout = Class(UIDefeatDefenseLayout, UIDefeatLayout)

function UIDefeatDefenseLayout:SetUpLayout()
    UIDefeatLayout.SetUpLayout(self)
    self.config.rewardAnchor.anchoredPosition3D = U_Vector3(0, -40, 0)
    self.config.recommendAnchor.anchoredPosition3D = U_Vector3(0, -40, 0)
    self.config.buttonBattleLog.gameObject:SetActive(false)
end

--- @param data {}
function UIDefeatDefenseLayout:ShowData(data)
    if zg.playerData ~= nil and zg.playerData:HasReward() then
        self.config.recommendAnchor.gameObject:SetActive(false)
        self.config.rewardAnchor.gameObject:SetActive(true)
        self.view:SetReward(zg.playerData.rewardList)
    else
        self.config.recommendAnchor.gameObject:SetActive(true)
        self.config.rewardAnchor.gameObject:SetActive(false)
    end
end

function UIDefeatDefenseLayout:CheckLevelUpAndUnlockFeature()
    --- @type number
    local stageIdle = zg.playerData:GetCampaignData().stageIdle
    ClientConfigUtils.CheckLevelUpAndUnlockFeature(stageIdle)
end

function UIDefeatDefenseLayout:OnFinishAnimation()
    UIDefeatLayout.OnFinishAnimation(self)
    self.view:CheckAndInitTutorial()
end

function UIDefeatDefenseLayout:OnHide()
    UIDefeatLayout.OnHide()
    self.config.recommendAnchor.gameObject:SetActive(false)
end