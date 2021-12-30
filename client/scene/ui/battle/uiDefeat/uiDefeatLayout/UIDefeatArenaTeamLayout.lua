--- @class UIDefeatArenaTeamLayout : UIDefeatLayout
UIDefeatArenaTeamLayout = Class(UIDefeatArenaTeamLayout, UIDefeatLayout)

function UIDefeatArenaTeamLayout:Ctor(view, anchor)
    --- @type AvatarGameOverView
    self.avatar1 = nil
    --- @type AvatarGameOverView
    self.avatar2 = nil
    UIDefeatLayout.Ctor(self, view, anchor)
end

function UIDefeatArenaTeamLayout:InitLayoutConfig()
    --- @type UIDefeatArenaConfig
    self.layoutConfig = UIBaseConfig(self.anchor)
end

function UIDefeatArenaTeamLayout:InitLocalization()
    UIDefeatLayout.InitLocalization(self)
end

function UIDefeatArenaTeamLayout:SetUpLayout()
    UIDefeatLayout.SetUpLayout(self)
    self.config.rewardAnchor.anchoredPosition3D = U_Vector3(0, -365,0)
end

--- @param data {}
function UIDefeatArenaTeamLayout:ShowData(data)
    local battleMgr = zg.battleMgr
    local rewardList = zg.playerData.rewardList
    local hasReward = rewardList ~= nil and rewardList:Count() > 0
    self.layoutConfig.txtReward:SetActive(hasReward )
    self.layoutConfig.rewardAnchor.gameObject:SetActive(hasReward)
    self.view:SetReward(rewardList)
    if battleMgr.attacker ~= nil and battleMgr.defender ~= nil then
        self:GetAvatar()
        local scoreChange = nil
        if battleMgr.defender.scoreChange ~= nil then
            scoreChange = -battleMgr.defender.scoreChange
        end
        AvatarGameOverView.SetAvatarGameOverView(self.avatar1, battleMgr.attacker.avatar,
                battleMgr.attacker.level,
                battleMgr.attacker.name,
                battleMgr.attacker.score,
                scoreChange)
        scoreChange = battleMgr.attacker.scoreChange
        AvatarGameOverView.SetAvatarGameOverView(self.avatar2, battleMgr.defender.avatar,
                battleMgr.defender.level,
                battleMgr.defender.name,
                battleMgr.defender.score,
                scoreChange)
    end
end

function UIDefeatArenaTeamLayout:GetAvatar()
    if self.avatar1 == nil then
        self.avatar1 = SmartPool.Instance:SpawnLuaUIPool(UIPoolType.AvatarGameOverView, self.layoutConfig.avatar1)
    end
    if self.avatar2 == nil then
        self.avatar2 = SmartPool.Instance:SpawnLuaUIPool(UIPoolType.AvatarGameOverView, self.layoutConfig.avatar2)
    end
end

function UIDefeatArenaTeamLayout:OnHide()
    UIDefeatLayout.OnHide(self)
    if self.avatar1 ~= nil then
        self.avatar1:ReturnPool()
        self.avatar1 = nil
    end
    if self.avatar2 ~= nil then
        self.avatar2:ReturnPool()
        self.avatar2 = nil
    end
    zg.battleMgr:ResetArenaPlayerData()
end

function UIDefeatArenaTeamLayout:OnFinishAnimation()
    UIDefeatLayout.OnFinishAnimation(self)
    self.view:CheckAndInitTutorial()
end

function UIDefeatArenaTeamLayout:OnClickBattleLog()
    PopupMgr.ShowPopup(UIPopupName.UIArenaTeamLog, false)
end