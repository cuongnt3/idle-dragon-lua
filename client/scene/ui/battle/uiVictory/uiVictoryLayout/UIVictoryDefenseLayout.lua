require "lua.client.scene.ui.common.TowerResultItemView"

--- @class UIVictoryDefenseLayout : UIVictoryLayout
UIVictoryDefenseLayout = Class(UIVictoryDefenseLayout, UIVictoryLayout)

function UIVictoryDefenseLayout:SetUpLayout()
    UIVictoryLayout.SetUpLayout(self)
    self.config.rewardAnchor.anchoredPosition3D = U_Vector3(0, -40, 0)
    self.config.buttonBattleLog.gameObject:SetActive(false)
end

--- @param data {}
function UIVictoryDefenseLayout:ShowData(data)
    if zg.playerData ~= nil and zg.playerData:HasReward() then
        self.view:SetReward(zg.playerData.rewardList)
    end
end