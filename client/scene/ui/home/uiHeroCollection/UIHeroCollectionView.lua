require "lua.client.core.network.hero.HeroLockOutBound"
require "lua.client.scene.ui.utils.uiSelect.UISelectCustomSprite"
require "lua.client.scene.ui.home.uiHeroCollection.UIRegressionView"

local HERO_LIST_TYPE = {
    HERO_LIST = 1,
    GALLERY = 2,
    LINKING = 3,
    REGRESSION = 4,
}

--- @class UIHeroCollectionView : UIBaseView
UIHeroCollectionView = Class(UIHeroCollectionView, UIBaseView)

--- @return void
--- @param model UIHeroCollectionModel
function UIHeroCollectionView:Ctor(model)
    ---@type HeroLinkingInBound
    self.heroLinkingInBound = nil
    ---@type HeroLinkingTierConfig
    self.heroLinkingTierConfig = nil

    --- @type UIHeroCollectionConfig
    self.config = nil

    self.currentTab = nil
    self.tabDict = Dictionary()

    --- @type UISelect
    self.faction = nil

    --- @type UILoopScroll
    self.uiScroll = nil

    --- @type UILoopScroll
    self.uiScrollLinking = nil

    ---@type boolean
    self.cacheData = false

    ---@type boolean
    self.isLock = false

    ---@type List --<HeroResource>
    self.listHeroChangeLock = List()

    ---@type boolean
    self.cacheHeroLockList = List()

    --- @type boolean
    self.canPlayMotion = nil
    --- @type MotionConfig
    self.motionConfig = MotionConfig(nil, nil, nil, 0.02, 2)
    UIBaseView.Ctor(self, model, ctrl)
    --- @type UIHeroCollectionModel
    self.model = self.model

end

--- @return void
function UIHeroCollectionView:OnReadyCreate()
    ---@type UIHeroCollectionConfig
    self.config = UIBaseConfig(self.uiTransform)
    ---@type UIRegressionView
    self.regressionView = UIRegressionView(self.config.regression)
    self.config.multiEvolveButton.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        self:OnClickMultiEvolve()
    end)
    self.config.buttonBack.onClick:AddListener(function()
        self:OnClickBackOrClose()
    end)
    self.config.bgClose.onClick:AddListener(function()
        self:OnClickBackOrClose()
    end)

    self.config.buttSort.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        self:OnClickButtonSort()
    end)
    self.config.sortPannel.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        self:OnClickButtonCloseSort()
    end)
    self.config.buttonLevel.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        self:OnClickButtonSortLevel()
    end)
    self.config.buttonStar.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        self:OnClickButtonSortStar()
    end)
    self.config.buttonLock.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        self:OnClickLock()
    end)
    self.config.buttonAsk.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        self:OnClickHelpButton()
    end)
    self.config.buttonDone.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        self:OnClickDone()
    end)
    self.config.pickHeroList.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        PopupMgr.ShowPopup(UIPopupName.UIHeroForHire)
    end)

    self:InitTabs()
    -- Scroll Hero
    --- @param obj HeroCardItemView
    --- @param index number
    local onUpdateItemHeroCard = function(obj, index)
        ---@type HeroResource
        local heroResource = self.model.heroSort:Get(index + 1)
        local lock = self.isLock == true and (ClientConfigUtils.CheckLockHero(heroResource))
        obj:ActiveMaskLock(lock, U_Vector2(194, 251))
    end
    --- @param obj HeroCardItemView
    --- @param index number
    local onCreateItemHeroCard = function(obj, index)
        onUpdateItemHeroCard(obj, index)
        obj:EnableButton(true)
        ---@type HeroResource
        local heroResource = self.model.heroSort:Get(index + 1)
        ---@type HeroIconData
        local heroData = HeroIconData.CreateByHeroResource(heroResource) --self.model.heroIconDataListSort:Get(index + 1)
        local noti = heroResource:IsUnlockTalent()
        if heroData then
            obj:SetIconData(heroData, noti)
        end
        obj:RemoveAllListeners()
        obj:AddListener(function()
            self:SelectHero(index)
        end)
    end
    self.uiScroll = UILoopScrollAsync(self.config.scroll, UIPoolType.HeroCardItemView, onCreateItemHeroCard, onUpdateItemHeroCard)
    self.uiScroll:SetUpMotion(MotionConfig(0, 0, 0, 0.02, 3))

    -- Scroll Linking
    --- @param obj UIHeroLinkingItemView
    --- @param index number
    local onCreateItemLinkingHero = function(obj, index)
        ---@type ItemLinkingTierConfig
        local linkingConfig = self.heroLinkingTierConfig.listItemLinking:Get(index + 1)
        obj:SetData(linkingConfig, self.heroLinkingInBound.linkingGroupDataDict:Get(index + 1), function()
            self.uiScrollLinking:RefreshCells()
            self:UpdateNotiLinking()
        end)
    end

    --- @param obj UIHeroLinkingItemView
    --- @param index number
    local onUpdateItemLinkingHero = function(obj, index)
        obj:ReturnPoolItem()
        onCreateItemLinkingHero(obj, index)
    end
    self.uiScrollLinking = UILoopScroll(self.config.scrollLinking, UIPoolType.UIHeroLinkingItemView, onCreateItemLinkingHero, onUpdateItemLinkingHero)

    -- Select faction
    --- @param obj UnityEngine_UI_Button
    --- @param isSelect boolean
    local onSelectFaction = function(obj, isSelect)
        if obj ~= nil then
            UIUtils.SetInteractableButton(obj, not isSelect)
            if isSelect then
                self.config.imageSelect.gameObject:SetActive(true)
                self.config.imageSelect.transform:SetParent(obj.transform)
                self.config.imageSelect.transform.localPosition = U_Vector3.zero
            end
        end
    end
    local onChangeSelectFaction = function(indexTab, lastTab)

    end
    local onClickSelectFaction = function()
        self:CheckSort()
    end
    self.faction = UISelectFactionFilter(self.config.selectHero, nil, onSelectFaction, onChangeSelectFaction, onClickSelectFaction)
    self.faction:SetSprite()
end

function UIHeroCollectionView:InitTabs()
    self.currentTab = HERO_LIST_TYPE.HERO_LIST
    self.selectTab = function(currentTab)
        if self:IsAvailableToShowTab(currentTab) == false then
            return
        end
        self.currentTab = currentTab
        self.faction:Select(self.faction.indexTab or 1)
        for k, v in pairs(self.tabDict:GetItems()) do
            v:SetTabState(k == currentTab)
        end
        self:CheckSort()
        local isActive = NotificationCheckUtils.IsCanShowSoftTutRegression()
                and self.currentTab ~= HERO_LIST_TYPE.REGRESSION
        self.config.softTutRegression:SetActive(isActive)
        if currentTab ~= HERO_LIST_TYPE.HERO_LIST or currentTab ~= HERO_LIST_TYPE.GALLERY then
            self.config.textEmpty.gameObject:SetActive(false)
        end
    end
    local addTab = function(heroListTab, localizeFunction)
        self.tabDict:Add(heroListTab, UITabItem(self.config.tabSelect:GetChild(heroListTab - 1),
                self.selectTab, localizeFunction, heroListTab))
    end
    addTab(HERO_LIST_TYPE.HERO_LIST, function()
        return LanguageUtils.LocalizeCommon("hero_list")
    end)
    addTab(HERO_LIST_TYPE.GALLERY, function()
        return LanguageUtils.LocalizeCommon("gallery")
    end)
    addTab(HERO_LIST_TYPE.LINKING, function()
        return LanguageUtils.LocalizeCommon("linking")
    end)
    -- --HIDE LINKING
    self.config.tabSelect:GetChild(HERO_LIST_TYPE.LINKING - 1).gameObject:SetActive(true)

    addTab(HERO_LIST_TYPE.REGRESSION, function()
        return LanguageUtils.LocalizeCommon("regression")
    end)
    self.config.tabSelect:GetChild(HERO_LIST_TYPE.REGRESSION - 1).gameObject:SetActive(true)
end

function UIHeroCollectionView:InitLocalization()
    self.config.multiEvolveTxt.text = LanguageUtils.LocalizeCommon("multi_evolve")
    self.config.localizeSort.text = LanguageUtils.LocalizeCommon("sort")
    self.config.localizeLevel.text = LanguageUtils.LocalizeCommon("level")
    self.config.localizeStar.text = LanguageUtils.LocalizeCommon("star")
    self.config.localizeSell.text = LanguageUtils.LocalizeCommon("sell")
    self.config.localizeLock.text = LanguageUtils.LocalizeCommon("lock")
    self.config.localizeEditLock.text = LanguageUtils.LocalizeCommon("edit_lock_heroes")
    self.config.localizeDone.text = LanguageUtils.LocalizeCommon("done")
    self.config.localizeSupportHero.text = LanguageUtils.LocalizeCommon("my_support_hero")
    self.config.textEmpty.text = LanguageUtils.LocalizeCommon("empty")

    self.regressionView:InitLocalization()

    if self.tabDict ~= nil then
        --- @param v UITabItem
        for _, v in pairs(self.tabDict:GetItems()) do
            v:InitLocalization()
        end
    end
end

--- @return void
function UIHeroCollectionView:OnReadyShow(result)
    self.heroLinkingInBound = zg.playerData:GetMethod(PlayerDataMethod.HERO_LINKING)
    zg.audioMgr:PlaySfxUi(SfxUiType.POPUP_OPEN)
    self.canPlayMotion = true
    if self.isLock then
        for i = 1, self.listHeroChangeLock:Count() do
            self.listHeroChangeLock:Get(i).isLock = self.cacheHeroLockList:Get(i)
        end
        self.cacheHeroLockList:Clear()
        self.listHeroChangeLock:Clear()
        self:SetLock(not self.isLock)
    end
    self:Init(result)
    self.model:InitData()
    if self.cacheData == true then
        --local indexFaction = self.faction.indexTab or 1
        --self.faction:Select(indexFaction)
        self.selectTab(self.currentTab)
    else
        --self.faction:Select(1)
        self.selectTab(HERO_LIST_TYPE.HERO_LIST)
    end
    self:SetNumberHero()
    self.cacheData = true

    self:CheckActiveLinkingTab()
    self:CheckActiveRegressionTab()
    self:UpdateNotiLinking()
    self:UpdateNotiTalent()
    self:ListenerUpdateLinking()
end

--- @return void
function UIHeroCollectionView:OnFinishAnimation()
    UIBaseView.OnFinishAnimation(self)
    self:CheckAndInitTutorial()
end

--- @return void
function UIHeroCollectionView:Init(result)

end

function UIHeroCollectionView:SetTabButtons(isEnable)
    for _, v in pairs(self.tabDict:GetItems()) do
        v:SetShowButton(isEnable)
    end
end
--- @return void
function UIHeroCollectionView:Hide()
    UIBaseView.Hide(self)
    self.uiScroll:Hide()
    self.uiScrollLinking:Hide()
    self:RemoveListenerTutorial()
    self.cacheData = false
    self.faction:Select(nil)
    self:RemoveUpdateLinking()

    zg.playerData.activeLinking = self.heroLinkingInBound:GetDictionaryActiveLinking()
end

--- @return void
function UIHeroCollectionView:CheckSort()
    if self.currentTab == HERO_LIST_TYPE.REGRESSION then
        self.config.textTitle.text = LanguageUtils.LocalizeCommon("regression")
        self.config.linking:SetActive(false)
        self.config.heroList:SetActive(false)
        self.regressionView:Show()
        self:ShowLinking()
        self:SortLinking()
    elseif self.currentTab == HERO_LIST_TYPE.LINKING then
        self.config.textTitle.text = LanguageUtils.LocalizeCommon("linking")
        self.config.linking:SetActive(true)
        self.config.heroList:SetActive(false)
        self.regressionView:Hide()
        self:ShowLinking()
        self:SortLinking()
    else
        if self.currentTab == HERO_LIST_TYPE.GALLERY then
            self.config.textTitle.text = LanguageUtils.LocalizeCommon("gallery")
        else
            self.config.textTitle.text = LanguageUtils.LocalizeCommon("hero_list")
        end
        self.config.linking:SetActive(false)
        self.config.heroList:SetActive(true)
        self.regressionView:Hide()
        self:Sort()
        self:ShowHeroCollection()
    end
end

--- @return void
function UIHeroCollectionView:SelectHero(index)
    if self.isLock then
        ---@type HeroResource
        local heroResource = self.model.heroSort:Get(index + 1)
        local noti = ClientConfigUtils.GetNotiLockHeroInModeGame(heroResource)
        if noti ~= nil then
            SmartPoolUtils.ShowShortNotification(noti)
        else
            self.cacheHeroLockList:Add(heroResource.isLock)
            if heroResource.isLock == true then
                heroResource.isLock = false
            else
                heroResource.isLock = true
            end
            if self.listHeroChangeLock:IsContainValue(heroResource) == false then
                self.listHeroChangeLock:Add(heroResource)
            end
            self:ResizeScroll()
        end
    else
        zg.audioMgr:PlaySfxUi(SfxUiType.POPUP_CLOSE)
        PopupMgr.ShowAndHidePopup(UIPopupName.UIHeroMenu2, { ["heroSort"] = self.model.heroSort, ["index"] = index + 1, ["callbackClose"] = function()
            PopupMgr.ShowAndHidePopup(UIPopupName.UIHeroCollection, nil, UIPopupName.UIHeroMenu2)
        end },
                UIPopupName.UIHeroCollection)
    end
end

--- @return void
function UIHeroCollectionView:GetFaction()
    local faction = self.faction.indexTab
    if faction ~= nil and faction > 1 then
        faction = faction - 1
    else
        faction = nil
    end
    return faction
end

--- @return void
function UIHeroCollectionView:Sort()
    --- @type List

    local listHeroResource
    local faction = self:GetFaction()
    if self.currentTab == HERO_LIST_TYPE.HERO_LIST then
        listHeroResource = self.model.heroList
    else
        if faction == nil then
            faction = 1
        end
        listHeroResource = self.model.heroCollection
    end
    --XDebug.Log(LogUtils.ToDetail(listHeroResource:GetItems()))
    self.model.heroSort:Clear()
    for i = 1, listHeroResource:Count() do
        ---@type HeroResource
        local heroResource = listHeroResource:Get(i)
        if faction == nil or ClientConfigUtils.GetFactionIdByHeroId(heroResource.heroId) == faction then
            self.model.heroSort:Add(heroResource)
        end
    end
    if self.currentTab == HERO_LIST_TYPE.HERO_LIST then
        if PlayerSettingData.sortHeroCollection == SortTypeHero.STAR then
            self.model.heroSort:SortWithMethod(HeroResource.SortStarLevelReverse())
        else
            self.model.heroSort:SortWithMethod(HeroResource.SortLevelStarReverse())
        end
    elseif self.currentTab == HERO_LIST_TYPE.GALLERY then
        self.model.heroSort:SortWithMethod(HeroResource.SortStarLevelReverse())
    end
    self:ResizeScroll(self.model.heroSort:Count())

    if self.canPlayMotion == true then
        self.canPlayMotion = false
        self.uiScroll:PlayMotion()
    end
end

--- @return void
function UIHeroCollectionView:SortLinking()
    self.heroLinkingTierConfig = ResourceMgr.GetHeroLinkingTierConfig()
    self.uiScrollLinking:Resize(self.heroLinkingTierConfig.listItemLinking:Count())

    --self.model.linkingSort:Clear()
    --local faction = self:GetFaction()
    --for i = 1, ResourceMgr.GetServiceConfig():GetHeroes().heroLinkingEntries:Count() do
    --    ---@type BaseLinking
    --    local linking = ResourceMgr.GetServiceConfig():GetHeroes().heroLinkingEntries:Get(i)
    --    local constantHero = true
    --    local constantFaction = false
    --    for _, v in pairs(linking.affectedHero:GetItems()) do
    --        if constantHero and ResourceMgr.GetHeroMenuConfig().listHeroCollection:IsContainValue(v) == false then
    --            constantHero = false
    --            break
    --        end
    --        if constantFaction == false and (faction == nil or ClientConfigUtils.GetFactionIdByHeroId(v) == faction) then
    --            constantFaction = true
    --        end
    --    end
    --    if constantHero and constantFaction then
    --        self.model.linkingSort:Add(linking)
    --    end
    --end
    --
    --self.uiScrollLinking:Resize(self.model.linkingSort:Count())
end

----- @return void
--function UIHeroCollectionView:ShowHeroList()
--    --self.config.textTitle.text = "Hero List"
--    self.config.selectHero:GetChild(0).gameObject:SetActive(true)
--    self.uiScroll.scroll.gameObject:SetActive(true)
--    self.uiScrollLinking.scroll.gameObject:SetActive(false)
--    self.config.textNumberHero.gameObject:SetActive(true)
--    self.config.buttSort.gameObject:SetActive(true)
--    self:SetNumberHero()
--    self:SetLock(false)
--end

function UIHeroCollectionView:SetNumberHero()
    self.config.textNumberHero.text = UIUtils.SetColorString(UIUtils.brown, self.model.heroList:Count()) .. "/" .. ClientConfigUtils.MAX_HERO
end

function UIHeroCollectionView:OnClickMultiEvolve()
    local data = {}
    data.callbackCloseAfterEvolve = function()
        self.model:InitData()
        self:Sort()
        self:SetNumberHero()
    end
    PopupMgr.ShowPopup(UIPopupName.UIMultiEvolve, data)
end
--- @return void
function UIHeroCollectionView:SetLock(isLock)
    self.isLock = isLock
    self.config.buttonLock.gameObject:SetActive(not isLock)
    self.config.buttSort.gameObject:SetActive(not isLock)
    self.config.buttonBack.gameObject:SetActive(not isLock)
    self.config.multiEvolveButton.gameObject:SetActive(not isLock)
    self:SetTabButtons(not isLock)
    self.config.localizeEditLock.gameObject:SetActive(isLock)
    self.config.buttonDone.gameObject:SetActive(isLock)

    self:ResizeScroll()
end

--- @return void
function UIHeroCollectionView:ShowHeroCollection()
    local checkShowWithType = self.currentTab == HERO_LIST_TYPE.HERO_LIST and not self.isLock
    self.config.selectHero:GetChild(0).gameObject:SetActive(self.currentTab == HERO_LIST_TYPE.HERO_LIST)
    --self.config.textTitle.text = "Hero Collection"
    self.uiScroll.scroll.gameObject:SetActive(true)
    self.uiScrollLinking.scroll.gameObject:SetActive(false)
    if self.currentTab == HERO_LIST_TYPE.GALLERY then
        local indexFaction = self.faction.indexTab or 1
        if indexFaction == 1 then
            indexFaction = 2
        end
        self.faction:Select(indexFaction)
    end
    self.config.textNumberHero.gameObject:SetActive(self.currentTab == HERO_LIST_TYPE.HERO_LIST)
    self.config.buttSort.gameObject:SetActive(checkShowWithType)
    --self.config.buttonSell.gameObject:SetActive(false)
    self.config.multiEvolveButton.gameObject:SetActive(checkShowWithType)
    self.config.buttonLock.gameObject:SetActive(checkShowWithType)
end

--- @return void
function UIHeroCollectionView:ShowLinking()
    --self.config.selectHero:GetChild(0).gameObject:SetActive(true)
    --self.config.textTitle.text = "Hero Linking"
    self.uiScrollLinking.scroll.gameObject:SetActive(true)
    self.uiScroll.scroll.gameObject:SetActive(false)
    self.faction:Select(1)
    self.config.textNumberHero.gameObject:SetActive(false)
    self.config.buttSort.gameObject:SetActive(false)
    --self.config.buttonSell.gameObject:SetActive(false)
    self.config.buttonLock.gameObject:SetActive(false)
end

--- @return void
function UIHeroCollectionView:ListenerUpdateLinking()
    self:RemoveUpdateLinking()
    ---@type Subscription
    self.listenerUpdateLinking = RxMgr.notificationRequestLinking:Merge(RxMgr.notificationRequestListSupportHero):Subscribe(function()
        self:RemoveCoroutineUpdateLinking()
        self.coroutineRequestLinking = Coroutine.start(function()
            coroutine.waitforseconds(1)
            PlayerDataRequest.RequestAndCallback({ PlayerDataMethod.HERO_LINKING }, function()
                self:UpdateNotiLinking()
                if self.uiScrollLinking.scroll.gameObject.activeInHierarchy then
                    self.uiScrollLinking:RefreshCells()
                end
            end, nil, false)
            self:RemoveCoroutineUpdateLinking()
        end)
    end)
end

--- @return void
function UIHeroCollectionView:RemoveCoroutineUpdateLinking()
    if self.coroutineRequestLinking ~= nil then
        Coroutine.stop(self.coroutineRequestLinking)
        self.coroutineRequestLinking = nil
    end
end

--- @return void
function UIHeroCollectionView:RemoveUpdateLinking()
    if self.listenerUpdateLinking ~= nil then
        self.listenerUpdateLinking:Unsubscribe()
        self.listenerUpdateLinking = nil
    end
end

--- @return void
function UIHeroCollectionView:ViewSortPanel()
    if PlayerSettingData.sortHeroCollection == SortTypeHero.STAR then
        self:EnableSortButton(self.config.buttonLevel, true)
        self.config.chooseButton.transform.position = self.config.buttonStar.transform.position
        self:EnableSortButton(self.config.buttonStar, false)
    else
        self.config.chooseButton.transform.position = self.config.buttonLevel.transform.position
        self:EnableSortButton(self.config.buttonLevel, false)
        self:EnableSortButton(self.config.buttonStar, true)
    end
end

--- @return void
function UIHeroCollectionView:OnClickButtonSort()
    self.config.sortPannel.gameObject:SetActive(true)
    self:ViewSortPanel()
end

--- @return void
function UIHeroCollectionView:OnClickButtonCloseSort()
    self.config.sortPannel.gameObject:SetActive(false)
end

--- @return void
function UIHeroCollectionView:OnClickButtonSortLevel()
    self:OnClickButtonCloseSort()
    PlayerSettingData.sortHeroCollection = SortTypeHero.LEVEL
    PlayerSetting.SaveData()
    self:ViewSortPanel()
    self:Sort()
end

--- @return void
function UIHeroCollectionView:OnClickButtonSortStar()
    self:OnClickButtonCloseSort()
    PlayerSettingData.sortHeroCollection = SortTypeHero.STAR
    PlayerSetting.SaveData()
    self:ViewSortPanel()
    self:Sort()
    zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
end

--- @return void
---@param button UnityEngine_UI_Button
---@param enable boolean
function UIHeroCollectionView:EnableSortButton(button, enable)
    UIUtils.SetInteractableButton(button, enable)
    ---@type UnityEngine_UI_Image
    local image = button:GetComponent(ComponentName.UnityEngine_UI_Image)
    if image ~= nil then
        image.raycastTarget = enable
    end
end

----- @return void
function UIHeroCollectionView:OnClickLock()
    self:SetLock(true)
end

----- @return void
function UIHeroCollectionView:OnClickHelpButton()
    PopupMgr.ShowPopup(UIPopupName.UIHelpInfo, LanguageUtils.LocalizeHelpInfo("linking_info"))
end

----- @return void
function UIHeroCollectionView:OnClickBackOrClose()
    zg.audioMgr:PlaySfxUi(SfxUiType.POPUP_CLOSE)
    PopupMgr.ShowAndHidePopup(UIPopupName.UIMainArea, nil, self.model.uiName)
end

----- @return void
function UIHeroCollectionView:OnClickDone()
    self:SetLock(false)
    if self.listHeroChangeLock:Count() > 0 then
        local heroLockOutBound = HeroLockOutBound()
        ---@param v HeroResource
        for _, v in pairs(self.listHeroChangeLock:GetItems()) do
            if v.isLock == true then
                heroLockOutBound.listLock:Add(v.inventoryId)
            else
                heroLockOutBound.listUnlock:Add(v.inventoryId)
            end
        end
        NetworkUtils.RequestAndCallback(OpCode.HERO_LOCK, heroLockOutBound)
        self.listHeroChangeLock:Clear()
        self.cacheHeroLockList:Clear()
    end
end

--- @return void
--- @param tutorial UITutorialView
--- @param step number
function UIHeroCollectionView:ShowTutorial(tutorial, step)
    if step == TutorialStep.SELECT_HERO_IN_COLLECTION then
        tutorial:ViewFocusCurrentTutorial(self.uiScroll.scroll.content:GetChild(0):
        GetComponent(ComponentName.UnityEngine_UI_Button), 0.5, nil, nil, TutorialHandType.CLICK)
    elseif step == TutorialStep.BACK_HERO_COLLECTION then
        tutorial:ViewFocusCurrentTutorial(self.config.buttonBack, 0.5,
                self.config.buttonBack.transform:GetChild(0), nil, tutorial:GetHandType(TutorialHandType.MOVE_CLICK))
    end
end

--- @return void
function UIHeroCollectionView:UpdateNotiLinking()
    NotificationCheckUtils.CheckNotiHeroLinking(self.config.notiLinking)
end

--- @return void
function UIHeroCollectionView:UpdateNotiTalent()
    NotificationCheckUtils.CheckNotiTalent(self.config.notyHeroList)
end

function UIHeroCollectionView:CheckActiveLinkingTab()
    --- @type FeatureConfigInBound
    local featureConfigInBound = zg.playerData:GetMethod(PlayerDataMethod.FEATURE_CONFIG)
    local linkingItem = featureConfigInBound:GetFeatureConfigInBound(FeatureType.HERO_LINKING)
    --- @type UITabItem
    local tabItem = self.tabDict:Get(HERO_LIST_TYPE.LINKING)
    if tabItem ~= nil then
        tabItem:SetActive(linkingItem:IsAvailableToShowButton())
    end
end

function UIHeroCollectionView:CheckActiveRegressionTab()
    --- @type FeatureConfigInBound
    local featureConfigInBound = zg.playerData:GetMethod(PlayerDataMethod.FEATURE_CONFIG)
    --- @type FeatureItemInBound
    local data = featureConfigInBound:GetFeatureConfigInBound(FeatureType.REGRESSION)
    --- @type UITabItem
    local tabItem = self.tabDict:Get(HERO_LIST_TYPE.REGRESSION)
    if tabItem ~= nil then
        tabItem:SetActive(data:IsAvailableToShowButton()
                and ClientConfigUtils.CheckUnlockMajorFeatureAndNotification(FeatureType.REGRESSION, false))
    end
end

function UIHeroCollectionView:IsAvailableToShowTab(tab)
    if tab == HERO_LIST_TYPE.REGRESSION
            or tab == HERO_LIST_TYPE.LINKING then
        --- @type FeatureConfigInBound
        local featureConfigInBound = zg.playerData:GetMethod(PlayerDataMethod.FEATURE_CONFIG)
        --- @type FeatureItemInBound
        local featureItemInBound
        if tab == HERO_LIST_TYPE.REGRESSION then
            featureItemInBound = featureConfigInBound:GetFeatureConfigInBound(FeatureType.REGRESSION)
        elseif tab == HERO_LIST_TYPE.LINKING then
            featureItemInBound = featureConfigInBound:GetFeatureConfigInBound(FeatureType.HERO_LINKING)
        end
        return featureItemInBound:IsAvailableToGoFeature()
    end
    return true
end

function UIHeroCollectionView:ResizeScroll(size)
    if size ~= nil then
        self.uiScroll:Resize(size, self.canPlayMotion)
        self.config.textEmpty.gameObject:SetActive(size == 0)
    else
        self.uiScroll:RefreshCells()
        self.config.textEmpty.gameObject:SetActive(self.model.heroSort:Count() == 0)
    end
end
