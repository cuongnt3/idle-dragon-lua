require "lua.client.scene.ui.home.uiIapShop.iapShopItem.IapShopTabItem"
require "lua.client.scene.ui.home.uiIapShop.uiIapShopLayout.UIIapShopLayout"
require "lua.client.scene.ui.home.uiIapShop.uiIapShopLayout.UIIapShopLimitedPackLayout"

--- @class UIIapShopView : UIBaseView
UIIapShopView = Class(UIIapShopView, UIBaseView)

--- @return void
--- @param model UIIapShopModel
function UIIapShopView:Ctor(model)
    --- @type UIIapShopConfig
    self.config = nil

    --- @type Dictionary
    self.layoutDict = Dictionary()
    --- @type UIIapShopLayout
    self.layout = nil

    --- @type Dictionary
    self.tabDict = Dictionary()

    ---@type Dictionary()
    self.levelTabDict = Dictionary()
    --- @type UILoopScroll
    self.verticalScroll = nil
    UIBaseView.Ctor(self, model)
    --- @type UIIapShopModel
    self.model = model
end

--- @return void
function UIIapShopView:OnReadyCreate()
    self.config = UIBaseConfig(self.uiTransform)
    self:InitButtonListener()
    self:InitTab()
    uiCanvas:SetBackgroundSize(self.config.backGround)
    if IS_APPLE_REVIEW_IAP == true then
        self.config.contentShopTab:GetChild(0).gameObject:SetActive(false)
        self.config.contentShopTab:GetChild(1).gameObject:SetActive(false)
        self.config.contentShopTab:GetChild(2).gameObject:SetActive(false)
        self.config.contentShopTab:GetChild(4).gameObject:SetActive(false)
        self.config.contentShopTab:GetChild(5).gameObject:SetActive(false)
        self.config.contentShopTab:GetChild(6).gameObject:SetActive(false)
    end
end

function UIIapShopView:InitButtonListener()
    self.config.backButton.onClick:AddListener(function()
        self:OnClickBackOrClose()
    end)
    self.config.buttonVip.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        self:OnClickVip()
    end)
end

function UIIapShopView:OnClickBackOrClose()
    self:OnReadyHide()
    zg.audioMgr:PlaySfxUi(SfxUiType.BACK)
end

function UIIapShopView:OnReadyHide()
    PopupMgr.ShowAndHidePopup(UIPopupName.UIMainArea, nil, self.model.uiName)
end

function UIIapShopView:InitTab()
    for i = 1, self.config.contentShopTab.childCount do
        --- @type IapShopTabItem
        local tab = IapShopTabItem(self.config.contentShopTab:GetChild(i - 1))
        tab:SetListener(function()
            self:OnSelectTab(i)
        end)
        self.tabDict:Add(i, tab)
        if i == IapShopTab.LEVEL_PASS_1 then
            self.levelTabDict:Add(1, tab)
        elseif i == IapShopTab.LEVEL_PASS_2 then
            self.levelTabDict:Add(2, tab)
        end
    end
end
function UIIapShopView:CheckLevelPasses()
    --- @type LevelPassConfig
    local levelPassConfig = ResourceMgr.GetLevelPassConfig()
    --- @type IapShopTabItem
    for i, v in pairs(self.levelTabDict:GetItems()) do
        if levelPassConfig.lineConfig:IsContainKey(i) then
            ---@type GrowthPackLineConfig
            local data = levelPassConfig.lineConfig:Get(i)
            v:SetActive(not data:IsClaimCompleted())
        end
    end
end
function UIIapShopView:InitLocalization()
    --- @param v IapShopTabItem
    for k, v in pairs(self.tabDict:GetItems()) do
        v:SetTabName(self:GetTabName(k))
    end
    --- @param v UIIapShopLayout
    for k, v in pairs(self.layoutDict:GetItems()) do
        v:InitLocalization()
    end
end

--- @return string
--- @param iapShopTab IapShopTab
function UIIapShopView:GetTabName(iapShopTab)
    if iapShopTab == IapShopTab.MONTHLY_CARD then
        return LanguageUtils.LocalizeCommon("subscription_packs")
    elseif iapShopTab == IapShopTab.DAILY_DEAL
            or iapShopTab == IapShopTab.DAILY_DEAL_HALLOWEEN
            or iapShopTab == IapShopTab.DAILY_DEAL_XMAS
            or iapShopTab == IapShopTab.DAILY_DEAL_NEW_YEAR
            or iapShopTab == IapShopTab.DAILY_DEAL_EASTER_EGG
            or iapShopTab == IapShopTab.DAILY_DEAL_BIRTHDAY then
        return LanguageUtils.LocalizeCommon("daily_packs")
    elseif iapShopTab == IapShopTab.WEEKLY_DEAL then
        return LanguageUtils.LocalizeCommon("weekly_packs")
    elseif iapShopTab == IapShopTab.MONTHLY_DEAL then
        return LanguageUtils.LocalizeCommon("monthly_packs")
    elseif iapShopTab == IapShopTab.LEVEL_PASS_1 then
        return string.format("%s %d", LanguageUtils.LocalizeCommon("level_pass"), 1)
    elseif iapShopTab == IapShopTab.LEVEL_PASS_2 then
        return string.format("%s %d", LanguageUtils.LocalizeCommon("level_pass"), 2)
    elseif iapShopTab == IapShopTab.ARENA_PASS then
        return LanguageUtils.LocalizeCommon("arena_pass")
    elseif iapShopTab == IapShopTab.DAILY_QUEST_PASS then
        return LanguageUtils.LocalizeCommon("daily_quest_pass")
    elseif iapShopTab == IapShopTab.RAW_PACK then
        return LanguageUtils.LocalizeCommon("raw_packs")
    end
    return LanguageUtils.LocalizeCommon("raw_packs")
end

--- @param iapShopTab IapShopTab
function UIIapShopView:OnReadyShow(iapShopTab)
    self:InitListener()
    self:CheckActiveTabEventIap()
    if IS_APPLE_REVIEW == true then
        iapShopTab = iapShopTab or IapShopTab.WEEKLY_DEAL
        self:OnSelectTab(iapShopTab)
    else
        iapShopTab = iapShopTab or IapShopTab.MONTHLY_CARD
        self:OnSelectTab(iapShopTab)
    end
    self:ShowVip()
    self:CheckAllNotification()
    self:CheckLevelPasses()
end

function UIIapShopView:CheckActiveTabEventIap()
    local checkActiveTabEvent = function(eventTimeType, iapShopTab)
        --- @type EventPopupModel
        local eventModel = zg.playerData:GetEvents():GetEvent(eventTimeType)
        --- @type IapShopTabItem
        local tabArenaPass = self.tabDict:Get(iapShopTab)
        tabArenaPass:SetActive(eventModel ~= nil and eventModel:IsOpening())
    end
    checkActiveTabEvent(EventTimeType.EVENT_ARENA_PASS, IapShopTab.ARENA_PASS)
    checkActiveTabEvent(EventTimeType.EVENT_DAILY_QUEST_PASS, IapShopTab.DAILY_QUEST_PASS)

    self:EnableIapShopTab(IapShopTab.DAILY_DEAL, true)
    self:EnableIapShopTab(IapShopTab.DAILY_DEAL_HALLOWEEN, false)
    self:EnableIapShopTab(IapShopTab.DAILY_DEAL_XMAS, false)
    self:EnableIapShopTab(IapShopTab.DAILY_DEAL_NEW_YEAR, false)
    self:EnableIapShopTab(IapShopTab.DAILY_DEAL_EASTER_EGG, false)
    self:EnableIapShopTab(IapShopTab.DAILY_DEAL_BIRTHDAY, false)

    if EventInBound.IsEventOpening(EventTimeType.EVENT_HALLOWEEN) then
        self:EnableIapShopTab(IapShopTab.DAILY_DEAL_HALLOWEEN, true)
        self:EnableIapShopTab(IapShopTab.DAILY_DEAL, false)
    end
    if EventInBound.IsEventOpening(EventTimeType.EVENT_XMAS) then
        self:EnableIapShopTab(IapShopTab.DAILY_DEAL_XMAS, true)
        self:EnableIapShopTab(IapShopTab.DAILY_DEAL, false)
    end
    if EventInBound.IsEventOpening(EventTimeType.EVENT_NEW_YEAR) then
        self:EnableIapShopTab(IapShopTab.DAILY_DEAL_NEW_YEAR, true)
        self:EnableIapShopTab(IapShopTab.DAILY_DEAL, false)
    end
    if EventInBound.IsEventOpening(EventTimeType.EVENT_EASTER_EGG) then
        self:EnableIapShopTab(IapShopTab.DAILY_DEAL_EASTER_EGG, true)
        self:EnableIapShopTab(IapShopTab.DAILY_DEAL, false)
    end
    if EventInBound.IsEventOpening(EventTimeType.EVENT_BIRTHDAY) then
        self:EnableIapShopTab(IapShopTab.DAILY_DEAL_BIRTHDAY, true)
        self:EnableIapShopTab(IapShopTab.DAILY_DEAL, false)
    end
end

--- @param iapShopTab IapShopTab
function UIIapShopView:EnableIapShopTab(iapShopTab, isEnable)
    --- @type IapShopTabItem
    local iapShopTabItem = self.tabDict:Get(iapShopTab)
    if iapShopTabItem ~= nil then
        iapShopTabItem:SetActive(isEnable)
    end
end

--- @return void
function UIIapShopView:InitListener()
    self.listener = RxMgr.vipLevelUp:Subscribe(function(vipLevel)
        self:ShowVip()
    end)
    self.subscriptionNotiDailyDeal = RxMgr.buyPackDealCompleted:Subscribe(function()
        self:CheckShowNotificationDailyDeal()
    end)
end

--- @param iapShopTab IapShopTab
function UIIapShopView:OnSelectTab(iapShopTab)
    --- @param v IapShopTabItem
    for k, v in pairs(self.tabDict:GetItems()) do
        v:SetTabState(k == iapShopTab)
    end
    self:GetLayout(iapShopTab)
    self.layout:OnShow(iapShopTab)
end

--- @param iapShopTab IapShopTab
function UIIapShopView:GetLayout(iapShopTab)
    self:DisableCommon()
    if self.layout ~= nil then
        self.layout:OnHide()
    end
    self.layout = self.layoutDict:Get(iapShopTab)
    if self.layout == nil then
        --- @return UIIapShopLevelPassLayout
        local initLevelPassLayout = function()
            require "lua.client.scene.ui.home.uiIapShop.uiIapShopLayout.uiIapShopLevelPassLayout.UIIapShopLevelPassLayout"
            return UIIapShopLevelPassLayout(self, self.config.levelPassView)
        end
        if iapShopTab == IapShopTab.MONTHLY_CARD then
            require "lua.client.scene.ui.home.uiIapShop.uiIapShopLayout.uiIapShopMonthlyCardLayout.UIIapShopMonthlyCardLayout"
            self.layout = UIIapShopMonthlyCardLayout(self, self.config.monthlyCardView)
        elseif iapShopTab == IapShopTab.DAILY_DEAL then
            require "lua.client.scene.ui.home.uiIapShop.uiIapShopLayout.uiIapShopFrequencyDealLayout.UIIapShopDailyDealLayout"
            self.layout = UIIapShopDailyDealLayout(self, PackViewType.DAILY_LIMITED_PACK)
        elseif iapShopTab == IapShopTab.DAILY_DEAL_HALLOWEEN then
            require "lua.client.scene.ui.home.uiIapShop.uiIapShopLayout.uiIapShopFrequencyDealLayout.UIIapShopDailyDealHalloweenLayout"
            self.layout = UIIapShopDailyDealHalloweenLayout(self, PackViewType.DAILY_LIMITED_HALLOWEEN_PACK)
        elseif iapShopTab == IapShopTab.DAILY_DEAL_XMAS then
            require "lua.client.scene.ui.home.uiIapShop.uiIapShopLayout.uiIapShopFrequencyDealLayout.UIIapShopDailyDealXmasLayout"
            self.layout = UIIapShopDailyDealXmasLayout(self, PackViewType.DAILY_LIMITED_XMAS_PACK)
        elseif iapShopTab == IapShopTab.DAILY_DEAL_NEW_YEAR then
            require "lua.client.scene.ui.home.uiIapShop.uiIapShopLayout.uiIapShopFrequencyDealLayout.UIIapShopDailyDealNewYearLayout"
            self.layout = UIIapShopDailyDealNewYearLayout(self, PackViewType.DAILY_LIMITED_NEW_YEAR)
        elseif iapShopTab == IapShopTab.DAILY_DEAL_EASTER_EGG then
            require "lua.client.scene.ui.home.uiIapShop.uiIapShopLayout.uiIapShopFrequencyDealLayout.UIIapShopDailyDealEasterLayout"
            self.layout = UIIapShopDailyDealEasterLayout(self, PackViewType.DAILY_LIMITED_EASTER_PACK)
        elseif iapShopTab == IapShopTab.DAILY_DEAL_BIRTHDAY then
            require "lua.client.scene.ui.home.uiIapShop.uiIapShopLayout.uiIapShopFrequencyDealLayout.UIIapShopDailyDealBirthdayLayout"
            self.layout = UIIapShopDailyDealBirthdayLayout(self, PackViewType.DAILY_LIMITED_BIRTHDAY)
        elseif iapShopTab == IapShopTab.WEEKLY_DEAL then
            require "lua.client.scene.ui.home.uiIapShop.uiIapShopLayout.uiIapShopFrequencyDealLayout.UIIapShopWeeklyDealLayout"
            self.layout = UIIapShopWeeklyDealLayout(self, PackViewType.WEEKLY_LIMITED_PACK)
        elseif iapShopTab == IapShopTab.MONTHLY_DEAL then
            require "lua.client.scene.ui.home.uiIapShop.uiIapShopLayout.uiIapShopFrequencyDealLayout.UIIapShopMonthlyDealLayout"
            self.layout = UIIapShopMonthlyDealLayout(self, PackViewType.MONTHLY_LIMITED_PACK)
        elseif iapShopTab == IapShopTab.LEVEL_PASS_1 then
            self.layout = self.layoutDict:Get(IapShopTab.LEVEL_PASS_2)
            if self.layout == nil then
                self.layout = initLevelPassLayout()
            end
        elseif iapShopTab == IapShopTab.LEVEL_PASS_2 then
            self.layout = self.layoutDict:Get(IapShopTab.LEVEL_PASS_1)
            if self.layout == nil then
                self.layout = initLevelPassLayout()
            end
        elseif iapShopTab == IapShopTab.ARENA_PASS then
            require "lua.client.scene.ui.home.uiIapShop.uiIapShopLayout.uiIapPassLayout.UIIapPassLayout"
            self.layout = UIIapPassLayout(self, self.config.arenaPassView, EventTimeType.EVENT_ARENA_PASS)
        elseif iapShopTab == IapShopTab.DAILY_QUEST_PASS then
            require "lua.client.scene.ui.home.uiIapShop.uiIapShopLayout.uiIapPassLayout.UIIapPassLayout"
            require "lua.client.scene.ui.home.uiIapShop.uiIapShopLayout.uiIapPassLayout.UIIapDailyQuestPassLayout"
            self.layout = UIIapDailyQuestPassLayout(self, self.config.dailyQuestPassView, EventTimeType.EVENT_DAILY_QUEST_PASS)
        elseif iapShopTab == IapShopTab.RAW_PACK then
            require "lua.client.scene.ui.home.uiIapShop.uiIapShopLayout.UIIapShopRawPackLayout"
            self.layout = UIIapShopRawPackLayout(self, PackViewType.RAW_PACK)
        else
            XDebug.Error("Missing layout of type " .. iapShopTab)
        end
        self.layout:InitLocalization()
        self.layoutDict:Add(iapShopTab, self.layout)
    end
end

function UIIapShopView:DisableCommon()
    self.config.monthlyCardView.gameObject:SetActive(false)
    self.config.scrollVertical.gameObject:SetActive(false)
    self.config.levelPassView.gameObject:SetActive(false)
    self.config.textTimer.gameObject:SetActive(false)
    self.config.bannerView.gameObject:SetActive(false)
end

function UIIapShopView:CheckAllNotification()
    self:CheckShowNotificationDailyDeal()
    self:CheckShowNotificationDailyDealHalloween()
    self:CheckShowNotificationDailyDealXmas()
    self:CheckShowNotificationDailyDealNewYear()
    self:CheckShowNotificationDailyDealEaster()
    self:CheckShowNotificationGrowthPack()
    self:CheckNotificationArenaPass()
    self:CheckNotificationDailyQuestPass()
    self:CheckShowNotificationDailyDealBirthday()
end

function UIIapShopView:CheckShowNotificationDailyDeal()
    if EventInBound.IsEventOpening(EventTimeType.EVENT_HALLOWEEN) == false then
        --- @type IapShopTabItem
        local tab = self.tabDict:Get(IapShopTab.DAILY_DEAL)
        tab:EnableNotify(ResourceMgr.GetPurchaseConfig():GetCashShop():IsNotificationDailyDeal())
    end
end

function UIIapShopView:CheckShowNotificationDailyDealHalloween()
    if EventInBound.IsEventOpening(EventTimeType.EVENT_HALLOWEEN) then
        --- @type IapShopTabItem
        local tab = self.tabDict:Get(IapShopTab.DAILY_DEAL_HALLOWEEN)
        tab:EnableNotify(ResourceMgr.GetPurchaseConfig():GetHalloweenDaily():IsNotificationDailyDeal())
    end
end

function UIIapShopView:CheckShowNotificationDailyDealXmas()
    if EventInBound.IsEventOpening(EventTimeType.EVENT_XMAS) then
        --- @type IapShopTabItem
        local tab = self.tabDict:Get(IapShopTab.DAILY_DEAL_XMAS)
        tab:EnableNotify(ResourceMgr.GetPurchaseConfig():GetXmasDaily():IsNotificationDailyDeal())
    end
end

function UIIapShopView:CheckShowNotificationDailyDealNewYear()
    if EventInBound.IsEventOpening(EventTimeType.EVENT_NEW_YEAR) then
        --- @type IapShopTabItem
        local tab = self.tabDict:Get(IapShopTab.DAILY_DEAL_NEW_YEAR)
        tab:EnableNotify(ResourceMgr.GetPurchaseConfig():GetNewYearDaily():IsNotificationDailyDeal())
    end
end

function UIIapShopView:CheckShowNotificationDailyDealEaster()
    if EventInBound.IsEventOpening(EventTimeType.EVENT_EASTER_EGG) then
        --- @type IapShopTabItem
        local tab = self.tabDict:Get(IapShopTab.DAILY_DEAL_EASTER_EGG)
        tab:EnableNotify(ResourceMgr.GetPurchaseConfig():GetEasterDailyBundleStore():IsNotificationDailyDeal())
    end
end

function UIIapShopView:CheckShowNotificationDailyDealBirthday()
    if EventInBound.IsEventOpening(EventTimeType.EVENT_BIRTHDAY) then
        --- @type IapShopTabItem
        local tab = self.tabDict:Get(IapShopTab.DAILY_DEAL_BIRTHDAY)
        tab:EnableNotify(ResourceMgr.GetPurchaseConfig():GetBirthdayDailyBundleStore():IsNotificationDailyDeal())
    end
end

function UIIapShopView:CheckShowNotificationGrowthPack()
    --- @type IapShopTabItem
    local tabLevelLass1 = self.tabDict:Get(IapShopTab.LEVEL_PASS_1)
    tabLevelLass1:EnableNotify(false)
    --- @type IapShopTabItem
    local tabLevelLass2 = self.tabDict:Get(IapShopTab.LEVEL_PASS_2)
    tabLevelLass2:EnableNotify(false)

    --- @type IapDataInBound
    local iapDataInBound = zg.playerData:GetIAP()
    --- @type GrowthPackCollection
    local growthPackCollection = iapDataInBound.growthPackData

    --- @type BasicInfoInBound
    local basicInfoInBound = zg.playerData:GetMethod(PlayerDataMethod.BASIC_INFO)

    --- @param growthPackLineConfig GrowthPackLineConfig
    local checkActiveNotify = function(growthPackLineConfig)
        if growthPackLineConfig == nil then
            return false
        end
        return growthPackLineConfig:GetClaimableMilestone(basicInfoInBound.level,
                growthPackCollection:GetBoughtCount(growthPackLineConfig.line) > 0,
                growthPackCollection:GetGrowPatchLine(growthPackLineConfig.line)) ~= nil
    end
    --- @type GrowthPackLineConfig
    local growthPackLine1 = ResourceMgr.GetLevelPassConfig():GetGrowthPackConfigByLine(1)
    if checkActiveNotify(growthPackLine1, 1) then
        tabLevelLass1:EnableNotify(true)
    end
    --- @type GrowthPackLineConfig
    local growthPackLine2 = ResourceMgr.GetLevelPassConfig():GetGrowthPackConfigByLine(2)
    if checkActiveNotify(growthPackLine2) then
        tabLevelLass2:EnableNotify(true)
    end
end

function UIIapShopView:CheckNotificationArenaPass()
    --- @type IapShopTabItem
    local tabArenaPass = self.tabDict:Get(IapShopTab.ARENA_PASS)
    --- @type EventArenaPassModel
    local eventArenaPassModel = zg.playerData:GetEvents():GetEvent(EventTimeType.EVENT_ARENA_PASS)
    tabArenaPass:EnableNotify(eventArenaPassModel ~= nil and eventArenaPassModel:HasNotification())
end

function UIIapShopView:CheckNotificationDailyQuestPass()
    --- @type IapShopTabItem
    local tabArenaPass = self.tabDict:Get(IapShopTab.DAILY_QUEST_PASS)
    --- @type EventDailyQuestPassModel
    local eventDailyQuestPassModel = zg.playerData:GetEvents():GetEvent(EventTimeType.EVENT_DAILY_QUEST_PASS)
    tabArenaPass:EnableNotify(eventDailyQuestPassModel ~= nil and eventDailyQuestPassModel:HasNotification())
end

function UIIapShopView:Hide()
    UIBaseView.Hide(self)
    if self.layout ~= nil then
        self.layout:OnHide()
    end
    self:RemoveListener()
end

function UIIapShopView:RemoveListener()
    if self.listener then
        self.listener:Unsubscribe()
        self.listener = nil
    end
    if self.subscriptionNotiDailyDeal then
        self.subscriptionNotiDailyDeal:Unsubscribe()
        self.subscriptionNotiDailyDeal = nil
    end
end

function UIIapShopView:ShowVip()
    ---@type number
    local currentVip = zg.playerData:GetMethod(PlayerDataMethod.BASIC_INFO).vipLevel
    self.config.iconVip.sprite = ResourceLoadUtils.LoadSpriteFromAtlas(ResourceLoadUtils.iconVip, currentVip)
    self.config.iconVip:SetNativeSize()
end

function UIIapShopView:OnClickVip()
    PopupMgr.ShowPopup(UIPopupName.UIVip)
end

