require "lua.client.scene.BaseScene"

--- @class HomeScene : BaseScene
local HomeScene = Class(HomeScene, BaseScene)

--- @return void
--- @param sceneMgr SceneMgr
function HomeScene:Ctor(sceneMgr)
    --- @type SceneMgr
    self.sceneMgr = sceneMgr
    --- @type boolean
    BaseScene.Ctor(self, SceneConfig.HomeScene)

    require("lua.client.scene.ui.home.FeatureMapping")
end

--- @return void
function HomeScene:ActiveScene(data)
    BaseScene.ActiveScene(self)
    self:ShowSceneState(data)
end

--- @return void
function HomeScene:ShowCampaign(data)
    local showPVE = function()
        CampaignDetailTeamFormationInBound.Validate(function()
            PopupMgr.ShowPopup(UIPopupName.UISelectMapPVE)
        end)
    end
    if UISelectMapPVEView.CheckIsNextMap() == true then
        if ClientBattleData.battleResult == nil or ClientBattleData.battleResult.winnerTeam == BattleConstants.ATTACKER_TEAM_ID then
            PopupMgr.ShowPopup(UIPopupName.UIWorldMap, { ["isPlaySwitchNextMap"] = true, ["callbackClose"] = function()
                CampaignDetailTeamFormationInBound.Validate(function()
                    PopupMgr.ShowAndHidePopup(UIPopupName.UISelectMapPVE, nil, UIPopupName.UIWorldMap)
                end)
            end })
        else
            showPVE()
        end
    else
        if data ~= nil and data.isNextStage == true then
            UISelectMapPVEView.ShowFormation()
        else
            showPVE()
        end
    end
end

--- @return void
function HomeScene:ShowSceneState(data)
    if data ~= nil and data.popup ~= nil then
        --if data.popup == UIPopupName.UIHeroCollection then
        --    PopupMgr.ShowPopup(UIPopupName.UIMainArea)
        --end
        PopupMgr.ShowPopup(data.popup)
    else
        local gameMode = self.sceneMgr.gameMode
        if gameMode == GameMode.TOWER then
            PopupMgr.ShowPopup(UIPopupName.UITower, true)
        elseif gameMode == GameMode.CAMPAIGN then
            self:ShowCampaign(data)
        elseif gameMode == GameMode.DUNGEON then
            PopupMgr.ShowPopup(UIPopupName.UIDungeonMain)
        elseif gameMode == GameMode.ARENA then
            PopupMgr.ShowPopup(UIPopupName.UIArena2)
        elseif gameMode == GameMode.ARENA_TEAM or gameMode == GameMode.ARENA_TEAM_RECORD then
            PopupMgr.ShowPopup(UIPopupName.UIArenaTeam)
        elseif gameMode == GameMode.RAID then
            PopupMgr.ShowPopup(UIPopupName.UIRaid, { ["callbackClose"] = function()
                PopupMgr.ShowAndHidePopup(UIPopupName.UIMainArea, nil, UIPopupName.UIRaid)
            end })
        elseif gameMode == GameMode.GUILD_DUNGEON then
            PopupMgr.ShowPopup(UIPopupName.UIGuildDungeon)
        elseif gameMode == GameMode.GUILD_BOSS then
            PopupMgr.ShowPopup(UIPopupName.UIGuildDailyBoss)
        elseif gameMode == GameMode.MAIN_AREA then
            PopupMgr.ShowPopup(UIPopupName.UIMainArea)
        elseif gameMode == GameMode.FRIEND_BATTLE then
            PopupMgr.ShowPopup(UIPopupName.UIFriend)
        elseif gameMode == GameMode.OUT_GAME_LONG_TIME then
            PopupMgr.ShowPopup(UIPopupName.UIMainArea)
            --PopupUtils.ShowPopupNotificationOK(LanguageUtils.LocalizeDisconnectReasonCode(DisconnectReason.OUT_GAME_LONG_TIME))
        elseif gameMode == GameMode.DOWNLOAD then
            PopupMgr.ShowPopup(UIPopupName.UIDownload)
        elseif gameMode == GameMode.GUILD_WAR then
            PopupMgr.ShowPopup(UIPopupName.UIGuildWarPhase3Main)
        elseif gameMode == GameMode.DEFENSE_MODE then
            --- @type DefenseModeInbound
            local defenseModeInbound = zg.playerData:GetMethod(PlayerDataMethod.DEFENSE_MODE)
            local data = defenseModeInbound.defenseRecordData.selectedData
            PopupMgr.ShowPopup(UIPopupName.UIDefenseMap, data)
        elseif gameMode == GameMode.EVENT_CHRISTMAS then
            if EventInBound.IsEventOpening(EventTimeType.EVENT_XMAS) then
                local data = {}
                data.tab = XmasTab.FROSTY_IGNATIUS
                PopupMgr.ShowPopup(UIPopupName.UIEventXmas, data)
            else
                PopupMgr.ShowPopup(UIPopupName.UIMainArea)
            end
        elseif gameMode == GameMode.EVENT_LUNAR_NEW_YEAR_GUILD_BOSS then
            if EventInBound.IsEventOpening(EventTimeType.EVENT_LUNAR_NEW_YEAR) then
                local data = {}
                data.tab = LunarPathTab.BOSS
                PopupMgr.ShowPopup(UIPopupName.UIEventLunarPath, data)
            else
                PopupMgr.ShowPopup(UIPopupName.UIMainArea)
            end
        elseif gameMode == GameMode.EVENT_VALENTINE_BOSS then
            if EventInBound.IsEventOpening(EventTimeType.EVENT_VALENTINE) then
                local data = {}
                data.tab = ValentineTab.LOVE_CHALLENGE
                PopupMgr.ShowPopup(UIPopupName.UIEventValentine, data)
            else
                PopupMgr.ShowPopup(UIPopupName.UIMainArea)
            end
        elseif gameMode == GameMode.EVENT_NEW_HERO then
            if EventInBound.IsEventOpening(EventTimeType.EVENT_NEW_HERO_SPIN) then
                local data = {}
                data.eventType = EventTimeType.EVENT_NEW_HERO_SPIN
                PopupMgr.ShowPopup(UIPopupName.UIEventNewHero, data)
            else
                PopupMgr.ShowPopup(UIPopupName.UIMainArea)
            end
        elseif gameMode == GameMode.DEFENSE_MODE_RECORD then
            --- @type DefenseModeInbound
            local defenseModeInbound = zg.playerData:GetMethod(PlayerDataMethod.DEFENSE_MODE)
            local data = defenseModeInbound.defenseRecordData.selectedData
            PopupMgr.ShowPopup(UIPopupName.UIDefenseMap, data)
        elseif gameMode == GameMode.EVENT_NEW_HERO_BOSS then
            local data = {}
            data.eventType = EventTimeType.EVENT_NEW_HERO_BOSS_CHALLENGE
            PopupMgr.ShowPopup(UIPopupName.UIEventNewHero, data)
        elseif gameMode == GameMode.DOMAINS or gameMode == GameMode.DOMAINS_RECORD then
            PopupMgr.ShowPopup(UIPopupName.UIDomainsStageMap, data)
        else
            PopupMgr.ShowPopup(UIPopupName.UICheckData)
        end
    end
    self.sceneMgr.gameMode = nil
end

return HomeScene