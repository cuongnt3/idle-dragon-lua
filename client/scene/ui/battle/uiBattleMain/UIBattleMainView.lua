require "lua.client.scene.ui.battle.uiBattleMain.SummonerWrathView"

--- @class UIBattleMainView : UIBaseView
UIBattleMainView = Class(UIBattleMainView, UIBaseView)

UIBattleMainView.UNLOCK_BATTLE_SPEED_KEY = "unlock_battle_speed_flag"

--- @return void
--- @param model UIBattleMainModel
function UIBattleMainView:Ctor(model)
    --- @type BattleMainConfig
    self.config = nil
    --- @type SummonerWrathView
    self.attackerWrathView = nil
    --- @type SummonerWrathView
    self.defenderWrathView = nil
    ---@type BaseHero
    self.baseHeroTutorial = nil
    self.unlockSkipBattleMiddle = false
    --- @type UIButtonSpeedUp
    self.buttonSpeedUp1 = nil
    --- @type UIButtonSpeedUp
    self.buttonSpeedUp2 = nil
    UIBaseView.Ctor(self, model)
end

--- @return void
function UIBattleMainView:OnReadyCreate()
    self.config = UIBaseConfig(self.uiTransform)
    self:InitUI()
end

function UIBattleMainView:InitLocalization()
    self.config.textRound.text = LanguageUtils.LocalizeCommon("round")
end

--- @return void
function UIBattleMainView:InitUI()
    self.config.buttonSkip.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        self:OnClickSkip()
    end)

    self.config.buttonSkipVideo.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        self:OnClickToggleSkipVideo()
    end)

    self.config.buttonCompanionAttacker.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        self:OnClickCompanionTeam(ClientBattleData.clientLogDetail.attackerTeam)
    end)

    self.config.buttonCompanionDefender.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        self:OnClickCompanionTeam(ClientBattleData.clientLogDetail.defenderTeam)
    end)

    self.config.buttonInfo.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        PopupMgr.ShowPopup(UIPopupName.UIFactionInfo)
    end)
    if self.config.buttonSpeedUp1 then
        self.buttonSpeedUp1 = UIButtonSpeedUp(self.config.buttonSpeedUp1, 2)
        self.buttonSpeedUp1:AddOnClickListener(function()
            self:OnClickButtonSpeedUp(MinorFeatureType.BATTLE_SPEED_UP)
        end)
    end
    if self.config.buttonSpeedUp2 then
        self.buttonSpeedUp2 = UIButtonSpeedUp(self.config.buttonSpeedUp2, 3)
        self.buttonSpeedUp2:AddOnClickListener(function()
            self:OnClickButtonSpeedUp(MinorFeatureType.BATTLE_SPEED_UP_2)
        end)
    end
end

--- @return void
function UIBattleMainView:OnClickSkip()
    RxMgr.skipBattle:Next()
end

---@return void
---@param team ClientTeamDetail
function UIBattleMainView:OnClickCompanionTeam(team)
    local data = {}
    data.companionId = team.companionBuffId
    ---@param v BaseHero
    for _, v in pairs(team.baseHeroList:GetItems()) do
        if v.isSummoner then
            data.summonerId = v.id
            data.summonerStar = v.star
            break
        end
    end

    data.callbackClose = function()
        PopupMgr.HidePopup(UIPopupName.UICompanionCollection)
        --RxMgr.RESUME_BATTLE:Next()
        --zg.battleMgr.clientBattleShowController:ResumeBattle(true)
    end
    PopupMgr.ShowPopup(UIPopupName.UICompanionCollection, data)
    --RxMgr.PAUSE_BATTLE:Next()
    --zg.battleMgr.clientBattleShowController:PauseBattle(true)
end

function UIBattleMainView:OnClickToggleSkipVideo()
    PlayerSetting.ToggleSkipVideoBattle()
    self:SetButtonSkipVideoState(PlayerSettingData.isSkipVideoBattle)
    UIBattleTestTool.NotificationToggleSkipVideo()
end

--- @param minorFeatureType MinorFeatureType
function UIBattleMainView:ShowRequireSpeedUp(minorFeatureType)
    local levelRequire, stageRequire = ClientConfigUtils.GetLevelStageRequire(minorFeatureType)
    local vipUnlock = ResourceMgr.GetVipConfig():RequireLevelUnlockSpeedUp()
    SmartPoolUtils.NotificationRequireVipOrLevelAndStage(vipUnlock, levelRequire, stageRequire)
end

function UIBattleMainView:SetSpeedOnStart()
    ClientConfigUtils.SetSpeedOnStartBattle()
    self:SetViewBattleSpeed()
end

function UIBattleMainView:SetViewBattleSpeed()
    self.buttonSpeedUp1:EnableState(PlayerSettingData.battleSpeed == 2)
    self.buttonSpeedUp2:EnableState(PlayerSettingData.battleSpeed == 3)
    RxMgr.battleSpeed:Next(ClientConfigUtils.GetTimeScaleBySpeedUpLevel(PlayerSettingData.battleSpeed))
end

function UIBattleMainView:InitListener()
    self.updateBattleUIListener = RxMgr.updateBattleUI:Subscribe(RxMgr.CreateFunction(self, self.UpdateBattleUI))
    self.listenerUpdateRound = RxMgr.updateRound:Subscribe(RxMgr.CreateFunction(self, self.ShowRound))
    self.listenerFinishTurn = RxMgr.finishTurn:Subscribe(RxMgr.CreateFunction(self, self.OnNextTurn))
end

function UIBattleMainView:RemoveListener()
    if self.updateBattleUIListener ~= nil then
        self.updateBattleUIListener:Unsubscribe()
        self.updateBattleUIListener = nil
    end

    if self.listenerUpdateRound then
        self.listenerUpdateRound:Unsubscribe()
        self.listenerUpdateRound = nil
    end

    if self.listenerFinishTurn then
        self.listenerFinishTurn:Unsubscribe()
        self.listenerFinishTurn = nil
    end
end

--- @return void
function UIBattleMainView:OnReadyShow()
    self:SetUpLayout()

    self:InitListener()

    self:SetSpeedOnStart()

    self:CheckCanSkip()

    self:CheckSkipVideo()

    if UIBaseView.IsActiveTutorial() == true then
        Coroutine.start(function()
            coroutine.waitforseconds(1)
            if zg.playerData:GetMethod(PlayerDataMethod.TUTORIAL).listStepComplete:IsContainValue(TutorialAutoBattle.stepId) == false then
                ---@type TutorialBase
                local tut = TutorialAutoBattle()
                if tut:CanRunTutorial() then
                    zg.battleMgr.clientBattleShowController:PauseBattle(false)
                    UIBaseView.tutorial:InsertTutorial(tut)
                end
            end
        end)
    end

    self:LoadBattle()
end

function UIBattleMainView:SetUpLayout()
    local enableDamageView = ClientBattleData.battleResult.gameMode == GameMode.EVENT_CHRISTMAS
            or ClientBattleData.battleResult.gameMode == GameMode.EVENT_VALENTINE_BOSS
    self.config.xmasDamageView:SetActive(enableDamageView)
    if enableDamageView then
        if self.xmasDamageView == nil then
            require "lua.client.scene.ui.battle.uiBattleMain.XmasDamageView"
            --- @type XmasDamageView
            self.xmasDamageView = XmasDamageView(self.config.xmasDamageView.transform)
        end
        self.xmasDamageView:OnShow()
        self.xmasDamageView:DoTrackingDamageProgress()
    end
end

--- @return void
function UIBattleMainView:OnFinishAnimation()
    UIBaseView.OnFinishAnimation(self)

    self:CheckAndInitTutorial()
end

--- @return void
function UIBattleMainView:OnReadyHide()
    -- do nothing when battle showing
end

--- @return void
function UIBattleMainView:Hide()
    UIBaseView.Hide(self)
    self:RemoveListener()
    self:RemoveListenerTutorial()
    if self.xmasDamageView ~= nil then
        self.xmasDamageView:OnHide()
    end
end

--- @return void
function UIBattleMainView:CheckCanSkip()
    self.unlockSkipBattleMiddle = ClientConfigUtils.CheckUnlockMinorFeatureAndNotification(MinorFeatureType.BATTLE_SKIP_MIDDLE, false)
    if zg.canPlayPVEMode then
        self.config.buttonSkip.gameObject:SetActive(true)
        return
    end
    if ClientBattleData.skipForReplay == true then
        self.config.buttonSkip.gameObject:SetActive(true)
        if (zg.sceneMgr.gameMode == GameMode.ARENA_TEAM_RECORD or zg.sceneMgr.gameMode == GameMode.ARENA_TEAM)
                and ArenaTeamBattleData.match < 3 then
            ClientBattleData.skipForReplay = true
        else
            ClientBattleData.skipForReplay = false
        end
        return
    end
    local enableSkip = ClientConfigUtils.CheckCanSkip(ClientBattleData.battleResult.gameMode)
    self.config.buttonSkip.gameObject:SetActive(enableSkip)
end

--- @return void
--- @param eventData {round, useMotion}
function UIBattleMainView:ShowRound(eventData)
    self.config.textNumberRound.text = string.format("%s/%s", tostring(eventData.round), BattleConstants.MAX_ROUND)
    if eventData.useMotion == true then
        self.config.tweenRound:DORewindAndPlayNext()
    end
    self:CheckUnlockSkip(eventData.round)
end

--- @return void
function UIBattleMainView:CheckUnlockSkip(round)
    if self.unlockSkipBattleMiddle == true and round >= ResourceMgr.GetSkipBattleConfig().turnSkip then
        self.config.buttonSkip.gameObject:SetActive(true)
    end
end

--- @return void
function UIBattleMainView:OnNextTurn()
    ---@type ClientTurnDetail
    local clientTurnDetail = zg.battleMgr.clientBattleShowController.clientTurnDetail
    if clientTurnDetail.actionType == ActionType.USE_SKILL then
        if UIBaseView.IsActiveTutorial() and UIBaseView.tutorial.isWaitingFocusPosition == true then
            ---@type TutorialBase
            local tut = nil
            if zg.playerData:GetMethod(PlayerDataMethod.TUTORIAL).listStepComplete:IsContainValue(TutorialHeroPower.stepId) == false and
                    clientTurnDetail.initiator.isSummoner == false then
                tut = TutorialHeroPower(clientTurnDetail.initiator.teamId == BattleConstants.ATTACKER_TEAM_ID)
            elseif zg.playerData:GetMethod(PlayerDataMethod.TUTORIAL).listStepComplete:IsContainValue(TutorialSkillSummoner.stepId) == false and
                    clientTurnDetail.initiator.isSummoner == true then
                tut = TutorialSkillSummoner(clientTurnDetail.initiator.teamId == BattleConstants.ATTACKER_TEAM_ID)
            end
            if tut ~= nil and tut:CanRunTutorial() then
                zg.battleMgr.clientBattleShowController:PauseBattle(false)
                UIBaseView.tutorial:InsertTutorial(tut)
            end
        end
    end
end

--- @param attackerSummoner BaseHero
--- @param defenderSummoner BaseHero
function UIBattleMainView:InitTeamWrathView(attackerSummoner, defenderSummoner)
    if attackerSummoner ~= nil and attackerSummoner.isDummy == false then
        self.attackerWrathView = SummonerWrathView(self.config.attackerWrath)
        self.attackerWrathView:SetAvatar(ResourceLoadUtils.LoadBattleSummonerIcon(
                attackerSummoner.id,
                ClientConfigUtils.GetSkinLevelByStar(attackerSummoner.id, attackerSummoner.star)))
        self.config.attackerWrath.gameObject:SetActive(true)
    else
        self.config.attackerWrath.gameObject:SetActive(false)
    end
    if defenderSummoner ~= nil and defenderSummoner.isDummy == false then
        self.defenderWrathView = SummonerWrathView(self.config.defenderWrath)
        self.defenderWrathView:SetAvatar(ResourceLoadUtils.LoadBattleSummonerIcon(
                defenderSummoner.id,
                ClientConfigUtils.GetSkinLevelByStar(defenderSummoner.id, defenderSummoner.star)))
        self.config.defenderWrath.gameObject:SetActive(true)
    else
        self.config.defenderWrath.gameObject:SetActive(false)
    end
end

--- @param attackerCompanionsId number
--- @param defenderCompanionsId number
function UIBattleMainView:ShowIconCompanions(attackerCompanionsId, defenderCompanionsId)
    if attackerCompanionsId ~= nil then
        self.config.attackerIconCompanions.color = U_Color.white
        self.config.attackerIconCompanions.sprite = ResourceLoadUtils.LoadCompanionBuffOnIcon(attackerCompanionsId)
    else
        self.config.attackerIconCompanions.sprite = ResourceLoadUtils.LoadCompanionBuffOnIcon(0)
    end
    if defenderCompanionsId ~= nil then
        self.config.defenderIconCompanions.color = U_Color.white
        self.config.defenderIconCompanions.sprite = ResourceLoadUtils.LoadCompanionBuffOnIcon(defenderCompanionsId)
    else
        self.config.defenderIconCompanions.sprite = ResourceLoadUtils.LoadCompanionBuffOnIcon(0)
    end
end

--- @param teamId number
--- @param powerAmount number
--- @param useTween boolean
function UIBattleMainView:UpdateTeamWrathPower(teamId, powerAmount, useTween)
    if teamId == BattleConstants.ATTACKER_TEAM_ID and self.attackerWrathView ~= nil then
        self.attackerWrathView:SetPowerData(powerAmount, useTween)
    elseif teamId == BattleConstants.DEFENDER_TEAM_ID and self.defenderWrathView ~= nil then
        self.defenderWrathView:SetPowerData(powerAmount, useTween)
    end
end

--- @return void
---@param tutorial UITutorialView
---@param step number
function UIBattleMainView:ShowTutorial(tutorial, step)
    --XDebug.Log(step)

    ---@type ClientTurnDetail
    local clientTurnDetail = nil
    --- @type SummonerWrathView
    local wrathView = nil
    ---@type ClientHero
    local clientHero = nil
    local getUISummoner = function()
        clientTurnDetail = zg.battleMgr.clientBattleShowController.clientTurnDetail
        clientHero = zg.battleMgr.clientBattleShowController.clientHeroDictionary:Get(clientTurnDetail.initiator)
        if clientTurnDetail.initiator.teamId == BattleConstants.ATTACKER_TEAM_ID then
            wrathView = self.attackerWrathView
        else
            wrathView = self.defenderWrathView
        end
    end

    if step == TutorialStep.RESUME_BATTLE then
        local continue = function()
            zg.battleMgr.clientBattleShowController:ResumeBattle(false)
            tutorial:ViewFocusCurrentTutorial()
        end
        if zg.battleMgr.clientBattleShowController:IsAvailableToNextTurn() then
            continue()
        else
            Coroutine.start(function()
                while zg.battleMgr.clientBattleShowController:IsAvailableToNextTurn() == false do
                    coroutine.waitforseconds(0.5)
                end
                continue()
            end)
        end
    elseif step == TutorialStep.SUMMONER_POWER then
        getUISummoner()
        local position = clientHero.uiHeroStatusBar.config.bgPowerBar.transform.position
        position = zg.battleMgr.clientBattleShowController.battleView:WorldToScreenPoint(position)
        position = uiCanvas.camIgnoreBlur:ScreenToWorldPoint(position)
        tutorial:ViewFocusCurrentTutorial(nil, U_Vector2(250, 50), position + U_Vector3(0.4, 0, 0))
    elseif step == TutorialStep.SUMMONER_BATTLE_INFO then
        getUISummoner()
        local position = clientHero.components:GetAnchorPosition(ClientConfigUtils.BODY_ANCHOR)
        position = zg.battleMgr.clientBattleShowController.battleView:WorldToScreenPoint(position)
        position = uiCanvas.camIgnoreBlur:ScreenToWorldPoint(position)
        tutorial:ViewFocusCurrentTutorial(nil, 1, position)
    elseif step == TutorialStep.SUMMONER_ADD_POWER then
        getUISummoner()
        tutorial:ViewFocusCurrentTutorial(nil, U_Vector2(400, 100), function()
            return wrathView.config.powerBurning.transform.position + U_Vector3(0, 0.1, 0)
        end)
    elseif step == TutorialStep.SUMMONER_SKILL then
        getUISummoner()
        tutorial:ViewFocusCurrentTutorial(nil, U_Vector2(400, 100), function()
            return wrathView.config.powerBurning.transform.position + U_Vector3(0, 0.1, 0)
        end)
    end
end

--- @param battleSpeedUpLevel number
function UIBattleMainView:SetRemoteBattleSpeedUpLevel(battleSpeedUpLevel)
    zg.playerData.remoteConfig.battleSpeedUpLevel = battleSpeedUpLevel
    zg.playerData:SaveRemoteConfig()
end

--- @param data {}
function UIBattleMainView:UpdateBattleUI(data)
    --- @type {attackerSummoner : BaseHero, defenderSummoner : BaseHero}
    local initTeamWrathView = data.initTeamWrathView
    if initTeamWrathView ~= nil then
        self:InitTeamWrathView(initTeamWrathView.attackerSummoner, initTeamWrathView.defenderSummoner)
    end

    --- @type {teamId : number, powerAmount : number, useTween : boolean}
    local updateTeamWrathPower = data.updateTeamWrathPower
    if updateTeamWrathPower ~= nil then
        self:UpdateTeamWrathPower(updateTeamWrathPower.teamId,
                updateTeamWrathPower.powerAmount,
                updateTeamWrathPower.useTween)
    end

    --- @type {attackerCompanionsId : number, defenderCompanionsId : number}
    local companionBuff = data.companionBuff
    if companionBuff ~= nil then
        self:ShowIconCompanions(companionBuff.attackerCompanionsId, companionBuff.defenderCompanionsId)
    end
end

--- @return void
function UIBattleMainView:LoadBattle()
    if ClientBattleData.IsValidData() then
        zg.battleMgr:ShowBattleFromResult()
        --RxMgr.finishLoading:Next()
    else
        XDebug.Log("data is not valid")
    end
end

function UIBattleMainView:SetButtonSkipVideoState(isSkip)
    local btnRect = self.config.buttonSkipVideo.transform
    btnRect:GetChild(0).gameObject:SetActive(isSkip)
    btnRect:GetChild(1).gameObject:SetActive(not isSkip)
end

function UIBattleMainView:CheckSkipVideo()
    local isSupportCutScene = not LOWER_DEVICE
    self.config.buttonSkipVideo.gameObject:SetActive(isSupportCutScene)
    if isSupportCutScene == true then
        self:SetButtonSkipVideoState(PlayerSettingData.isSkipVideoBattle)
    end
end

--- @param minorFeatureType MinorFeatureType
function UIBattleMainView:OnClickButtonSpeedUp(minorFeatureType)
    if ClientConfigUtils.CanSpeedUp(minorFeatureType) then
        ClientConfigUtils.ChangeSpeedUpAndSave(minorFeatureType, function()
            self:SetViewBattleSpeed()
        end)
    else
        self:ShowRequireSpeedUp(minorFeatureType)
    end
end