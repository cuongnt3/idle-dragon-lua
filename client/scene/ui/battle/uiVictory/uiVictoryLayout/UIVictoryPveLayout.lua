--- @class UIVictoryPveLayout : UIVictoryLayout
UIVictoryPveLayout = Class(UIVictoryPveLayout, UIVictoryLayout)

function UIVictoryPveLayout:SetUpLayout()
    UIVictoryLayout.SetUpLayout(self)
    self.config.rewardAnchor.anchoredPosition3D = U_Vector3(0, -40, 0)
end

--- @param data {}
function UIVictoryPveLayout:ShowData(data)
    if zg.playerData ~= nil and zg.playerData:HasReward() then
        self.view:SetReward(zg.playerData.rewardList)
    end
end

function UIVictoryPveLayout:OnFinishAnimation()
    UIVictoryLayout.OnFinishAnimation(self)
    self.view:CheckAndInitTutorial()
end