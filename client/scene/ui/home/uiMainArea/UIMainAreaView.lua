require "lua.client.scene.ui.home.uiMainArea.mainAreaWorld.MainAreaWorld"
require "lua.client.scene.ui.home.uiTutorial.TutorialData"
require "lua.client.scene.ui.home.uiMiniQuestTree.UIMiniQuestTreeView"
require "lua.client.scene.ui.notification.NotificationFragment"
require "lua.client.utils.NotificationCheckUtils"
require "lua.client.scene.ui.home.uiEventBirthday.layout.UIEventBirthdayLayout"

--- @class UIMainAreaView : UIBaseView
UIMainAreaView = Class(UIMainAreaView, UIBaseView)

--- @param model UIMainAreaModel
function UIMainAreaView:Ctor(model)
    --- @type MainAreaWorld
    self.mainAreaWorld = nil
    --- @type UIMainAreaConfig
    self.config = nil
    --- @type MoneyBarView
    self.goldBarView = nil
    --- @type MoneyBarView
    self.gemBarView = nil
    --- @type VipIconView
    self.iconVip = nil
    --- @type UIMiniQuestTreeView
    self.uiMiniQuestTreeView = nil

    --- @type TimeCountDown
    self.timeServerOpen = nil

    self.onDownloadAssetBundle = nil
    UIBaseView.Ctor(self, model)
    --- @type UIMainAreaModel
    self.model = model
end

function UIMainAreaView:OnReadyCreate()
    ---@type UIMainAreaConfig
    self.config = UIBaseConfig(self.uiTransform)
    self.config.gameObject:SetActive(false)
    self.mainAreaWorld = MainAreaWorld(self.config.mainAreaWorld, self)
    self:SetButtonFakeState()
    self:_InitButtonListener()
    self:_InitTimeCountDown()
end

function UIMainAreaView:SetButtonFakeState()
    self.config.iconCheat.gameObject:SetActive(zgUnity.IsTest)
    if IS_APPLE_REVIEW_IAP == true then
        self.config.cashShop.gameObject:SetActive(false)
        self.config.heroList.transform.parent.localPosition = U_Vector3(self.config.heroList.transform.parent.localPosition.x + 200, self.config.heroList.transform.parent.localPosition.y, self.config.heroList.transform.parent.localPosition.z)
    end
end

function UIMainAreaView:_InitTimeCountDown()
    local localizeDay = LanguageUtils.LocalizeCommon("day")
    self.timeServerOpen = TimeCountDown(function(time, isSetTime)
        if self.config.timeServerOpen ~= nil then
            if time >= TimeUtils.SecondADay then
                self.config.timeServerOpen.text = UIUtils.SetColorString(UIUtils.green_light, string.format("%s %s", math.floor(time / TimeUtils.SecondADay), localizeDay))
            else
                self.config.timeServerOpen.text = UIUtils.SetColorString(UIUtils.red_light, TimeUtils.SecondsToClock(time))
            end
        end
    end)
end

--- @return void
function UIMainAreaView:InitLocalization()
    self.config.localizeDailyCheckin.text = LanguageUtils.LocalizeCommon("daily_checkin")
    self.config.localizeFriend.text = LanguageUtils.LocalizeCommon("friend")
    self.config.localizeMail.text = LanguageUtils.LocalizeCommon("mail")
    self.config.localizeShop.text = LanguageUtils.LocalizeCommon("shop")
    self.config.localizeMainCharacter.text = LanguageUtils.LocalizeCommon("main_character")
    self.config.localizeMastery.text = LanguageUtils.LocalizeCommon("mastery")
    self.config.localizeInventory.text = LanguageUtils.LocalizeCommon("inventory")
    self.config.localizeHeroList.text = LanguageUtils.LocalizeCommon("hero_list")
    self.config.localizeQuest.text = LanguageUtils.LocalizeCommon("quest")
    self.config.localizeFreeGem.text = LanguageUtils.LocalizeCommon("free_gem")
    self.config.localizeHandOfMidas.text = LanguageUtils.LocalizeCommon("gold_mine")
    self.config.localizeFirstPurchase.text = LanguageUtils.LocalizeCommon("first_purchase")
    --if IS_APPLE_REVIEW_IAP then
    --    self.config.localizeFirstPurchase1.text = LanguageUtils.LocalizeCommon("first_purchase")
    --    self.config.localizeFirstPurchase2.text = LanguageUtils.LocalizeCommon("first_purchase")
    --    self.config.localizeFirstPurchase3.text = LanguageUtils.LocalizeCommon("first_purchase")
    --end
    self.config.localizeHiddenDeal.text = LanguageUtils.LocalizeCommon("hidden_deal")
    self.config.text1stReward.text = LanguageUtils.LocalizeCommon("first_time_reward")
    self.config.localizeStarterPack.text = LanguageUtils.LocalizeCommon("starter_pack")
    self.config.localizeEventServerOpen.text = LanguageUtils.LocalizeCommon("server_open")
    self.config.textHalloween.text = LanguageUtils.LocalizeCommon("hallo_ween")
    self.config.textXmas.text = LanguageUtils.LocalizeCommon("xmas")
    self.config.textNewYear.text = LanguageUtils.LocalizeCommon("happy_new_year")
    self.config.textLunarNewYear.text = LanguageUtils.LocalizeCommon("lunar_new_year")
    self.config.textBlackFriday.text = LanguageUtils.LocalizeCommon("black_friday")
    self.config.textSaleOff.text = LanguageUtils.LocalizeCommon("sale_off")
    self.config.textLunarPath.text = LanguageUtils.LocalizeCommon("lunar_new_year_path")
    self.config.textValentine.text = LanguageUtils.LocalizeCommon("valentine")
    self.config.textEventNewHeroSummon.text = LanguageUtils.LocalizeCommon("new_hero_summon")
    self.config.textRaiseLevel.text = LanguageUtils.LocalizeFeature(FeatureType.RAISE_LEVEL)
    self.config.textEventNewHero.text = LanguageUtils.LocalizeCommon("new_hero")
    self.config.textEventMergeServer.text = LanguageUtils.LocalizeCommon("event_merge_server")
    self.config.textEventEasterEgg.text = LanguageUtils.LocalizeCommon("event_easter_egg")
    self.config.textWelcomeBack.text = LanguageUtils.LocalizeCommon("welcome_back")
    self.config.textBirthday.text = LanguageUtils.LocalizeCommon("birthday")
    self.config.textSkinBundle.text = LanguageUtils.LocalizeCommon("skin_bundle")
    if self.config.textSpecialOffer then
        self.config.textSpecialOffer.text = LanguageUtils.LocalizeCommon("special_offer")
    end

    self.mainAreaWorld:InitLocalization()
    if self.uiMiniQuestTreeView ~= nil then
        self.uiMiniQuestTreeView:InitLocalization()
    end
end

--- @return void
--- @param result table
function UIMainAreaView:Show(result)
    if PopupUtils.IsPopupShowing(UIPopupName.UILoading) then
        local subject
        subject = RxMgr.hideLoading:Subscribe(function()
            UIBaseView.Show(self, result)
            subject:Unsubscribe()
        end)
    else
        UIBaseView.Show(self, result)
    end
end

--- @return void
function UIMainAreaView:CheckDownloadAssetBundle()
    if IS_MOBILE_PLATFORM then
        XDebug.Log(string.format("CheckDownloadAssetBundle: %s, %s, %s",
                tostring(bundleDownloader:IsDownloadComplete()), tostring(bundleDownloader:IsDownloading()), tostring(self:CanShowTutorial())))
    end
    if bundleDownloader:IsDownloadComplete() == false then
        self:SubscribeDownloadAssetBundle()
        if bundleDownloader:IsDownloading() == false then
            bundleDownloader:SubscribeDownload()
            bundleDownloader:DownloadAssetBundle()
            if self:CanShowTutorial() then
                PopupMgr.ShowPopup(UIPopupName.UITutorial)
            else
                if zg.networkMgr.isConnected then
                    UIBaseView.CheckBlurMain(true, true, function()
                        PopupMgr.ShowPopup(UIPopupName.UIDownloadAssetBundle)
                    end)
                end
            end
        end
    elseif self:CanShowTutorial() then
        PopupMgr.ShowPopup(UIPopupName.UITutorial)
    end
    self.mainAreaWorld:CheckSoftTutCampaign()
    self.mainAreaWorld:CheckSoftTutTower()
end

function UIMainAreaView:SubscribeDownloadAssetBundle()
    if self.onDownloadAssetBundle == nil then
        XDebug.Log("SubscribeDownloadAssetBundle ")
        self.onDownloadAssetBundle = RxMgr.downloadAssetBundle:Subscribe(function(percent, totalMB)
            self.config.textDownloadPercent.text = string.format("%.0f%%", percent * 100)
            if percent == 1 then
                self:UnsubscribeDownloadAssetBundle()
            end
        end)
    end
    self.config.iconDownloadAssetBundle:SetActive(true)
    self.config.textDownloadPercent.text = ""
end

function UIMainAreaView:CanShowTutorial()
    return TutorialData.CanShowTutorial() and UIBaseView.tutorial == nil
end

function UIMainAreaView:UnsubscribeDownloadAssetBundle()
    if self.onDownloadAssetBundle then
        XDebug.Log("UnsubscribeDownloadAssetBundle ")
        self.onDownloadAssetBundle:Unsubscribe()
        self.onDownloadAssetBundle = nil
    end
    self.config.iconDownloadAssetBundle:SetActive(false)
end

function UIMainAreaView:OnReadyShow(result)
    self.mainAreaWorld:OnShow()

    self:_InitListener()
    self:_InitMoneyBar()
    self:ShowAvatar()

    if zg.networkMgr.isConnected then
        self:CheckDownloadAssetBundle()
        if self:CanShowTutorial() or bundleDownloader:IsDownloadComplete() then
            --self:RunTimeUpdate()
            self:CheckNotification()
            self:CheckFeatureUnlockButton()
            self:CheckFocusTutorial()
            if IS_APPLE_REVIEW_IAP == false then
                self:CheckEnableButtonPurchaseEvents()
                self:CheckActiveFirstTimeRewardBtn()
            end
        end
    end
end

--- @return void
function UIMainAreaView:OnFinishAnimation()
    UIBaseView.OnFinishAnimation(self)

    ChatData.CheckSystemMessage()

    self:CheckAndInitTutorial()

    if self:CanShowTutorial() == false and bundleDownloader:IsDownloadComplete() == false then
        return
    end

    self:CheckPopupMiniQuestTree()

    self:CheckNotificationOnFinishAnim()

    if IS_APPLE_REVIEW_IAP == false then
        self:CheckAutoShowPopup()
    end

    zg.iapMgr:CheckRequestPendingPurchase()

    self:CheckVisualFeatureStateUpdated()

    self:CheckEnableEventWelcomeBack()

    self:CheckNotificationDomains()
end

function UIMainAreaView:CheckPopupMiniQuestTree()
    local questTreeDataInBound = zg.playerData:GetQuest().questTreeDataInBound
    if TutorialData.CanShowTutorial() or UIBaseView.tutorial ~= nil then
        questTreeDataInBound.isCollapsed = true
    end

    ---@param questUnitInBound QuestUnitInBound
    self:CheckOpenMiniQuestTree(questTreeDataInBound.isCollapsed, function(questUnitInBound)
        if questTreeDataInBound.isCollapsed == false then
            self.uiMiniQuestTreeView:OnClickExpand()
        end
        if self.callbackDoneDataQuest ~= nil then
            self.uiMiniQuestTreeView:OnClickExpand()
            ---@type TutorialInBound
            local tutorialInBound = zg.playerData:GetMethod(PlayerDataMethod.TUTORIAL)
            if tutorialInBound ~= nil then
                local isQuestTree = ResourceMgr.GetQuestConfig():GetQuestTreeTypeById(questUnitInBound.questId) == QuestType.SUMMON_HERO_BY_BASIC_SCROLL
                if isQuestTree == false or (questUnitInBound.questState ~= QuestState.DOING
                        and tutorialInBound.listStepComplete:IsContainValue(TutorialMiniQuestTree.stepId) == false
                        and UIBaseView.tutorial.currentTutorial.tutorialStepData.step == TutorialStep.CLICK_GO) then
                    UITutorialView.RequestTutorialSetStep(TutorialMiniQuestTree.stepId)

                    if questUnitInBound.questState ~= QuestState.DONE_REWARD_NOT_CLAIM
                            and tutorialInBound.listStepComplete:IsContainValue(TutorialMiniQuestComplete.stepId) == false then
                        UITutorialView.RequestTutorialSetStep(TutorialMiniQuestComplete.stepId)
                    end
                end

                if isQuestTree == false or (questUnitInBound.questState ~= QuestState.DONE_REWARD_NOT_CLAIM
                        and tutorialInBound.listStepComplete:IsContainValue(TutorialMiniQuestComplete.stepId) == false
                        and UIBaseView.tutorial.currentTutorial.tutorialStepData.step == TutorialStep.CLICK_QUEST_COMPLETE) then
                    UITutorialView.RequestTutorialSetStep(TutorialMiniQuestComplete.stepId)
                end
            end

            self.callbackDoneDataQuest = nil
            UIBaseView.tutorial:ShowTutorialCanRun()
            if self.callbackDoneDataQuest ~= nil then
                self.callbackDoneDataQuest()
                self.callbackDoneDataQuest = nil
            end
        end
    end)
end

--- @return void
function UIMainAreaView:_InitMoneyBar()
    self.gemBarView = SmartPool.Instance:SpawnLuaUIPool(UIPoolType.MoneyBarView, self.config.gemRoot)
    self.gemBarView:SetIconData(MoneyType.GEM)
    self.gemBarView:Reverse(true)

    self.goldBarView = SmartPool.Instance:SpawnLuaUIPool(UIPoolType.MoneyBarView, self.config.goldRoot)
    self.goldBarView:SetIconData(MoneyType.GOLD)
    self.goldBarView:Reverse(true)
end

function UIMainAreaView:OnReadyHide()
    PopupUtils.ShowPopupNotificationYesNo(LanguageUtils.LocalizeCommon("quit_game"), nil, function()
        U_Application.Quit()
    end, nil)
end

function UIMainAreaView:Hide()
    UIBaseView.Hide(self)
    self.callbackDoneDataQuest = nil
    self:RemoveListener()
    self:RemoveTimeUpdate()
    self:RemoveCheckNotificationCampaign()
    self:RemoveCheckNotificationSummon()
    self:UnsubscribeDownloadAssetBundle()
    if self.gemBarView then
        self.gemBarView:ReturnPool()
        self.gemBarView = nil
    end

    if self.goldBarView then
        self.goldBarView:ReturnPool()
        self.goldBarView = nil
    end

    if self.iconVip then
        self.iconVip:ReturnPool()
        self.iconVip = nil
    end
    self.mainAreaWorld:OnHide()
    if self.uiMiniQuestTreeView ~= nil and self.uiMiniQuestTreeView:IsActiveSelf() then
        self.uiMiniQuestTreeView:SetCollapseState(true)
    end
    self.timeServerOpen:StopTime()
    if self.subscriptionNotiInventory ~= nil then
        self.subscriptionNotiInventory:Unsubscribe()
        self.subscriptionNotiInventory = nil
    end
    self.config.softTutInventory:SetActive(false)
end

--- @return void
function UIMainAreaView:_InitListener()

    self.listenerMail = RxMgr.notificationRequestMail
                             :Merge(RxMgr.notificationUiMail)
                             :Subscribe(RxMgr.CreateFunction(self, self.CheckNotificationMail))

    self.listenerFriend = RxMgr.notificationRequestUiFriend
                               :Merge(RxMgr.notificationUiFriend)
                               :Subscribe(RxMgr.CreateFunction(self, self.CheckNotificationFriend))

    self.listenerDailyGift = RxMgr.notificationUiDailyReward:Subscribe(RxMgr.CreateFunction(self, self.CheckNotificationDailyGift))

    self.listenerRename = RxMgr.finishName:Subscribe(RxMgr.CreateFunction(self, self.CheckRename))

    self.listenerChangeAvatar = RxMgr.changeAvatar
                                     :Merge(RxMgr.levelUp)
                                     :Subscribe(RxMgr.CreateFunction(self, self.ShowAvatar))

    self.listenerQuest = RxMgr.notificationRequestQuest:Subscribe(RxMgr.CreateFunction(self, self.OnNotifiedQuestRequest))

    self.listenerPurchasePacks = RxMgr.notificationPurchasePacks:Subscribe(RxMgr.CreateFunction(self, self.OnPurchaseSuccess))

    self.listenerVideoRewarded = RxMgr.notificationVideoRewarded:Subscribe(RxMgr.CreateFunction(self, self.CheckNotificationVideoRewarded))

    self.listenToHideLoading = RxMgr.hideLoading:Subscribe(RxMgr.CreateFunction(self, self.OnHideLoading))

    self.listenerHandOfMidas = RxMgr.notificationHandOfMidas:Subscribe(RxMgr.CreateFunction(self, self.CheckNotificationHandOfMidas))

    self.listenerChatMessage = RxMgr.notificationUnreadChatMessage:Subscribe(RxMgr.CreateFunction(self, self.CheckNotificationChat))

    self.listenerNotiEventPopup = RxMgr.notificationEventPopup:Subscribe(RxMgr.CreateFunction(self, self.CheckNotificationEventPopup))

    self.listenerNotiEventIap = RxMgr.notificationEventIap:Subscribe(RxMgr.CreateFunction(self, self.CheckNotificationIapShop))

    self.listenerNotiChangeResource = RxMgr.changeResource:Subscribe(RxMgr.CreateFunction(self, self.CheckNotificationOnChangeResource))

    self.listenerShowFragment = RxMgr.changeResource:Subscribe(RxMgr.CreateFunction(self, self.CheckShowFragment))

    self.listenerFeatureUpdated = RxMgr.featureConfigUpdated:Subscribe(RxMgr.CreateFunction(self, self.CheckVisualFeatureStateUpdated))
end

--- @return void
function UIMainAreaView:RemoveListener()
    if self.listenerShowFragment then
        self.listenerShowFragment:Unsubscribe()
        self.listenerShowFragment = nil
    end
    if self.listenerMail then
        self.listenerMail:Unsubscribe()
        self.listenerMail = nil
    end
    if self.listenerFriend then
        self.listenerFriend:Unsubscribe()
        self.listenerFriend = nil
    end
    if self.listenerDailyGift then
        self.listenerDailyGift:Unsubscribe()
        self.listenerDailyGift = nil
    end
    if self.listenerRename then
        self.listenerRename:Unsubscribe()
        self.listenerRename = nil
    end
    if self.listenerChangeAvatar then
        self.listenerChangeAvatar:Unsubscribe()
        self.listenerChangeAvatar = nil
    end
    if self.listenerQuest then
        self.listenerQuest:Unsubscribe()
        self.listenerQuest = nil
    end
    if self.listenerChatMessage then
        self.listenerChatMessage:Unsubscribe()
        self.listenerChatMessage = nil
    end

    if self.listenerPurchasePacks then
        self.listenerPurchasePacks:Unsubscribe()
        self.listenerPurchasePacks = nil
    end

    if self.listenerHandOfMidas then
        self.listenerHandOfMidas:Unsubscribe()
        self.listenerHandOfMidas = nil
    end

    if self.listenerVideoRewarded then
        self.listenerVideoRewarded:Unsubscribe()
        self.listenerVideoRewarded = nil
    end

    if self.listenToHideLoading then
        self.listenToHideLoading:Unsubscribe()
        self.listenToHideLoading = nil
    end

    if self.listenerNotiEventPopup then
        self.listenerNotiEventPopup:Unsubscribe()
        self.listenerNotiEventPopup = nil
    end

    if self.listenerNotiEventIap then
        self.listenerNotiEventIap:Unsubscribe()
        self.listenerNotiEventIap = nil
    end

    if self.listenerNotiChangeResource then
        self.listenerNotiChangeResource:Unsubscribe()
        self.listenerNotiChangeResource = nil
    end

    if self.buyCompleteSub ~= nil then
        self.buyCompleteSub:Unsubscribe()
        self.buyCompleteSub = nil
    end

    if self.listenerFeatureUpdated ~= nil then
        self.listenerFeatureUpdated:Unsubscribe()
        self.listenerFeatureUpdated = nil
    end

    self:RemoveListenerTutorial()
end

function UIMainAreaView:CheckNotification()
    self:CheckNotificationModeShop()
    self:CheckNotificationCampaign()
    self:CheckNotificationSummon()
    self:CheckNotificationRaid()
    self:CheckNotificationFriend()
    self:CheckNotificationVideoRewarded()
    self:CheckNotificationTavern()
    self:CheckNotificationSummoner()
    self:CheckNotificationByEventModel()
    self:CheckNotificationRaiseLevelHero()
end

function UIMainAreaView:CheckNotificationByEventModel()
    EventInBound.ValidateEventModel(function()
        self:CheckNotificationIapShop()
        self:CheckNotificationEventPopup()
    end)
end

function UIMainAreaView:OnPurchaseSuccess()
    self:CheckEnableButtonPurchaseEvents()
end

--- @param viewType PackViewType
--- @param state boolean
function UIMainAreaView:SetProgressButtonStateByViewType(viewType, state)
    if viewType == PackViewType.FIRST_TIME_PACK then
        self.config.firstPurchase.gameObject:SetActive(state)
    elseif viewType == PackViewType.STARTER_PACK then
        self.config.buttonStarterPack.gameObject:SetActive(state)
    elseif viewType == PackViewType.FLASH_SALE_PACK then
        self.config.flashSale.gameObject:SetActive(state)
    elseif viewType == PackViewType.MASTER_BLACKSMITH and self.config.buttonSpecialOffer then
        self.config.buttonSpecialOffer.gameObject:SetActive(state)
    else
        XDebug.Log("View Type is not exist: " .. tostring(viewType))
    end
end

function UIMainAreaView:CheckEnableButtonPurchaseEvents()
    self:SetProgressButtonStateByViewType(PackViewType.FIRST_TIME_PACK, false)
    self:SetProgressButtonStateByViewType(PackViewType.STARTER_PACK, false)
    self:SetProgressButtonStateByViewType(PackViewType.FLASH_SALE_PACK, false)
    self:SetProgressButtonStateByViewType(PackViewType.MASTER_BLACKSMITH, false)

    --- @type IapDataInBound
    local iapDataInBound = zg.playerData:GetMethod(PlayerDataMethod.IAP)
    local progressActiveGroupList = iapDataInBound.progressPackData:GetActiveGroupList()
    if progressActiveGroupList:Count() > 0 then
        --- @param v GroupProductConfig
        for _, v in ipairs(progressActiveGroupList:GetItems()) do
            self:SetProgressButtonStateByViewType(v.viewType, true)
        end
    end
    local isEnable = iapDataInBound:CheckShowButtonTrialMonthly()
    self.config.trialMonthlyCard.gameObject:SetActive(isEnable)
end

function UIMainAreaView:CheckNotificationOnFinishAnim()
    self:CheckNotificationMail()
    self:CheckNotificationQuest()
    self:CheckNotificationChat()
    self:CheckNotificationInventory()
    self:CheckNotificationDailyGift()
    self:CheckNotificationHandOfMidas()
    self:CheckNotificationDefenseMode()
    self:CheckNotificationHeroLinking()
    self:CheckSoftTutHero()
end

function UIMainAreaView:CheckAutoShowPopup()
    if TutorialData.CanShowTutorial() or UIBaseView.tutorial ~= nil or bundleDownloader:IsDownloadComplete() == false then
        return
    end
    Coroutine.start(function()
        coroutine.waitforseconds(0.2)
        if self.config.gameObject.activeInHierarchy == false then
            return
        end
        --- @type IapDataInBound
        local iapDataInBound = zg.playerData:GetMethod(PlayerDataMethod.IAP)
        --- @type RemoteConfigData
        local remoteConfigData = zg.playerData.remoteConfig
        --- @type List
        local listAutoShowPopup = List()
        local checkAutoShowBlackFriday = function()
            local eventInBound = zg.playerData:GetEvents()
            if eventInBound ~= nil then
                --- @type EventBlackFridayModel
                local eventBlackFriday = eventInBound:GetEvent(EventTimeType.EVENT_BLACK_FRIDAY)
                if eventBlackFriday ~= nil then
                    if eventBlackFriday:IsOpening() then
                        if eventBlackFriday:IsAutoShow() then
                            listAutoShowPopup:Add(UIPopupName.UIEventBlackFriday)
                        end
                    else
                        if eventBlackFriday:IsAutoShowValidDuration() then
                            listAutoShowPopup:Add(UIPopupName.UIEventBlackFriday)
                        end
                    end
                end
            end
        end
        local checkAutoShowLoginReward = function()
            local eventInBound = zg.playerData:GetEvents()
            if eventInBound ~= nil then
                --- @type EventPopupLoginModel
                local eventPopupLoginModel = eventInBound:GetEvent(EventTimeType.EVENT_LOGIN)
                if eventPopupLoginModel ~= nil
                        and eventPopupLoginModel:IsAvailableToShowLogin() == true then
                    listAutoShowPopup:Add(UIPopupName.UIEventLogin)
                end
            end
        end
        local checkAutoShowProgressPack = function()
            --- @type BasicInfoInBound
            local basicInfoInBound = zg.playerData:GetMethod(PlayerDataMethod.BASIC_INFO)
            local lastTimeLogin = basicInfoInBound.lastLoginTime
            local listActiveGroup = iapDataInBound.progressPackData:GetActiveGroupList()
            --- @param uiPopupName UIPopupName
            --- @param isNotShowMoreToday boolean
            --- @param groupProductConfig GroupProductConfig
            local checkAddPopup = function(uiPopupName, lastTimeLoginToShowPopup, groupProductConfig, isNotShowMoreToday)
                --local groupId = groupProductConfig.groupId
                --local createdTime = iapDataInBound.progressPackData.activeProgressPackDict:Get(groupId)
                if lastTimeLoginToShowPopup ~= lastTimeLogin and isNotShowMoreToday == false then
                    local listPack = groupProductConfig.listProductConfig
                    for i = 1, listPack:Count() do
                        --- @type ProductConfig
                        local packConfig = listPack:Get(i)
                        local boughtCount = iapDataInBound.progressPackData:GetBoughtCount(packConfig.id)
                        if boughtCount < packConfig.stock and listAutoShowPopup:IsContainValue(uiPopupName) == false then
                            --print("Add Popup ", uiPopupName)
                            listAutoShowPopup:Add(uiPopupName)
                            break
                        end
                    end
                end
            end
            local isNotShowMoreToday = false
            for i = 1, listActiveGroup:Count() do
                --- @type GroupProductConfig
                local groupProductConfig = listActiveGroup:Get(i)
                if groupProductConfig.autoShow == true then
                    if groupProductConfig.viewType == PackViewType.STARTER_PACK then
                        checkAddPopup(UIPopupName.UIStarterPack, remoteConfigData.showedStarterPackLoginTime, groupProductConfig, isNotShowMoreToday)
                    elseif groupProductConfig.viewType == PackViewType.FIRST_TIME_PACK then
                        checkAddPopup(UIPopupName.UIFirstPurchase, remoteConfigData.showedFirstPurchaseLoginTime, groupProductConfig, isNotShowMoreToday)
                    elseif groupProductConfig.viewType == PackViewType.FLASH_SALE_PACK then
                        checkAddPopup(UIPopupName.UIHiddenDeal, remoteConfigData.showedFlashSaleLoginTime, groupProductConfig, isNotShowMoreToday)
                    elseif groupProductConfig.viewType == PackViewType.MASTER_BLACKSMITH then
                        checkAddPopup(UIPopupName.UISpecialOfferShop, remoteConfigData.showedMasterBlackSmithLoginTime, groupProductConfig, isNotShowMoreToday)
                    end
                end
            end
        end
        local checkAutoShowTrial = function()
            if iapDataInBound:CheckAutoShowTrialMonthly()
                    and iapDataInBound:CheckShowButtonTrialMonthly() then
                listAutoShowPopup:Add(UIPopupName.UITrialMonthlyCard)
            end
        end
        checkAutoShowBlackFriday()
        checkAutoShowLoginReward()
        checkAutoShowProgressPack()
        checkAutoShowTrial()

        if listAutoShowPopup:Count() > 0 then
            UIBaseView.CheckBlurMain(true, true, function()
                self:_ShowListAutoShowPopupProgress(listAutoShowPopup)
            end)
        else
            self:CheckNotiBindingAccount()
        end
    end)
end

--- @param listAutoShowPopup List
function UIMainAreaView:_ShowListAutoShowPopupProgress(listAutoShowPopup)
    local popup = listAutoShowPopup:Get(1)
    if listAutoShowPopup:Count() > 1 then
        PopupMgr.ShowPopup(popup, { ["callbackClose"] = function()
            listAutoShowPopup:RemoveByIndex(1)
            PopupMgr.HidePopup(popup)
            self:_ShowListAutoShowPopupProgress(listAutoShowPopup)
        end })
    elseif listAutoShowPopup:Count() == 1 then
        PopupMgr.ShowPopup(popup, { ["callbackClose"] = function()
            PopupMgr.ShowAndHidePopup(UIPopupName.UIMainArea, nil, popup)
        end })
    end
end

function UIMainAreaView:RunTimeUpdate()
    ---@type HandOfMidasInBound
    local handOfMidas = zg.playerData:GetMethod(PlayerDataMethod.HAND_OF_MIDAS)
    if handOfMidas == nil then
        return
    end
    handOfMidas:SetTimeRefresh()
    if handOfMidas:CanRefresh() then
        handOfMidas:ResetClaimDict()
    else
        handOfMidas:StartRefreshTime()
    end
end

function UIMainAreaView:RemoveTimeUpdate()
    -----@type HandOfMidasInBound
    --local handOfMidas = zg.playerData:GetMethod(PlayerDataMethod.HAND_OF_MIDAS)
    --if handOfMidas ~= nil then
    --    handOfMidas:RemoveUpdateTime()
    --end
    local eventInBound = zg.playerData:GetEvents()
    if eventInBound ~= nil then
        --- @type EventSaleOffModel
        local eventSaleOffModel = eventInBound:GetEvent(EventTimeType.EVENT_SALE_OFF)
        if eventSaleOffModel ~= nil then
            eventSaleOffModel:RemoveUpdateTime()
        end
    end
end

--- @return void
function UIMainAreaView:CheckNotificationMail()
    --- @type MailDataInBound
    local mailData = zg.playerData:GetMethod(PlayerDataMethod.MAIL)
    if mailData ~= nil then
        self.config.notiMail:SetActive(mailData:IsActiveNotification())
    end
end

--- @return void
function UIMainAreaView:CheckNotificationSummoner()
    --- @type PlayerSummonerInBound
    local summonerInBound = zg.playerData:GetMethod(PlayerDataMethod.SUMMONER)
    if summonerInBound ~= nil then
        self.config.notiSummoner:SetActive(summonerInBound:IsNotiEvolve())
    end
end
--- @return void
function UIMainAreaView:CheckNotificationRaiseLevelHero()
    --- @type PlayerRaiseLevelInbound
    local raiseInbound = zg.playerData:GetRaiseLevelHero()
    if raiseInbound ~= nil then
        local _noti = raiseInbound:CheckNotificationInMain()
        self.config.notiRaiseHero:SetActive(_noti)
    end
end
--- @return void
function UIMainAreaView:CheckNotificationIapShop()
    self.config.notifyShop:SetActive(false)
    local isNotified = false

    --- @type IapDataInBound
    local iapDataInBound = zg.playerData:GetIAP()
    --- @type BasicInfoInBound
    local basicInfoInBound = zg.playerData:GetMethod(PlayerDataMethod.BASIC_INFO)
    --- @type GrowthPackCollection
    local growthPackCollection = iapDataInBound.growthPackData

    EventInBound.ValidateEventModel(function()
        --- @type EventInBound
        local eventInBound = zg.playerData:GetEvents()
        local hasOpeningEvent = eventInBound ~= nil and eventInBound:IsOpeningEventIap()
        local hasNotification = eventInBound:HasNotificationEventIap()
        isNotified = hasOpeningEvent and hasNotification
        self.config.notifyShop:SetActive(isNotified)
        if isNotified == false then
            local isDailyEvent = false
            if isNotified == false and EventInBound.IsEventOpening(EventTimeType.EVENT_HALLOWEEN) then
                isDailyEvent = true
                isNotified = ResourceMgr.GetPurchaseConfig():GetHalloweenDaily():IsNotificationDailyDeal()
            end
            if isNotified == false and EventInBound.IsEventOpening(EventTimeType.EVENT_XMAS) then
                isDailyEvent = true
                isNotified = ResourceMgr.GetPurchaseConfig():GetXmasDaily():IsNotificationDailyDeal()
            end
            if isNotified == false and EventInBound.IsEventOpening(EventTimeType.EVENT_NEW_YEAR) then
                isDailyEvent = true
                isNotified = ResourceMgr.GetPurchaseConfig():GetNewYearDaily():IsNotificationDailyDeal()
            end
            if isNotified == false and EventInBound.IsEventOpening(EventTimeType.EVENT_EASTER_EGG) then
                isDailyEvent = true
                isNotified = ResourceMgr.GetPurchaseConfig():GetEasterDailyBundleStore():IsNotificationDailyDeal()
            end
            if isNotified == false and EventInBound.IsEventOpening(EventTimeType.EVENT_BIRTHDAY) then
                isDailyEvent = true
                isNotified = ResourceMgr.GetPurchaseConfig():GetBirthdayDailyBundleStore():IsNotificationDailyDeal()
            end
            if isDailyEvent == false then
                isNotified = ResourceMgr.GetPurchaseConfig():GetCashShop():IsNotificationDailyDeal()
            end
            self.config.notifyShop:SetActive(isNotified)
            if isNotified == false then
                --- @param growthPackLineConfig GrowthPackLineConfig
                local checkActiveNotify = function(growthPackLineConfig)
                    if growthPackLineConfig == nil then
                        return false
                    end
                    local claimAbleMilestone = growthPackLineConfig:GetClaimableMilestone(basicInfoInBound.level,
                            growthPackCollection:GetBoughtCount(growthPackLineConfig.line) > 0,
                            growthPackCollection:GetGrowPatchLine(growthPackLineConfig.line))
                    if claimAbleMilestone ~= nil then
                        self.config.notifyShop:SetActive(isNotified)
                    end
                    return claimAbleMilestone ~= nil
                end
                --- @type GrowthPackLineConfig
                local growthPackLine1 = ResourceMgr.GetLevelPassConfig():GetGrowthPackConfigByLine(1)
                if checkActiveNotify(growthPackLine1) then
                    return
                end
                --- @type GrowthPackLineConfig
                local growthPackLine2 = ResourceMgr.GetLevelPassConfig():GetGrowthPackConfigByLine(2)
                checkActiveNotify(growthPackLine2)
            end
        end
    end, nil, false, false)
end

--- @return void
function UIMainAreaView:CheckNotificationFriend()
    --- @type PlayerFriendInBound
    local friendData = zg.playerData:GetMethod(PlayerDataMethod.FRIEND)
    if friendData ~= nil then
        self.config.nofiFriend:SetActive(friendData:IsActiveNotification())
    end
end

--- @return void
function UIMainAreaView:CheckNotificationDailyGift()
    --- @type PlayerDailyDataInBound
    local dailyRewardData = zg.playerData:GetMethod(PlayerDataMethod.DAILY_REWARD)
    if dailyRewardData ~= nil then
        self.config.notiDaily:SetActive(dailyRewardData:CanClaim())
    end
end

function UIMainAreaView:CheckNotificationVideoRewarded()
    --- @type VideoRewardedInBound
    local videoData = zg.playerData:GetMethod(PlayerDataMethod.REWARD_VIDEO)
    local enable = videoData and videoData:CanWatch()
    self.config.videoRewarded.gameObject:SetActive(enable)
    if enable then
        self.config.notiVideoRewarded:SetActive(VideoRewardedUtils.IsAvailable())
    end
end

function UIMainAreaView:CheckNotificationHandOfMidas(data)
    ---@type HandOfMidasInBound
    local server = zg.playerData:GetMethod(PlayerDataMethod.HAND_OF_MIDAS)
    if server == nil then
        XDebug.Error("hand of midas data can't be nil")
    elseif (data == nil or data == 1) then
        if data == nil then
            server:SetTimeRefresh()
        end
        self.config.notiHandOfMidas:SetActive(server:CanClaim(1))
    end
end

function UIMainAreaView:CheckNotificationDefenseMode()
    self.mainAreaWorld:EnableFeatureNotify(FeatureType.DEFENSE, false)
    local result = function(isNotified)
        self.mainAreaWorld:EnableFeatureNotify(FeatureType.DEFENSE, isNotified)
    end
    NotificationCheckUtils.DefenseModeNotificationCheck(result)
end

function UIMainAreaView:CheckNotificationHeroLinking()
    self.config.notiHeroCollection:SetActive(NotificationCheckUtils.CheckNotiHeroLinking() or NotificationCheckUtils.CheckNotiTalent())
end

function UIMainAreaView:CheckSoftTutHero()
    local isActive = NotificationCheckUtils.IsCanShowSoftTutRegression()
            and NotificationFragment.IsCanShowSoftTutFragment() == false
            and (NotificationCheckUtils.IsCanShowSoftTutCampaign() == false)
            and (NotificationCheckUtils.IsCanShowSoftTutTower() == false)
    self.config.softTutHero:SetActive(isActive)
end
function UIMainAreaView:OnNotifiedQuestRequest()
    self:CheckNotificationQuest()
    if zg.netDispatcherMgr:ExistEvent(OpCode.QUEST_DATA_GET) == false then
        self:CheckOpenMiniQuestTree()
    end
end

function UIMainAreaView:CheckNotificationEventPopup()
    EventInBound.ValidateEventModel(function()
        --- @type EventInBound
        local eventInBound = zg.playerData:GetEvents()
        local hasNotification = eventInBound:HasNotificationEventPopup()
        self.mainAreaWorld:EnableMissionNotification(hasNotification)

        self:CheckOpeningEventServerOpen()
        self:CheckNotificationDungeon()
        self:CheckNotificationGuild()
        self:CheckNotificationArena()
        self:CheckEnableSaleOff()
        self:CheckEnableEventMidAutumn()
        self:CheckEnableEventHalloween()
        self:CheckEnableEventXmas()
        self:CheckEnableEventNewYear()
        self:CheckEnableEventBlackFriday()
        self:CheckEnableLunarEventNewYear()
        self:CheckEnableLunarPath()
        self:CheckEnableEventValentine()
        self:CheckEnableEventNewHeroSummon()
        self:CheckEnableEventNewHero()
        self:CheckEnableEventMergeServer()
        self:CheckEnableEventEasterEgg()
        self:CheckEnableEventBirthday()
        self:CheckEnableEventSkinBundle()
    end, nil, false, false)
end

function UIMainAreaView:CheckNotificationQuest()
    --- @type QuestDataInBound
    local questDataInBound = zg.playerData:GetQuest()
    if questDataInBound ~= nil then
        self.config.notiQuest:SetActive(questDataInBound.hasNotification)
    end
end

--- @return void
function UIMainAreaView:CheckNotificationTavern()
    local notify = false
    if ClientConfigUtils.CheckUnlockMajorFeatureAndNotification(FeatureType.TAVERN, false) == true then
        --- @type PlayerTavernDataInBound
        local data = zg.playerData:GetMethod(PlayerDataMethod.TAVERN)
        if data ~= nil then
            notify = data:IsContainQuestWaiting()
        end
    end
    self.mainAreaWorld:EnableFeatureNotify(FeatureType.TAVERN, notify)
end

--- @return void
function UIMainAreaView:CheckNotificationRaid()
    local notify = false
    if ClientConfigUtils.CheckUnlockMajorFeatureAndNotification(FeatureType.RAID, false) == true then
        notify = InventoryUtils.GetMoney(MoneyType.RAID_GOLD_TURN) > 0
                or InventoryUtils.GetMoney(MoneyType.RAID_MAGIC_POTION_TURN) > 0
                or InventoryUtils.GetMoney(MoneyType.RAID_HERO_FRAGMENT_TURN) > 0
    end
    self.mainAreaWorld:EnableFeatureNotify(FeatureType.RAID, notify)
end

--- @return void
function UIMainAreaView:CheckNotificationFragment(data)
    if data == nil
            or data.resourceType == ResourceType.HeroFragment
            or data.resourceType == ResourceType.ItemFragment then
        NotificationFragment.CheckNotificationFragment(self.config.notiInventory)
    end
end

--- @return void
function UIMainAreaView:CheckNotificationInventory()
    local checkNoti = function()
        NotificationCheckUtils.BoxNotificationCheck(self.config.notiInventory)
        if self.config.notiInventory.activeSelf == false then
            self:CheckNotificationFragment()
        end
    end
    local checkNotiSoftTutFragment = function()
        local isActive = NotificationFragment.IsCanShowSoftTutFragment()
                and (NotificationCheckUtils.IsCanShowSoftTutCampaign() == false)
                and (NotificationCheckUtils.IsCanShowSoftTutTower() == false)
        self.config.softTutInventory:SetActive(isActive)
    end
    checkNoti()
    checkNotiSoftTutFragment()
    if self.subscriptionNotiInventory == nil then
        self.subscriptionNotiInventory = RxMgr.changeResource:Subscribe(function(data)
            if (data.resourceType == ResourceType.Money and data.resourceId == MoneyType.EVENT_CHRISTMAS_BOX)
                    or (data.resourceType == ResourceType.HeroFragment) or (data.resourceType == ResourceType.ItemFragment) then
                checkNoti()
            end
            if (data.resourceType == ResourceType.HeroFragment) then
                checkNotiSoftTutFragment()
            end
        end)
    end
end

--- @return void
function UIMainAreaView:CheckNotificationModeShop()
    local methodList = { PlayerDataMethod.MARKET, PlayerDataMethod.ARENA_MARKET, PlayerDataMethod.ARENA_TEAM_MARKET }
    local isNotify = false
    --XDebug.Log("Check Mode Shop Count: " .. #methodList)
    for i, v in ipairs(methodList) do
        --XDebug.Log("Check Mode Shop: " .. tostring(v))
        local notify = NotificationCheckUtils.ShopCheckNotification(v)
        if notify then
            isNotify = notify
        end
    end
    self.mainAreaWorld:EnableFeatureNotify(FeatureType.BLACK_MARKET, isNotify)
end

--- @return void
function UIMainAreaView:CheckNotificationCampaign()
    ---@type CampaignData
    local campaignData = zg.playerData:GetCampaignData()
    if campaignData:ValidateStageIdle() then
        local timeNoti = campaignData:GetTimeToMaxIdle()
        if ClientConfigUtils.CheckUnlockMinorFeatureAndNotification(MinorFeatureType.CAMPAIGN_AUTO_TRAIN, false) then
            timeNoti = math.min(timeNoti, campaignData:GetTimeFinishTraining())
        end
        if timeNoti > 0 then
            self.mainAreaWorld:EnableFeatureNotify(FeatureType.CAMPAIGN, false)
            self.coroutineNotiCampaign = Coroutine.start(function()
                coroutine.waitforseconds(timeNoti)
                self.mainAreaWorld:EnableFeatureNotify(FeatureType.CAMPAIGN, true)
            end)
        else
            self.mainAreaWorld:EnableFeatureNotify(FeatureType.CAMPAIGN, true)
        end
    else
        self.mainAreaWorld:EnableFeatureNotify(FeatureType.CAMPAIGN, false)
    end
end

--- @return void
function UIMainAreaView:RemoveCheckNotificationCampaign()
    if self.coroutineNotiCampaign ~= nil then
        Coroutine.stop(self.coroutineNotiCampaign)
        self.coroutineNotiCampaign = nil
    end
end

--- @return void
function UIMainAreaView:CheckNotificationSummon()
    self.mainAreaWorld:EnableFeatureNotify(FeatureType.SUMMON, false)

    --- @type HeroSummonInBound
    local server = zg.playerData:GetMethod(PlayerDataMethod.SUMMON)
    local timeFreeBasic = server:GetTimeFreeSummon(SummonType.Basic)
    local timeFreeHeroic = server:GetTimeFreeSummon(SummonType.Heroic)

    local timeNoti = math.min(timeFreeBasic, timeFreeHeroic)
    if timeNoti <= 0 then
        self.mainAreaWorld:EnableFeatureNotify(FeatureType.SUMMON, true)
        return
    else
        local eventRateUp = zg.playerData:GetEvents():GetEvent(EventTimeType.EVENT_RATE_UP)
        local time = zg.playerData.remoteConfig.lastTimeOpenRateUp
        if eventRateUp ~= nil and eventRateUp:IsOpening() then
            local canNoti = time == nil or eventRateUp.timeData.startTime > time
            self.mainAreaWorld:EnableFeatureNotify(FeatureType.SUMMON, canNoti)
            return
        end
        self.coroutineNotiSummon = Coroutine.start(function()
            coroutine.waitforseconds(timeNoti)
            self.mainAreaWorld:EnableFeatureNotify(FeatureType.SUMMON, true)
        end)
    end
end

--- @return void
function UIMainAreaView:CheckNotificationArena()
    require("lua.client.scene.ui.notification.NotificationArena")
    require("lua.client.scene.ui.notification.NotificationArenaTeam")
    self.mainAreaWorld:EnableFeatureNotify(FeatureType.ARENA, NotificationArena.IsNotification() or NotificationArenaTeam.IsNotification())
    --self.mainAreaWorld:CheckArenaSeason()
end

--- @return void
function UIMainAreaView:CheckEnableSaleOff()
    self.config.tagSale:SetActive(false)
    local eventInBound = zg.playerData:GetEvents()
    if eventInBound ~= nil then
        --- @type EventSaleOffModel
        local eventSaleOffModel = eventInBound:GetEvent(EventTimeType.EVENT_SALE_OFF)
        if eventSaleOffModel ~= nil then
            local isOpening = eventSaleOffModel:IsOpening()
            self.config.tagSale:SetActive(isOpening)
            if isOpening then
                local onUpdate = function(timeRefresh)
                    self.config.textSaleOffTimer.text = TimeUtils.GetDeltaTime(timeRefresh)
                    if timeRefresh < 0 then
                        self.config.tagSale:SetActive(false)
                    end
                end
                eventSaleOffModel:StartRefreshTime(onUpdate)
            end
        end
    end
end

function UIMainAreaView:CheckEnableEventMidAutumn()
    --- @type EventMidAutumnModel
    local eventMidAutumnModel = zg.playerData:GetEvents():GetEvent(EventTimeType.EVENT_MID_AUTUMN)
    local isOpening = eventMidAutumnModel ~= nil and eventMidAutumnModel.timeData:IsOpening()
    self.config.buttonMidAutumn.gameObject:SetActive(isOpening)
    if isOpening then
        self.config.notifyMidAutumn:SetActive(eventMidAutumnModel:HasNotification())
    end
end
function UIMainAreaView:CheckEnableEventHalloween()
    ----- @type EventHalloweenModel
    local eventHalloweenModel = zg.playerData:GetEvents():GetEvent(EventTimeType.EVENT_HALLOWEEN)
    local isOpening = eventHalloweenModel ~= nil and eventHalloweenModel.timeData:IsOpening()
    self.config.buttonHalloween.gameObject:SetActive(isOpening)
    if isOpening then
        self.config.notifyHalloween:SetActive(eventHalloweenModel:HasNotification())
    end
end

function UIMainAreaView:CheckEnableEventXmas()
    ----- @type EventXmasModel
    local eventModel = zg.playerData:GetEvents():GetEvent(EventTimeType.EVENT_XMAS)
    local isOpening = eventModel ~= nil and eventModel.timeData:IsOpening()
    self.config.buttonXmas.gameObject:SetActive(isOpening)
    if isOpening then
        self.config.notifyXmas:SetActive(eventModel:HasNotification())
    end
end

function UIMainAreaView:CheckEnableEventNewYear()
    ----- @type EventNewYearModel
    local eventModel = zg.playerData:GetEvents():GetEvent(EventTimeType.EVENT_NEW_YEAR)
    local isOpening = eventModel ~= nil and eventModel.timeData:IsOpening()
    local isValid = eventModel ~= nil and eventModel:IsValidCardDuration()
    self.config.buttonNewYear.gameObject:SetActive(isOpening or isValid)
    if isOpening then
        self.config.notifyNewYear:SetActive(eventModel:HasNotification())
    end
end

function UIMainAreaView:CheckEnableLunarEventNewYear()
    ----- @type EventLunarNewYearModel
    local eventModel = zg.playerData:GetEvents():GetEvent(EventTimeType.EVENT_LUNAR_NEW_YEAR)
    local isOpening = eventModel ~= nil and eventModel.timeData:IsOpening()
    self.config.buttonLunarNewYear.gameObject:SetActive(isOpening)
    if isOpening then
        self.config.notifyLunarNewYear.gameObject:SetActive(eventModel:HasNotification())
    end
end

function UIMainAreaView:CheckEnableLunarPath()
    --- @type EventLunarPathModel
    local eventModel = zg.playerData:GetEvents():GetEvent(EventTimeType.EVENT_LUNAR_PATH)
    local isOpening = eventModel ~= nil and eventModel.timeData:IsOpening()
    self.config.buttonLunarPath.gameObject:SetActive(isOpening)
    if isOpening then
        self.config.notifyLunarPath.gameObject:SetActive(eventModel:HasNotification())
    end
end

function UIMainAreaView:CheckEnableEventValentine()
    --- @type EventValentineModel
    local eventModel = zg.playerData:GetEvents():GetEvent(EventTimeType.EVENT_VALENTINE)
    local isOpening = eventModel ~= nil and eventModel.timeData:IsOpening()
    self.config.buttonValentine.gameObject:SetActive(isOpening)
    if isOpening then
        self.config.notifyValentine.gameObject:SetActive(eventModel:HasNotification())
    end
end

function UIMainAreaView:CheckEnableEventNewHeroSummon()
    --- @type EventNewHeroSummonModel
    local eventModel = zg.playerData:GetEvents():GetEvent(EventTimeType.EVENT_NEW_HERO_SUMMON)
    local isOpening = eventModel ~= nil and eventModel.timeData:IsOpening()
    self.config.buttonEventNewHeroSummon.gameObject:SetActive(isOpening)
    if isOpening then
        self.config.notifyEventNewHeroSummon.gameObject:SetActive(eventModel:HasNotification())
        self.config.iconNewHeroSummon.sprite = ResourceLoadUtils.LoadSpriteFromAtlas("IconEventNewHeroSummon", eventModel.timeData.dataId)
        self.config.iconNewHeroSummon:SetNativeSize()
    end
end

function UIMainAreaView:CheckEnableEventNewHero()
    local eventInBound = zg.playerData:GetEvents()
    local isOpeningEventNewHero = eventInBound:IsOpeningEventNewHero()
    self.config.buttonEventNewHero.gameObject:SetActive(isOpeningEventNewHero)
    if isOpeningEventNewHero then
        self.config.notifyNewHero.gameObject:SetActive(eventInBound:HasNotificationEventNewHero())
        --- @type EventNewHeroSummonModel
        local eventModel = zg.playerData:GetEvents():GetEvent(EventTimeType.EVENT_NEW_HERO_SUMMON)
        if eventModel ~= nil and eventModel:IsOpening() then
            self.config.iconEventNewHero.sprite = ResourceLoadUtils.LoadSpriteFromAtlas("IconEventNewHero", eventModel.timeData.dataId)
            self.config.iconEventNewHero:SetNativeSize()
        else
            eventModel = zg.playerData:GetEvents():GetEvent(EventTimeType.EVENT_NEW_HERO_BOSS_LEADER_BOARD)
            local isOpening = eventModel ~= nil and eventModel.timeData:IsOpening()
            if isOpening then
                self.config.buttonEventNewHero.gameObject:SetActive(isOpening)
                self.config.notifyNewHero.gameObject:SetActive(eventModel:HasNotification())

                self.config.iconEventNewHero.sprite = ResourceLoadUtils.LoadSpriteFromAtlas("IconEventNewHeroSummon", eventModel.timeData.dataId)
                self.config.iconEventNewHero:SetNativeSize()
            end
        end
    end
end

function UIMainAreaView:CheckEnableEventBlackFriday()
    --- @type EventBlackFridayModel
    local eventBlackFridayModel = zg.playerData:GetEvents():GetEvent(EventTimeType.EVENT_BLACK_FRIDAY)
    local isOpening = eventBlackFridayModel ~= nil and eventBlackFridayModel.timeData:IsOpening()
    self.config.buttonBlackFriday.gameObject:SetActive(isOpening)
    if isOpening then
        self.config.notifyBlackFriday:SetActive(eventBlackFridayModel:HasNotification())
    end
end

function UIMainAreaView:CheckEnableEventMergeServer()
    --- @type EventMergeServerModel
    local eventModel = zg.playerData:GetEvents():GetEvent(EventTimeType.EVENT_MERGE_SERVER)
    local isOpening = eventModel ~= nil and eventModel.timeData:IsOpening()
    self.config.buttonEventMergeServer.gameObject:SetActive(isOpening)
    if isOpening then
        self.config.notifyMergeServer.gameObject:SetActive(eventModel:HasNotification())
    end
end

function UIMainAreaView:CheckEnableEventEasterEgg()
    --- @type EventEasterEggModel
    local eventModel = zg.playerData:GetEvents():GetEvent(EventTimeType.EVENT_EASTER_EGG)
    local isOpening = eventModel ~= nil and eventModel.timeData:IsOpening()
    self.config.buttonEventEasterEgg.gameObject:SetActive(isOpening)
    if isOpening then
        self.config.notifyEventEasterEgg.gameObject:SetActive(eventModel:HasNotification())
    end
end

function UIMainAreaView:CheckEnableEventBirthday()
    --- @type EventBirthdayModel
    local eventModel = zg.playerData:GetEvents():GetEvent(EventTimeType.EVENT_BIRTHDAY)
    local isOpening = eventModel ~= nil and eventModel.timeData:IsOpening()
    self.config.buttonBirthday.gameObject:SetActive(isOpening)
    if isOpening then
        self.config.notifyBirthday.gameObject:SetActive(eventModel:HasNotification())
    end
end

function UIMainAreaView:CheckEnableEventSkinBundle()
    --- @type EventSkinBundleModel
    local eventModel = zg.playerData:GetEvents():GetEvent(EventTimeType.EVENT_SKIN_BUNDLE)
    local isOpening = eventModel ~= nil and eventModel.timeData:IsOpening()
    self.config.buttonSkinBundle.gameObject:SetActive(isOpening)
    if isOpening then
        self.config.notifySkinBundle.gameObject:SetActive(eventModel:HasNotification())
    end
end

function UIMainAreaView:CheckEnableEventWelcomeBack()
    WelcomeBackInBound.Validate(function()
        --- @type WelcomeBackInBound
        local welcomeBackInBound = zg.playerData:GetMethod(PlayerDataMethod.COMEBACK)
        if welcomeBackInBound == nil then
            self.config.buttonWelcomeBack.gameObject:SetActive(false)
            return
        end
        self.config.buttonWelcomeBack.gameObject:SetActive(welcomeBackInBound.isInComingBackEvent)
        if welcomeBackInBound.isInComingBackEvent then
            self.config.notifyWelcomeBack.gameObject:SetActive(welcomeBackInBound:HasNotification())
        end
    end)
end

--- @return void
function UIMainAreaView:RemoveCheckNotificationSummon()
    if self.coroutineNotiSummon ~= nil then
        Coroutine.stop(self.coroutineNotiSummon)
        self.coroutineNotiSummon = nil
    end
end

--- @return void
function UIMainAreaView:RemoveCheckNotificationEventServerOpen()
    if self.subscriptionQuestServerOpenComplete ~= nil then
        self.subscriptionQuestServerOpenComplete:Unsubscribe()
        self.subscriptionQuestServerOpenComplete = nil
    end
end

function UIMainAreaView:CheckNotificationDungeon()
    self.mainAreaWorld:EnableFeatureNotify(FeatureType.DUNGEON, false)
    if ClientConfigUtils.CheckUnlockMajorFeatureAndNotification(FeatureType.DUNGEON, false) then
        local getDungeonCheckInOpen = Job(function(onSuccess, onFailed)
            --- @type EventInBound
            local eventInBound = zg.playerData:GetEvents()
            --- @return EventPopupModel
            local dungeonTime = eventInBound:GetEvent(EventTimeType.DUNGEON)
            --- @type DungeonInBound
            local dungeonInBound = zg.playerData:GetMethod(PlayerDataMethod.DUNGEON)
            if dungeonInBound ~= nil and dungeonTime.timeData.season ~= dungeonInBound.dungeonCheckInOpenSeason then
                DungeonInBound.GetDungeonCheckInOpen(onSuccess, onFailed)
            else
                onSuccess()
            end
        end)

        local checkNotify = function()
            --- @type DungeonInBound
            local dungeonInBound = zg.playerData:GetMethod(PlayerDataMethod.DUNGEON)
            ---@type EventPopupModel
            local eventPopupModel = zg.playerData:GetEvents():GetEvent(EventTimeType.DUNGEON)
            if eventPopupModel:IsOpening() == true then
                if dungeonInBound.bindingHeroList:Count() == 0
                        and dungeonInBound.dungeonCheckInOpenSeason ~= eventPopupModel.timeData.season then
                    self.mainAreaWorld:EnableFeatureNotify(FeatureType.DUNGEON, true)
                end
            end
        end
        --- @type Job
        local jobMultiple = getDungeonCheckInOpen
        jobMultiple:Complete(checkNotify)
    end
end

--- @return void
function UIMainAreaView:RemoveCheckNotificationDungeon()
    if self.coroutineNotiSummon ~= nil then
        Coroutine.stop(self.coroutineNotiSummon)
        self.coroutineNotiSummon = nil
    end
end

--- @return void
function UIMainAreaView:CheckRename()
    self.config.textName.text = zg.playerData:GetMethod(PlayerDataMethod.BASIC_INFO).name
end

function UIMainAreaView:_InitButtonListener()
    self.config.cashShop.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        self:OnClickCashShop()
    end)
    self.config.dailyCheckin.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        TrackingUtils.AddFireBaseClickMainArea(FBEvents.MAIN_FEATURES, "daily_checkin")
        UIBaseView.CheckBlurMain(true, true, function()
            PopupMgr.ShowPopup(UIPopupName.UIDailyReward)
        end)
    end)
    self.config.iconSetting.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        self:OnClickSetting()
    end)
    self.config.heroList.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        FeatureMapping.GoToFeature(FeatureType.HERO_LIST, true)
    end)
    self.config.handOfMidas.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        FeatureMapping.GoToFeature(FeatureType.HAND_OF_MIDAS, true)
    end)
    self.config.inventory.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        FeatureMapping.GoToFeature(FeatureType.INVENTORY, true)
    end)
    self.config.mastery.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        FeatureMapping.GoToFeature(FeatureType.MASTERY, true)
    end)
    self.config.summoner.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        FeatureMapping.GoToFeature(FeatureType.SUMMONER, true)
    end)
    self.config.raiseLevel.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        FeatureMapping.GoToFeature(FeatureType.RAISE_LEVEL, true)
    end)
    self.config.quest.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        self:_OnClickShowQuest()
    end)
    self.config.buttonMidAutumn.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        self:OnClickEventMidAutumn()
    end)
    self.config.buttonHalloween.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        self:OnClickHalloween()
    end)
    self.config.buttonXmas.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        self:OnClickXmas()
    end)
    self.config.buttonNewYear.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        self:OnClickNewYear()
    end)
    self.config.buttonLunarNewYear.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        self:OnClickLunarNewYear()
    end)
    self.config.buttonBlackFriday.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        self:OnClickBlackFriday()
    end)
    self.config.trialMonthlyCard.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        self:OnClickTrialMonthlyCard()
    end)
    self.config.flashSale.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        self:OnClickFlashSale(function()
            PopupMgr.ShowAndHidePopup(UIPopupName.UIMainArea, nil, UIPopupName.UIHiddenDeal)
        end)
    end)
    self.config.firstPurchase.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        self:OnClickFirstPurchase(function()
            PopupMgr.ShowAndHidePopup(UIPopupName.UIMainArea, nil, UIPopupName.UIFirstPurchase)
        end)
    end)
    self.config.buttonStarterPack.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        self:OnClickStarterPack(function()
            PopupMgr.ShowAndHidePopup(UIPopupName.UIMainArea, nil, UIPopupName.UIStarterPack)
        end)
    end)
    self.config.videoRewarded.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        self:OnClickVideoRewarded()
    end)
    self.config.mail.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        FeatureMapping.GoToFeature(FeatureType.MAIL, true)
    end)
    self.config.friend.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        FeatureMapping.GoToFeature(FeatureType.FRIENDS, true)
    end)
    self.config.iconChat.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        self:OnClickChat()
    end)
    self.config.iconCheat.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        PopupMgr.ShowPopup(UIPopupName.UIPopupFakeData)
    end)
    self.config.firstTimeReward.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        self:OnClickFirstTimeReward()
    end)
    self.config.eventServerOpen.transform:SetAsLastSibling()
    self.config.eventServerOpen.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        self:OnClickEventServerOpen()
    end)
    self.config.buttonLunarPath.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        self:OnClickLunarPath()
    end)
    self.config.buttonValentine.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        self:OnClickValentine()
    end)
    self.config.buttonEventNewHeroSummon.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        FeatureMapping.GoToFeature(FeatureType.SUMMON, true)
    end)
    if self.config.buttonSpecialOffer then
        self.config.buttonSpecialOffer.onClick:AddListener(function()
            zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
            self:OnClickSpecialOffer(function()
                PopupMgr.ShowAndHidePopup(UIPopupName.UIMainArea, nil, UIPopupName.UISpecialOfferShop)
            end)
        end)
    end
    if self.config.buttonLeft ~= nil then
        self.config.buttonLeft.onClick:AddListener(function()
            self.mainAreaWorld:ClampScrollPosition(U_Vector3.right * 1000000)
        end)
    end
    if self.config.buttonRight ~= nil then
        self.config.buttonRight.onClick:AddListener(function()
            self.mainAreaWorld:ClampScrollPosition(U_Vector3.left * 1000000)
        end)
    end
    self.config.buttonEventNewHero.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        self:OnClickEventNewHero()
    end)
    self.config.buttonEventMergeServer.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        self:OnClickEventMergeServer()
    end)
    self.config.buttonEventEasterEgg.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        self:OnClickEventEasterEgg()
    end)
    self.config.buttonWelcomeBack.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        self:OnClickWelcomeBack()
    end)
    self.config.buttonBirthday.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        self:OnClickBirthday()
    end)
    self.config.buttonSkinBundle.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        self:OnClickEventSkinBundle()
    end)
end

function UIMainAreaView:OnClickChat()
    local show = function()
        PopupMgr.ShowPopup(UIPopupName.UIChat, ChatLayoutType.MAIN_MENU)
    end
    ChatData.OnValidateMainMenuChat(show)
end

function UIMainAreaView:OnClickCashShop()
    TrackingUtils.AddFireBaseClickMainArea(FBEvents.MAIN_FEATURES, "iap_shop")
    PopupMgr.ShowAndHidePopup(UIPopupName.UIIapShop, nil, UIPopupName.UIMainArea)
end

function UIMainAreaView:OnClickEventMidAutumn()
    local openEvent = function()
        --- @type EventMidAutumnModel
        local eventMidAutumnModel = zg.playerData:GetEvents():GetEvent(EventTimeType.EVENT_MID_AUTUMN)
        if eventMidAutumnModel:IsOpening() then
            PopupMgr.ShowAndHidePopup(UIPopupName.UIEventMidAutumn, nil, UIPopupName.UIMainArea)
        else
            self.config.buttonMidAutumn.gameObject:SetActive(false)
            zg.audioMgr:PlaySfxUi(SfxUiType.DENIED)
            SmartPoolUtils.ShowShortNotification(LanguageUtils.LocalizeCommon("event_has_ended"))
        end
    end
    EventInBound.ValidateEventModel(openEvent)
end

function UIMainAreaView:OnClickHalloween()
    local openEvent = function()
        --- @type EventHalloweenModel
        local eventMidAutumnModel = zg.playerData:GetEvents():GetEvent(EventTimeType.EVENT_HALLOWEEN)
        if eventMidAutumnModel:IsOpening() then
            PopupMgr.ShowAndHidePopup(UIPopupName.UIEventHalloween, nil, UIPopupName.UIMainArea)
        else
            self.config.buttonHalloween.gameObject:SetActive(false)
            zg.audioMgr:PlaySfxUi(SfxUiType.DENIED)
            SmartPoolUtils.ShowShortNotification(LanguageUtils.LocalizeCommon("event_has_ended"))
        end
    end
    EventInBound.ValidateEventModel(openEvent)
end

function UIMainAreaView:OnClickXmas()
    local openEvent = function()
        --- @type EventXmasModel
        local eventModel = zg.playerData:GetEvents():GetEvent(EventTimeType.EVENT_XMAS)
        if eventModel:IsOpening() then
            PopupMgr.ShowAndHidePopup(UIPopupName.UIEventXmas, nil, UIPopupName.UIMainArea)
        else
            self.config.buttonXmas.gameObject:SetActive(false)
            zg.audioMgr:PlaySfxUi(SfxUiType.DENIED)
            SmartPoolUtils.ShowShortNotification(LanguageUtils.LocalizeCommon("event_has_ended"))
        end
    end
    EventInBound.ValidateEventModel(openEvent)
end

function UIMainAreaView:OnClickNewYear()
    local openEvent = function()
        --- @type EventNewYearModel
        local eventModel = zg.playerData:GetEvents():GetEvent(EventTimeType.EVENT_NEW_YEAR)
        if eventModel ~= nil and eventModel:IsOpening() then
            PopupMgr.ShowAndHidePopup(UIPopupName.UIEventNewYear, nil, UIPopupName.UIMainArea)
        else
            local isValid = eventModel:IsValidCardDuration()
            self.config.buttonNewYear.gameObject:SetActive(isValid)
            if isValid then
                PopupMgr.ShowAndHidePopup(UIPopupName.UIEventNewYear, nil, UIPopupName.UIMainArea)
            else
                zg.audioMgr:PlaySfxUi(SfxUiType.DENIED)
                SmartPoolUtils.ShowShortNotification(LanguageUtils.LocalizeCommon("event_has_ended"))
            end
        end
    end
    EventInBound.ValidateEventModel(openEvent)
end

function UIMainAreaView:OnClickLunarNewYear()
    EventInBound.ValidateEventModel(function()
        PopupMgr.ShowAndHidePopup(UIPopupName.UIEventLunarNewYear, nil, UIPopupName.UIMainArea)
    end)
end

function UIMainAreaView:OnClickBlackFriday()
    local openEvent = function()
        --- @type EventHalloweenModel
        local eventBlackFriday = zg.playerData:GetEvents():GetEvent(EventTimeType.EVENT_BLACK_FRIDAY)
        if eventBlackFriday:IsOpening() then
            UIBaseView.CheckBlurMain(true, true, function()
                PopupMgr.ShowPopup(UIPopupName.UIEventBlackFriday)
            end)
        else
            self.config.buttonBlackFriday.gameObject:SetActive(false)
            zg.audioMgr:PlaySfxUi(SfxUiType.DENIED)
            SmartPoolUtils.ShowShortNotification(LanguageUtils.LocalizeCommon("event_has_ended"))
        end
    end
    EventInBound.ValidateEventModel(openEvent)
end

function UIMainAreaView:OnClickMission()
    local validateEventModel = Job(function(onSuccess, onFailed)
        EventInBound.ValidateEventModel(onSuccess)
    end)
    local validateEventCommunity = Job(function(onSuccess, onFailed)
        EventCommunityInBound.ValidateData(onSuccess)
    end)
    local doneValidate = function()
        UIBaseView.CheckBlurMain(true, true, function()
            TrackingUtils.AddFireBaseClickMainArea(FBEvents.MAIN_FEATURES, "event")
            PopupMgr.ShowPopup(UIPopupName.UIEvent)
        end)
    end
    --- @type Job
    local jobMultiple = validateEventModel + validateEventCommunity
    jobMultiple:Complete(doneValidate)
end

function UIMainAreaView:OnClickFirstPurchase(callbackClose)
    local eventHasEnded = function()
        SmartPoolUtils.ShowShortNotification(LanguageUtils.LocalizeCommon("event_has_ended"))
        self.config.firstPurchase.gameObject:SetActive(false)
    end
    --- @type ProgressPackCollection
    local progressPackCollection = zg.playerData:GetMethod(PlayerDataMethod.IAP).progressPackData
    local listGroupProductConfig = progressPackCollection:GetListActiveGroupByViewType(PackViewType.FIRST_TIME_PACK)
    if listGroupProductConfig:Count() > 0 then
        --- @type GroupProductConfig
        local groupProductConfig = listGroupProductConfig:Get(1)
        local groupId = groupProductConfig.groupId
        local groupCreatedTime = progressPackCollection.activeProgressPackDict:Get(groupId)
        if (groupProductConfig.duration - (zg.timeMgr:GetServerTime() - groupCreatedTime)) > 0 then
            TrackingUtils.AddFireBaseClickButtonEvent(FBEvents.FIRST_PURCHASE, "true")
            UIBaseView.CheckBlurMain(true, true, function()
                PopupMgr.ShowPopup(UIPopupName.UIFirstPurchase, { ["callbackClose"] = callbackClose })
            end)
        else
            eventHasEnded()
        end
    else
        eventHasEnded()
    end
end

function UIMainAreaView:OnClickFirstPurchaseFake(id, callbackClose)
    require "lua.client.core.network.fake.FakeDataRequest"
    local touchObject = TouchUtils.Spawn("UIMainAreaView:OnClickFirstPurchaseFake")
    FakeDataRequest.FakeFirstTimePurchase(id, function()
        self:OnClickFirstPurchase(callbackClose)
        touchObject:Enable()
    end)
end

function UIMainAreaView:OnClickFlashSale(callbackClose)
    local eventHasEnded = function()
        SmartPoolUtils.ShowShortNotification(LanguageUtils.LocalizeCommon("event_has_ended"))
        self.config.flashSale.gameObject:SetActive(false)
    end
    --- @type IapDataInBound
    local iapDataInBound = zg.playerData:GetMethod(PlayerDataMethod.IAP)
    --- @type ProgressPackCollection
    local progressPackCollection = iapDataInBound.progressPackData
    local listGroupProductConfig = progressPackCollection:GetListActiveGroupByViewType(PackViewType.FLASH_SALE_PACK)
    if listGroupProductConfig:Count() > 0 then
        --- @type GroupProductConfig
        local groupProductConfig = listGroupProductConfig:Get(1)
        local groupId = groupProductConfig.groupId
        local groupCreatedTime = progressPackCollection.activeProgressPackDict:Get(groupId)
        if (groupProductConfig.duration - (zg.timeMgr:GetServerTime() - groupCreatedTime)) > 0 then
            TrackingUtils.AddFireBaseClickButtonEvent(FBEvents.FLASH_SALE, "true")
            UIBaseView.CheckBlurMain(true, true, function()
                PopupMgr.ShowPopup(UIPopupName.UIHiddenDeal, { ["callbackClose"] = callbackClose })
            end)
        else
            eventHasEnded()
        end
    else
        eventHasEnded()
    end
end

function UIMainAreaView:OnClickSpecialOffer(callbackClose)
    local eventHasEnded = function()
        SmartPoolUtils.ShowShortNotification(LanguageUtils.LocalizeCommon("event_has_ended"))
        self.config.buttonSpecialOffer.gameObject:SetActive(false)
    end
    --- @type IapDataInBound
    local iapDataInBound = zg.playerData:GetMethod(PlayerDataMethod.IAP)
    --- @type ProgressPackCollection
    local progressPackCollection = iapDataInBound.progressPackData
    local listGroupProductConfig = progressPackCollection:GetListActiveGroupByViewType(PackViewType.MASTER_BLACKSMITH)
    if listGroupProductConfig:Count() > 0 then
        local hasAvailableGroup = true
        for i = 1, listGroupProductConfig:Count() do
            --- @type GroupProductConfig
            local groupProductConfig = listGroupProductConfig:Get(i)
            local groupId = groupProductConfig.groupId
            local groupCreatedTime = progressPackCollection.activeProgressPackDict:Get(groupId)
            if (groupProductConfig.duration - (zg.timeMgr:GetServerTime() - groupCreatedTime)) > 0 then
                UIBaseView.CheckBlurMain(true, true, function()
                    PopupMgr.ShowPopup(UIPopupName.UISpecialOfferShop, { ["callbackClose"] = callbackClose })
                end)
                break
            else
                hasAvailableGroup = false
            end
        end
        if hasAvailableGroup == false then
            eventHasEnded()
        end
    else
        eventHasEnded()
    end
end

function UIMainAreaView:OnClickStarterPack(callbackClose)
    local eventHasEnded = function()
        SmartPoolUtils.ShowShortNotification(LanguageUtils.LocalizeCommon("event_has_ended"))
        self.config.buttonStarterPack.gameObject:SetActive(false)
    end
    --- @type IapDataInBound
    local iapDataInBound = zg.playerData:GetMethod(PlayerDataMethod.IAP)
    --- @type ProgressPackCollection
    local progressPackCollection = iapDataInBound.progressPackData
    local listGroupProductConfig = progressPackCollection:GetListActiveGroupByViewType(PackViewType.STARTER_PACK)
    if listGroupProductConfig:Count() > 0 then
        --- @type GroupProductConfig
        local groupProductConfig = listGroupProductConfig:Get(1)
        local groupId = groupProductConfig.groupId
        local groupCreatedTime = progressPackCollection.activeProgressPackDict:Get(groupId)
        if (groupProductConfig.duration - (zg.timeMgr:GetServerTime() - groupCreatedTime)) > 0 then
            TrackingUtils.AddFireBaseClickButtonEvent(FBEvents.FIRST_PURCHASE, "true")
            UIBaseView.CheckBlurMain(true, true, function()
                PopupMgr.ShowPopup(UIPopupName.UIStarterPack, { ["callbackClose"] = callbackClose })
            end)
        else
            eventHasEnded()
        end
    else
        eventHasEnded()
    end
end

function UIMainAreaView:OnClickVideoRewarded()
    IapDataInBound.Validate(VideoRewardedUtils.Request)
end

function UIMainAreaView:OnClickTrialMonthlyCard()
    UIBaseView.CheckBlurMain(true, true, function()
        PopupMgr.ShowPopup(UIPopupName.UITrialMonthlyCard, { ["callbackClose"] = function()
            PopupMgr.ShowAndHidePopup(UIPopupName.UIMainArea, nil, UIPopupName.UITrialMonthlyCard)
        end })
    end)
end

function UIMainAreaView:ShowAvatar()
    if self.iconVip == nil then
        self.iconVip = SmartPool.Instance:SpawnLuaUIPool(UIPoolType.VipIconView, self.config.vipIconView)
        self.iconVip:AddListener(function()
            zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
            UIBaseView.CheckBlurMain(true, true, function()
                PopupMgr.ShowPopup(UIPopupName.UIUserProfile)
            end)
            zg.audioMgr:PlaySfxUi(SfxUiType.POPUP_OPEN)
        end)
    end

    --- @type BasicInfoInBound
    local inbound = zg.playerData:GetMethod(PlayerDataMethod.BASIC_INFO)
    if inbound == nil then
        XDebug.Error("basic info is nil")
    else
        self.iconVip:SetData(inbound.avatarId, inbound.level, inbound.borderId)
        self.config.textName.text = inbound.name
    end
end

function UIMainAreaView:_OnClickShowQuest()
    local openQuest = function()
        TrackingUtils.AddFireBaseClickMainArea(FBEvents.MAIN_FEATURES, "quest")
        UIBaseView.CheckBlurMain(true, true, function()
            PopupMgr.ShowPopup(UIPopupName.UIQuest)
        end)
    end
    QuestDataInBound.Validate(openQuest)
end

function UIMainAreaView:CheckNotificationChat()
    local chatData = zg.playerData:GetChatData()
    chatData.isHasNotifyMainMenu = false
    --- @param chatChanel ChatChanel
    --- @param lastMessageChannelReceived number
    for chatChanel, lastMessageChannelReceived in pairs(chatData.lastMessageChannelReceivedDict:GetItems()) do
        if ChatData.IsMainMenuChat(chatChanel) == true
                and ChatData.IsBlockChatChannel(chatChanel) == false
                and lastMessageChannelReceived > UIChatModel.GetLastTimeReadChannel(chatChanel) then
            chatData.isHasNotifyMainMenu = true
            break
        end
    end
    self.config.iconChatNew:SetActive(chatData.isHasNotifyMainMenu)

    --if chatDat.isHasNotifyMainMenu == false then
    --    ChatRequest.SubscribeChat()
    --end
end

--- @return void
---@param tutorial UITutorialView
---@param step number
function UIMainAreaView:ShowTutorial(tutorial, step)
    self:CheckFocusTutorial()
    if step == TutorialStep.SUMMON_CLICK or step == TutorialStep.CONTINUE_SUMMON then
        --self.mainAreaWorld:ClampCameraPosition(self.mainAreaWorld.config.summonCircle.transform.position.x)
        tutorial:ViewFocusCurrentTutorial(self.mainAreaWorld:GetButtonBuilding(FeatureType.SUMMON), 1, function()
            return self.mainAreaWorld:GetBuildingPositionOnUI(self.mainAreaWorld.config.summonCircle.transform)
        end, nil, TutorialHandType.CLICK)
    elseif step == TutorialStep.CAMPAIGN_CLICK then
        --self.mainAreaWorld:ClampCameraPosition(self.mainAreaWorld.config.campaign.transform.position.x)
        tutorial:ViewFocusCurrentTutorial(self.mainAreaWorld:GetButtonBuilding(FeatureType.CAMPAIGN), 1, function()
            return self.mainAreaWorld:GetBuildingPositionOnUI(self.mainAreaWorld.config.campaign.transform)
        end, nil, TutorialHandType.CLICK)
    elseif step == TutorialStep.BLACK_MARKET_CLICK then
        --self.mainAreaWorld:ClampCameraPosition(self.mainAreaWorld.config.blackmarket.transform.position.x)
        tutorial:ViewFocusCurrentTutorial(self.mainAreaWorld:GetButtonBuilding(FeatureType.BLACK_MARKET), 1, function()
            return self.mainAreaWorld:GetBuildingPositionOnUI(self.mainAreaWorld.config.blackmarket.transform)
        end, nil, TutorialHandType.CLICK)
    elseif step == TutorialStep.CLICK_BLACK_SMITH then
        --self.mainAreaWorld:ClampCameraPosition(self.mainAreaWorld.config.blacksmith.transform.position.x)
        tutorial:ViewFocusCurrentTutorial(self.mainAreaWorld:GetButtonBuilding(FeatureType.BLACK_SMITH), 1, function()
            return self.mainAreaWorld:GetBuildingPositionOnUI(self.mainAreaWorld.config.blacksmith.transform)
        end, nil, TutorialHandType.CLICK)
    elseif step == TutorialStep.CLICK_HERO_COLLECTION then
        tutorial:ViewFocusCurrentTutorial(self.config.heroList, 0.4, nil, nil, TutorialHandType.CLICK)
    elseif step == TutorialStep.CLICK_QUEST then
        tutorial:ViewFocusCurrentTutorial(self.config.quest, 0.5, nil, nil, TutorialHandType.CLICK)
    elseif step == TutorialStep.CLICK_SUMMONER then
        tutorial:ViewFocusCurrentTutorial(self.config.summoner, 0.4, nil, nil, TutorialHandType.CLICK)
    elseif step == TutorialStep.CLICK_INVENTORY then
        tutorial:ViewFocusCurrentTutorial(self.config.inventory, 0.4, nil, nil, TutorialHandType.CLICK)
    elseif step == TutorialStep.CLICK_RENAME then
        PopupMgr.ShowPopup(UIPopupName.UIRename, { ["notClose"] = true })
    elseif step == TutorialStep.CLICK_GO then
        zg.playerData:GetQuest().questTreeDataInBound.isCollapsed = false
        self.callbackDoneDataQuest = function()
            tutorial:ViewFocusCurrentTutorial(self.uiMiniQuestTreeView.config.buttonGo, 0.4, nil, nil, TutorialHandType.CLICK)
        end
    elseif step == TutorialStep.CLICK_QUEST_COMPLETE then
        zg.playerData:GetQuest().questTreeDataInBound.isCollapsed = false
        self.callbackDoneDataQuest = function()
            tutorial:ViewFocusCurrentTutorial(self.uiMiniQuestTreeView.config.buttonComplete, 0.4, nil, nil, TutorialHandType.CLICK)
        end
    end
end

--- @return void
function UIMainAreaView:CheckFocusTutorial()
    if UIBaseView.IsActiveTutorial() == true then
        local step = UIBaseView.tutorial.currentTutorial.tutorialStepData.step
        if step == TutorialStep.SUMMON_CLICK or step == TutorialStep.CONTINUE_SUMMON then
            self.mainAreaWorld:ClampCameraPosition(self.mainAreaWorld.config.summonCircle.transform.position.x)
        elseif step == TutorialStep.CAMPAIGN_CLICK then
            self.mainAreaWorld:ClampCameraPosition(self.mainAreaWorld.config.campaign.transform.position.x)
        elseif step == TutorialStep.BLACK_MARKET_CLICK then
            self.mainAreaWorld:ClampCameraPosition(self.mainAreaWorld.config.blackmarket.transform.position.x)
        elseif step == TutorialStep.CLICK_BLACK_SMITH then
            self.mainAreaWorld:ClampCameraPosition(self.mainAreaWorld.config.blacksmith.transform.position.x)
        end
    end
end

function UIMainAreaView:OnHideLoading()
    --self.config.anim:Play()
    if self.uiMiniQuestTreeView ~= nil
            and self.uiMiniQuestTreeView:IsActiveSelf() == true then
        self.uiMiniQuestTreeView:SetCollapseState(true)
    end
end

function UIMainAreaView:CheckShowFragment()
    self.config.notiInventory:SetActive(false)
end

function UIMainAreaView:CheckVisualFeatureStateUpdated()
    self.mainAreaWorld:CheckBuildingFeatureState()
end

function UIMainAreaView:CheckFeatureUnlockButton()
    local level = zg.playerData:GetMethod(PlayerDataMethod.BASIC_INFO).level
    if self.model.lastLevelCheck == level and self.model.lastCampaignStageCheck == zg.playerData:GetCampaignData().stageCurrent then
        return
    end
    self.config.inventory.gameObject:SetActive(ClientConfigUtils.CheckUnlockMajorFeatureAndNotification(FeatureType.INVENTORY, false))
    self.config.summoner.gameObject:SetActive(ClientConfigUtils.CheckUnlockMajorFeatureAndNotification(FeatureType.SUMMONER, false))

    self.config.raiseLevel.gameObject:SetActive(ClientConfigUtils.CheckUnlockMajorFeatureAndNotification(FeatureType.RAISE_LEVEL, false))

    self.config.mastery.gameObject:SetActive(ClientConfigUtils.CheckUnlockMajorFeatureAndNotification(FeatureType.MASTERY, false))
    self.config.friend.gameObject:SetActive(ClientConfigUtils.CheckUnlockMajorFeatureAndNotification(FeatureType.FRIENDS, false))
    self.config.handOfMidas.gameObject:SetActive(ClientConfigUtils.CheckUnlockMajorFeatureAndNotification(FeatureType.HAND_OF_MIDAS, false))

    self.model.lastLevelCheck = level
    self.model.lastCampaignStageCheck = zg.playerData:GetCampaignData().stageCurrent
end

--- @param data table
---{['resourceType'] = self.type, ['resourceId'] = resourceId, ['quantity'] = quantity, ['result'] = self._resourceDict:Get(resourceId)})
function UIMainAreaView:CheckNotificationOnChangeResource(data)
    if data.resourceType == ResourceType.Money then
        local moneyType = data.resourceId
        if moneyType == MoneyType.SUMMONER_ANCIENT_BOOK then
            self:CheckNotificationSummoner()
        elseif moneyType == MoneyType.ARENA_MARKET_UPGRADE_COIN or
                moneyType == MoneyType.BLACK_MARKET_UPGRADE_COIN then
            self:CheckNotificationModeShop()
        elseif moneyType == MoneyType.GUILD_MARKET_UPGRADE_COIN then
            self:CheckNotificationGuild()
        else
            -- dont support
        end
    end
end

function UIMainAreaView:CheckNotificationGuild()
    self.mainAreaWorld:EnableFeatureNotify(FeatureType.GUILD, false)
    local result = function(isNotified)
        self.mainAreaWorld:EnableFeatureNotify(FeatureType.GUILD, isNotified)
    end
    NotificationCheckUtils.CheckNotificationGuild(result)
end

function UIMainAreaView:CheckNotificationDomains()
    self.mainAreaWorld:EnableFeatureNotify(FeatureType.DOMAINS, false)
    local result = function(isNotified)
        self.mainAreaWorld:EnableFeatureNotify(FeatureType.DOMAINS, isNotified)
    end
    NotificationCheckUtils.CheckNotificationDomains(result)
end

function UIMainAreaView:CheckOpenMiniQuestTree(fixedCollapsed, doneCheckCallback)
    local openMiniQuestTree = function()
        --- @type QuestDataInBound
        local questDataInBound = zg.playerData:GetQuest()
        --- @type {questUnitInBound : QuestUnitInBound, onClaimSuccess, isCollapsed}
        local data = {}
        --- @type number
        local selectedQuestId = questDataInBound.questTreeDataInBound:SelectQuestTreeToShowOnMiniPanel()
        if (selectedQuestId ~= nil) then
            --- @param loadedQuestData QuestUnitInBound
            local onLoadSelectedQuestSuccess = function(loadedQuestData)
                data.questUnitInBound = loadedQuestData
                data.onClaimSuccess = function()
                    self:CheckOpenMiniQuestTree(false)
                end
                data.isCollapsed = fixedCollapsed
                self:_ShowUIMiniQuestTree(data)
                if doneCheckCallback ~= nil then
                    doneCheckCallback(data.questUnitInBound)
                end
            end
            QuestDataInBound.RequestSelectedQuestData(selectedQuestId, QuestDataType.QUEST_TREE,
                    questDataInBound.questTreeDataInBound:GetQuestElementConfig(selectedQuestId),
                    onLoadSelectedQuestSuccess)
        else
            if self.uiMiniQuestTreeView ~= nil then
                self.uiMiniQuestTreeView:Hide()
            end
        end
    end
    QuestDataInBound.Validate(openMiniQuestTree, false)
end

--- @param data {questUnitInBound : QuestUnitInBound, onClaimSuccess, isCollapsed}
function UIMainAreaView:_ShowUIMiniQuestTree(data)
    if self.uiMiniQuestTreeView == nil then
        self.uiMiniQuestTreeView = UIMiniQuestTreeView(self.config.popupMiniQuestTree)
    end
    self.uiMiniQuestTreeView:OnReadyShow(data)
end

function UIMainAreaView:CheckOpeningEventServerOpen()
    local eventData = zg.playerData:GetEvents():GetEvent(EventTimeType.EVENT_SERVER_OPEN)
    if eventData ~= nil and eventData.timeData:IsOpening() then
        self.config.eventServerOpen.gameObject:SetActive(true)
        self.timeServerOpen:StartTime(eventData.timeData.endTime - zg.timeMgr:GetServerTime())
        self.config.notiEventServerOpen:SetActive(false)
        local check = function()
            require "lua.client.scene.ui.notification.NotificationEventServerOpen"
            NotificationEventServerOpen.CheckNotificationEventServerOpen(function(noti)
                --XDebug.Log(noti)
                self.config.notiEventServerOpen:SetActive(noti)
                if noti == false then
                    --XDebug.Log("init self.subscriptionQuestServerOpenComplete")
                    if self.subscriptionQuestServerOpenComplete == nil then
                        self.subscriptionQuestServerOpenComplete = RxMgr.serverNotification:Filter(function(data)
                            return BitUtils.IsOn(data, ServerNotificationType.EVENT_COMPLETED)
                        end)                                            :Subscribe(function()
                            --XDebug.Log("ServerNotificationType.EVENT_COMPLETED self.config.notiEventServerOpen:SetActive(true)")
                            self.config.notiEventServerOpen:SetActive(true)
                        end)
                    end
                end
            end)
        end
        --- @type EventOpenServerInbound
        local eventOpenServerInbound = zg.playerData:GetEvents():GetEvent(EventTimeType.EVENT_SERVER_OPEN)
        if eventOpenServerInbound.hasQuestComplete == true then
            self.config.notiEventServerOpen:SetActive(true)
        else
            if eventOpenServerInbound.hasData == nil and UIBaseView.IsActiveTutorial() == false then
                eventOpenServerInbound:RequestEventData(function()
                    check()
                end)
            else
                check()
            end
        end
    else
        self.config.eventServerOpen.gameObject:SetActive(false)
    end
end

function UIMainAreaView:OnClickFirstTimeReward()
    UIBaseView.CheckBlurMain(true, true, function()
        PopupMgr.ShowPopup(UIPopupName.UIFirstTimeReward, { ["callbackClose"] = function()
            PopupMgr.ShowAndHidePopup(UIPopupName.UIMainArea, nil, UIPopupName.UIFirstTimeReward)
        end })
    end)
end

function UIMainAreaView:OnClickLunarPath()
    EventInBound.ValidateEventModel(function()
        PopupMgr.ShowAndHidePopup(UIPopupName.UIEventLunarPath, nil, UIPopupName.UIMainArea)
    end)
end

function UIMainAreaView:OnClickValentine()
    EventInBound.ValidateEventModel(function()
        PopupMgr.ShowAndHidePopup(UIPopupName.UIEventValentine, nil, UIPopupName.UIMainArea)
    end)
end

function UIMainAreaView:OnClickEventServerOpen()
    local eventData = zg.playerData:GetEvents():GetEvent(EventTimeType.EVENT_SERVER_OPEN)
    if eventData ~= nil and eventData:IsOpening() then
        TrackingUtils.AddFireBaseClickButtonEvent(FBEvents.SERVER_OPEN, "show")
        --- @type EventOpenServerInbound
        local eventOpenServerInbound = zg.playerData:GetEvents():GetEvent(EventTimeType.EVENT_SERVER_OPEN)
        local show = function()
            UIBaseView.CheckBlurMain(true, true, function()
                PopupMgr.ShowPopup(UIPopupName.UIEventServerOpen)
            end)
        end
        if eventOpenServerInbound.hasData == nil or eventOpenServerInbound.needRequest == true then
            eventOpenServerInbound:RequestEventData(function()
                show()
            end)
        else
            show()
        end
    end
end

function UIMainAreaView:OnClickSetting()
    ---@type AuthenticationInBound
    local authenticationInBound = zg.playerData:GetMethod(PlayerDataMethod.AUTHENTICATION)
    if authenticationInBound ~= nil and authenticationInBound.emailState ~= nil then
        UIBaseView.CheckBlurMain(true, true, function()
            PopupMgr.ShowPopup(UIPopupName.UIGeneralSetting)
        end)
    else
        AuthenticationInBound.Request(function()
            UIBaseView.CheckBlurMain(true, true, function()
                PopupMgr.ShowPopup(UIPopupName.UIGeneralSetting)
            end)
        end)
    end
end

function UIMainAreaView:CheckNotiBindingAccount()
    local campaignData = zg.playerData:GetCampaignData()
    ---@type AuthenticationInBound
    local authenticationInBound = zg.playerData:GetMethod(PlayerDataMethod.AUTHENTICATION)
    if campaignData.stageCurrent >= 102015
            and zg.playerData.remoteConfigAccount.notiBindAccount ~= true
            and authenticationInBound:IsAccountBinding() == false then
        zg.playerData.remoteConfigAccount.notiBindAccount = true
        zg.playerData:SaveRemoteConfigAccount()
        local canClose = false
        Coroutine.start(function()
            coroutine.waitforseconds(2)
            canClose = true
        end)
        PopupUtils.ShowPopupNotificationOneButton(LanguageUtils.LocalizeCommon("noti_binding_account"), function()
            self:OnClickSetting()
        end, nil, false, 2,
                "binding_account_now", true,
                function()
                    if canClose == true then
                        PopupMgr.HidePopup(UIPopupName.UIPopupNotification)
                    end
                end)
    end
end

function UIMainAreaView:CheckActiveFirstTimeRewardBtn()
    local setActiveFirstTimeReward = function(isActive)
        self.config.firstTimeReward.gameObject:SetActive(isActive)
    end
    local onHasServer = function()
        --- @type Number
        local transaction = TrackingUtils.server:GetTracking(FBProperties.IAP_COUNT)
        local isNonPaid = transaction:GetValue() == 0
        setActiveFirstTimeReward(isNonPaid)
        if isNonPaid then
            self.buyCompleteSub = RxMgr.buyCompleted:Subscribe(function()
                setActiveFirstTimeReward(false)
            end)
        end
    end
    setActiveFirstTimeReward(TrackingUtils.server ~= nil)
    if TrackingUtils.server ~= nil then
        onHasServer()
    elseif TrackingUtils.server == nil then
        ---@type Subscription
        local subscription
        subscription = RxUtils.WaitOfCode(OpCode.TRACKING_INFO_GET)
                              :Subscribe(function()
            onHasServer()
            subscription:Unsubscribe()
        end)
    end
end

function UIMainAreaView:OnDestroy()
    U_Object.Destroy(self.mainAreaWorld.gameObject)
end

function UIMainAreaView:ShowAppleReviewIap()
    self.config.firstPurchase.gameObject:SetActive(false)
    self.config.firstPurchaseFake1.gameObject:SetActive(true)
    self.config.firstPurchaseFake2.gameObject:SetActive(true)
    self.config.firstPurchaseFake3.gameObject:SetActive(true)
    if zg.playerData.fakePurchase == nil then
        require "lua.client.core.network.fake.FakeDataRequest"
        FakeDataRequest.FakeFlashSalePurchase(1)
        FakeDataRequest.FakeStarterPackPurchase(1)
        zg.playerData.fakePurchase = true
    end
end

function UIMainAreaView:OnClickBackOrClose()
    self:OnReadyHide()
end

function UIMainAreaView:OnClickEventNewHero()
    local doneValidate = function()
        UIBaseView.CheckBlurMain(true, true, function()
            TrackingUtils.AddFireBaseClickMainArea(FBEvents.MAIN_FEATURES, "event_new_hero")
            PopupMgr.ShowPopup(UIPopupName.UIEventNewHero)
        end)
    end
    EventInBound.ValidateEventModel(doneValidate)
end

function UIMainAreaView:OnClickEventMergeServer()
    local doneValidate = function()
        UIBaseView.CheckBlurMain(true, true, function()
            TrackingUtils.AddFireBaseClickMainArea(FBEvents.MAIN_FEATURES, "event_merge_server")
            PopupMgr.ShowPopup(UIPopupName.UIEventMergeServer)
        end)
    end
    EventInBound.ValidateEventModel(doneValidate)
end

function UIMainAreaView:OnClickEventEasterEgg()
    local doneValidate = function()
        UIBaseView.CheckBlurMain(true, true, function()
            TrackingUtils.AddFireBaseClickMainArea(FBEvents.MAIN_FEATURES, "event_easter_egg")
            PopupMgr.ShowPopup(UIPopupName.UIEventEasterEgg)
        end)
    end
    EventInBound.ValidateEventModel(doneValidate)
end

function UIMainAreaView:OnClickWelcomeBack()
    WelcomeBackInBound.Validate(function()
        UIBaseView.CheckBlurMain(true, true, function()
            TrackingUtils.AddFireBaseClickMainArea(FBEvents.MAIN_FEATURES, "welcome_back")
            PopupMgr.ShowPopup(UIPopupName.UIWelcomeBack)
        end)
    end)
end

function UIMainAreaView:OnClickBirthday()
    local doneValidate = function()
        UIBaseView.CheckBlurMain(true, true, function()
            TrackingUtils.AddFireBaseClickMainArea(FBEvents.MAIN_FEATURES, "birthday")
            PopupMgr.ShowPopup(UIPopupName.UIEventBirthday)
        end)
    end
    EventInBound.ValidateEventModel(doneValidate)
end

function UIMainAreaView:OnClickEventSkinBundle()
    local doneValidate = function()
        UIBaseView.CheckBlurMain(true, true, function()
            TrackingUtils.AddFireBaseClickMainArea(FBEvents.MAIN_FEATURES, "skin_bundle")
            PopupMgr.ShowPopup(UIPopupName.UIEventSkinBundle)
        end)
    end
    EventInBound.ValidateEventModel(doneValidate)
end