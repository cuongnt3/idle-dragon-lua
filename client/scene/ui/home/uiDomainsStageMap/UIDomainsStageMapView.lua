require "lua.client.scene.ui.home.uiDomainsStageMap.stageItem.DomainStageItem"

--- @class UIDomainsStageMapView : UIBaseView
UIDomainsStageMapView = Class(UIDomainsStageMapView, UIBaseView)

--- @param model UIDomainsStageMapModel
function UIDomainsStageMapView:Ctor(model)
    --- @type UIDomainsStageMapConfig
    self.config = nil
    --- @type Dictionary
    self.stageItemDict = Dictionary()
    --- @type DomainInBound
    self.domainInBound = nil
    --- @type DailyTeamDomainConfig
    self.dailyTeamDomainConfig = nil
    --- @type DomainRewardDayConfig
    self.domainRewardDayConfig = nil
    --- @type number
    self.currentStage = nil
    --- @type ItemsTableView
    self.itemsTableView = nil
    --- @type List
    self.listAllowClassesData = List()

    UIBaseView.Ctor(self, model)
    --- @type UIDomainsStageMapModel
    self.model = model
end

function UIDomainsStageMapView:OnReadyCreate()
    self.config = UIBaseConfig(self.uiTransform)

    self:InitButtons()

    self:InitUpdateTime()

    self:InitStageItem()

    self.itemsTableView = ItemsTableView(self.config.tableIconClass, nil, UIPoolType.SimpleButtonView)

    uiCanvas:SetBackgroundSize(self.config.background)
end

function UIDomainsStageMapView:InitStageItem()
    local stage = 1
    local domainStageItem = DomainStageItem(self.config.domainStageItem)
    UIUtils.SetParent(domainStageItem.config.transform, self.config.stages:GetChild(stage - 1))
    self.stageItemDict:Add(stage, domainStageItem)
end

function UIDomainsStageMapView:InitUpdateTime()
    self:InitUpdateTimeNextDay(function(timeNextDay, isSetTime)
        self.config.textTimer.text = string.format("%s %s",
                LanguageUtils.LocalizeCommon("will_end_in"), timeNextDay)
        if isSetTime == true then
            UIUtils.AlignText(self.config.textTimer)
        end
    end)
end

function UIDomainsStageMapView:InitButtons()
    self.config.buttonBack.onClick:AddListener(function()
        self:OnClickBackOrClose()
    end)
    self.config.buttonHelp.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        self:OnClickHelp()
    end)
    self.config.buttonChat.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        self:OnClickChat()
    end)
end

function UIDomainsStageMapView:OnReadyHide()
    PopupMgr.ShowAndHidePopup(UIPopupName.UIMainArea, nil, self.model.uiName)
end

function UIDomainsStageMapView:OnClickHelp()
    PopupMgr.ShowPopup(UIPopupName.UIHelpInfo, LanguageUtils.LocalizeHelpInfo("domains_info"))
end

function UIDomainsStageMapView:InitLocalization()
    self.config.textChat.text = LanguageUtils.LocalizeCommon("chat")
    self.config.textAllowedClasses.text = LanguageUtils.LocalizeCommon("allowed_class")
end

--- @param data {callbackClose : function}
function UIDomainsStageMapView:OnReadyShow(data)
    UIBaseView.OnReadyShow(self, data)

    self.domainInBound = zg.playerData:GetMethod(PlayerDataMethod.DOMAIN)
    self.day = self.domainInBound.challengeDay

    self.dailyTeamDomainConfig = ResourceMgr.GetDomainConfig():GetDomainConfigByDay(self.day)
    self.domainRewardDayConfig = ResourceMgr.GetDomainConfig():GetDomainRewardDayConfig(self.day)

    self.currentStage = self.domainInBound.currentStage

    self:ShowStageIsland()

    self:ShowListAllowClasses()

    self:InitListener()

    self:CheckShowChallengeOver()

    self:CheckNotificationChat()
end

function UIDomainsStageMapView:InitListener()
    if self.listenerDomain == nil then
        self.listenerDomain = RxMgr.domainUpdated:Subscribe(RxMgr.CreateFunction(self, self.DomainUpdated))
    end
    if self.listenerChatMessage == nil then
        self.listenerChatMessage = RxMgr.notificationUnreadChatMessage:Subscribe(RxMgr.CreateFunction(self, self.CheckNotificationChat))
    end
end

function UIDomainsStageMapView:ShowStageIsland()
    local stageCount = self.domainRewardDayConfig:StageCount()

    for i = 1, stageCount do
        --- @type DomainStageItem
        local stageItem = self:GetStageItem(i)
        local stageStatus = StageStatus.VALUE(i, self.currentStage + 1)
        stageItem:SetState(i, stageStatus)
        stageItem:SetCallback(function()
            self:OnSelectStage(i, stageStatus)
        end)
    end
end

function UIDomainsStageMapView:Hide()
    UIBaseView.Hide(self)

    if self.listenerDomain then
        self.listenerDomain:Unsubscribe()
        self.listenerDomain = nil
    end

    if self.listenerChatMessage then
        self.listenerChatMessage:Unsubscribe()
        self.listenerChatMessage = nil
    end
end

function UIDomainsStageMapView:OnClickChat()
    local show = function()
        PopupMgr.ShowPopup(UIPopupName.UIChat, ChatLayoutType.DOMAINS)
    end
    ChatData.OnValidateMainMenuChat(show)
end

--- @return DomainStageItem
function UIDomainsStageMapView:GetStageItem(stage)
    --- @type DomainStageItem
    local stageItem = self.stageItemDict:Get(stage)
    if stageItem == nil then
        local anchor = self.config.stages:GetChild(stage - 1)
        local object = U_GameObject.Instantiate(self.config.domainStageItem, anchor)
        stageItem = DomainStageItem(object.transform)
        self.stageItemDict:Add(stage, stageItem)
    end
    return stageItem
end

--- @param stageStatus StageStatus
function UIDomainsStageMapView:OnSelectStage(stage, stageStatus)
    --- @type {callbackBattle, callbackRecord, predefineTeamData}
    local data = {}
    data.day = self.day
    data.stage = stage
    data.listReward = self.domainRewardDayConfig:GetRewardByStage(stage)
    data.predefineTeamData = self.domainInBound:GetPredefineTeam(stage)

    if stageStatus == StageStatus.PASSED then
        data.callbackRecord = function()
            self:OnClickRecord(stage)
        end
    elseif stageStatus == StageStatus.CURRENT then
        if self.domainInBound.domainCrewInBound.leaderId == PlayerSettingData.playerId then
            data.callbackBattle = function()
                PopupMgr.HidePopup(UIPopupName.UIDomainStageInfo)
                self:OnClickBattle(stage)
            end
        end
        data.callbackRecord = function()
            self:OnClickRecord(stage)
        end
    end
    PopupMgr.ShowPopup(UIPopupName.UIDomainStageInfo, data)
end

function UIDomainsStageMapView:ShowListAllowClasses()
    self.listAllowClassesData:Clear()

    for i = 1, self.dailyTeamDomainConfig.classRequire:Count() do
        local classData = {}
        local classId = self.dailyTeamDomainConfig.classRequire:Get(i)
        classData.icon = ResourceLoadUtils.LoadSpriteFromAtlas(ResourceLoadUtils.iconClassHeroes, classId)
        classData.callback = function()
            SmartPoolUtils.ShowShortNotification(LanguageUtils.LocalizeClass(classId))
        end
        self.listAllowClassesData:Add(classData)
    end

    self.itemsTableView:SetData(self.listAllowClassesData)
    self.itemsTableView:SetSize(75, 75)
end

function UIDomainsStageMapView:OnClickBattle(stage)
    local predefineTeamData = self.domainInBound:GetPredefineTeam(stage)

    local data = {}
    data.stage = stage
    data.gameMode = GameMode.DOMAINS
    data.listHeroResource = self.domainInBound.currentStage
    data.battleTeamInfo = ResourceMgr.GetServiceConfig():GetPredefineTeam():GetBattleTeamInfo(predefineTeamData)

    --- @param uiFormationTeamData UIFormationTeamData
    data.callbackPlayBattle = function(uiFormationTeamData, callback)
        local crewBattleChallengeOutBound = CrewBattleChallengeOutBound()
        crewBattleChallengeOutBound:SetFormationTeamData(stage, uiFormationTeamData)

        local onReceived = function(result)
            ---@type BattleResultInBound
            local battleResult
            --- @param buffer UnifiedNetwork_ByteBuf
            local onBufferReading = function(buffer)
                battleResult = BattleResultInBound.CreateByBuffer(buffer)
            end
            local onSuccess = function()
                InventoryUtils.Sub(ResourceType.Money, MoneyType.DOMAIN_CHALLENGE_STAMINA, 1)

                if callback ~= nil then
                    callback()
                end
                DomainInBound.Validate(nil, true)
            end
            zg.audioMgr:PlaySfxUi(SfxUiType.START_BATTLE)
            NetworkUtils.ExecuteResult(result, onBufferReading, onSuccess, SmartPoolUtils.LogicCodeNotification)
        end
        NetworkUtils.Request(OpCode.CREW_CHALLENGE, crewBattleChallengeOutBound, onReceived)
    end
    data.callbackClose = function()
        PopupMgr.ShowAndHidePopup(UIPopupName.UIDomainsStageMap, nil, UIPopupName.UIFormation)
        PopupMgr.ShowPopup(UIPopupName.UIDomainStageInfo)
    end
    PopupMgr.ShowAndHidePopup(UIPopupName.UIFormation, data, self.model.uiName)
end

function UIDomainsStageMapView:OnClickRecord(stage)
    DomainRecordData.Validate(function()
        local domainStageRecordData = self.domainInBound.domainRecordData:GetStageRecordData(stage)
        if domainStageRecordData == nil then
            zg.audioMgr:PlaySfxUi(SfxUiType.DENIED)
            SmartPoolUtils.ShowShortNotification(LanguageUtils.LocalizeLogicCode(LogicCode.RECORD_NOT_FOUND))
            return
        end

        --- @type PredefineTeamData
        local predefineTeamData = self.domainInBound:GetPredefineTeam(stage)
        --- @type BattleTeamInfo
        local attackerTeamInfo = domainStageRecordData.compactPlayerInfo:CreateBattleTeamInfo()
        --- @type BattleTeamInfo
        local defenderTeamInfo = ResourceMgr.GetServiceConfig():GetPredefineTeam():GetBattleTeamInfo(predefineTeamData)
        local randomHelper = RandomHelper()
        randomHelper:SetSeed(domainStageRecordData.seedInBound.seed)
        zg.battleMgr:RunVirtualBattle(attackerTeamInfo, defenderTeamInfo, GameMode.DOMAINS, randomHelper, RunMode.FASTEST)
        if domainStageRecordData == BattleConstants.ATTACKER_TEAM_ID
                and ClientBattleData.battleResult.winnerTeam ~= BattleConstants.ATTACKER_TEAM_ID then
            SmartPoolUtils.ShowShortNotification(LanguageUtils.LocalizeCommon("play_record_failed"))
            zg.audioMgr:PlaySfxUi(SfxUiType.DENIED)
            return
        end
        PopupMgr.HidePopup(self.model.uiName)

        zg.playerData.rewardList = nil
        zg.audioMgr:PlaySfxUi(SfxUiType.START_BATTLE)
        ClientBattleData.skipForReplay = true
        randomHelper:SetSeed(domainStageRecordData.seedInBound.seed)
        zg.battleMgr:RunCalculatedBattleScene(attackerTeamInfo, defenderTeamInfo, GameMode.DOMAINS, randomHelper)
    end)
end

--- @param data {}
function UIDomainsStageMapView:DomainUpdated(data)
    local serverNotificationType = data.serverNotificationType
    if serverNotificationType == ServerNotificationType.DOMAINS_CREW_CHALLENGE_UPDATED then
        self:OnReadyShow()

        PopupMgr.HidePopup(UIPopupName.UIDomainStageInfo)

        SmartPoolUtils.ShowShortNotification(LanguageUtils.LocalizeCommon("data_updated"))

        self.domainInBound.domainRecordData.lastTimeUpdated = nil
    else
        XDebug.Error("Need define " .. serverNotificationType)
    end
end

function UIDomainsStageMapView:CheckShowChallengeOver()
    if self.domainInBound:IsValidShowChallengeOver() then
        PopupMgr.ShowAndHidePopup(UIPopupName.UIDomainChallengeOver, nil, UIPopupName.UIChat, UIPopupName.UIDomainStageInfo)
    end

    zg.playerData.remoteConfig.lastTimeChallengeDomain = self.domainInBound.lastTimeChallenge
    zg.playerData:SaveRemoteConfig()
end

function UIDomainsStageMapView:CheckNotificationChat()
    local chatData = zg.playerData:GetChatData()
    chatData:CheckNotificationDomains()
    self.config.notifyChat:SetActive(chatData.isNotifyDomainTeam)

    if chatData.isNotifyDomainTeam ~= true then
        ChatRequest.SubscribeChat()
    end
end