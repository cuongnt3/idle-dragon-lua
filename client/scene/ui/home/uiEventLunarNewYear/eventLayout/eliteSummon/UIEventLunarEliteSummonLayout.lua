--- @class UIEventLunarEliteSummonLayout : UIEventLunarNewYearLayout
UIEventLunarEliteSummonLayout = Class(UIEventLunarEliteSummonLayout, UIEventLunarNewYearLayout)

--- @param view UIEventXmasView
--- @param tab XmasTab
--- @param anchor UnityEngine_RectTransform
function UIEventLunarEliteSummonLayout:Ctor(view, tab, anchor)
    ---@type UIEventLunarEliteSummonLayoutConfig
    self.layoutConfig = nil
    --- @type ItemsTableView
    self.moneyTableView = nil
    --- @type EventLunarEliteSummonConfig
    self.eliteSummonConfig = nil
    --- @type Dictionary
    self.rewardRateDict = Dictionary()
    --- @type EventLunarEliteSummonData
    self.eliteSummonData = nil
    --- @type UIBarPercentView
    self.barPercent = nil
    --- @type RootIconView
    self.rootIconView = nil
    --- @type RootIconView
    self.accumulateRootIconView = nil
    --- @type MoneyType
    self.summonTicketType = MoneyType.EVENT_LUNAR_NEW_YEAR_SUMMON_TICKET
    self.pointType = MoneyType.EVENT_LUNAR_NEW_YEAR_SUMMON_POINT
    --- @type {rewardInBound : RewardInBound, pity}
    self.wishDataConfig = nil
    UIEventLunarNewYearLayout.Ctor(self, view, tab, anchor)
end

function UIEventLunarEliteSummonLayout:InitLayoutConfig()
    local inst = PrefabLoadUtils.Instantiate("lunar_new_year_elite_summon", self.anchor)
    UIEventLunarNewYearLayout.InitLayoutConfig(self, inst)
    self.moneyTableView = ItemsTableView(self.layoutConfig.moneyTableView, nil, UIPoolType.MoneyBarView)
    self:InitLocalization()
    self:InitButtonListener()
    self.barPercent = UIBarPercentView(self.layoutConfig.progress)
end

function UIEventLunarEliteSummonLayout:InitLocalization()
    self.layoutConfig.textSum1.text = string.format("%s %s", LanguageUtils.LocalizeCommon("summon"), 1)
    self.layoutConfig.textSum10.text = string.format("%s %s", LanguageUtils.LocalizeCommon("summon"), 10)
end

function UIEventLunarEliteSummonLayout:InitButtonListener()
    self.layoutConfig.buttonSum1.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        self:OnClickSummon(1)
    end)
    self.layoutConfig.buttonSum10.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        self:OnClickSummon(10)
    end)
    self.layoutConfig.chosenHeroRewardAnchor.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        self:OnClickSelectHeroReward()
    end)
end

function UIEventLunarEliteSummonLayout:OnShow()
    UIEventLunarNewYearLayout.OnShow(self)
    self:ShowMoneyBar()
    self:SetReward()
    self:CheckShowIconPrice()
    self.eventModel:CheckResourceOnSeason()
    self:ShowSelectedWishId()
    self:CheckUpdateTime()
end

function UIEventLunarEliteSummonLayout:SetUpLayout()
    UIEventLunarNewYearLayout.SetUpLayout(self)
end

function UIEventLunarEliteSummonLayout:ShowMoneyBar()
    local moneyList = List()
    moneyList:Add(self.summonTicketType)
    moneyList:Add(MoneyType.GEM)
    self.moneyTableView:SetData(moneyList)
end

function UIEventLunarEliteSummonLayout:SetReward()
    local listShowReward = self.eliteSummonConfig:GetListShowRewardRate()
    for i = 1, listShowReward:Count() do
        local index = i - 1
        if index < self.layoutConfig.rewardAnchor.childCount then
            local anchor = self.layoutConfig.rewardAnchor:GetChild(index)
            --- @type {rewardInBound : RewardInBound}
            local tableReward = listShowReward:Get(i)
            --- @type RootIconView
            local rootItemView = SmartPool.Instance:SpawnLuaUIPool(UIPoolType.RootIconView, anchor)
            rootItemView:SetIconData(tableReward.rewardInBound:GetIconData())
            rootItemView:RegisterShowInfo()
            self.rewardRateDict:Add(index, rootItemView)
        end
    end
end

function UIEventLunarEliteSummonLayout:OnHide()
    UIEventLunarNewYearLayout.OnHide(self)
    self.moneyTableView:Hide()
    self:RemoveUpdateTime()
    self:ReturnPoolRewardRate()
    self:ReturnPoolSelectedReward()
end

function UIEventLunarEliteSummonLayout:CheckUpdateTime()
    self:RemoveUpdateTime()

    if self.eliteSummonData:IsFreeSummonAvailable() then
        self.layoutConfig.textFreeSummon.text = LanguageUtils.LocalizeCommon("free_reward")
        self.timeRefresh = 0
    else
        self:StartUpdateTime()
    end
end

function UIEventLunarEliteSummonLayout:StartUpdateTime()
    --- @param isSetTime boolean
    self.updateTime = function(isSetTime)
        if isSetTime == true then
            self:SetTimeRefresh()
        else
            self.timeRefresh = self.timeRefresh - 1
        end
        local timeText = UIUtils.SetColorString(UIUtils.green_dark, TimeUtils.GetDeltaTime(self.timeRefresh))
        self.layoutConfig.textFreeSummon.text = string.format("%s %s",
                LanguageUtils.LocalizeCommon("free_summon"),
                timeText)
        if self.timeRefresh <= 0 then
            self:RemoveUpdateTime()
            self:CheckUpdateTime()
        end
    end
    zg.timeMgr:AddUpdateFunction(self.updateTime)
end

function UIEventLunarEliteSummonLayout:SetTimeRefresh()
    local nextAvailableSummonFree = TimeUtils.GetTimeStartDayFromSec(self.eliteSummonData.lastSummonFree) + TimeUtils.SecondADay
    self.timeRefresh = nextAvailableSummonFree - zg.timeMgr:GetServerTime()
end

function UIEventLunarEliteSummonLayout:RemoveUpdateTime()
    if self.updateTime then
        zg.timeMgr:RemoveUpdateFunction(self.updateTime)
    end
end

function UIEventLunarEliteSummonLayout:OnClickSummon(sumCount)
    if self.eliteSummonData.wishId < 0 then
        zg.audioMgr:PlaySfxUi(SfxUiType.DENIED)
        SmartPoolUtils.ShowShortNotification(LanguageUtils.LocalizeCommon("you_need_select_hero"))
        return
    end
    local priceId = self:FindPriceId(sumCount)
    local priceData = self.eliteSummonConfig:GetSummonPriceById(priceId)
    local isFree = self.timeRefresh <= 0
    if isFree == false or sumCount > 1 then
        if priceData.rewardInBound.id == MoneyType.GEM then
            local availableSumGem = self.eliteSummonConfig:GetMaxSummonByGem() - self.eliteSummonData.numberSummonByGem
            if availableSumGem <= 0 then
                zg.audioMgr:PlaySfxUi(SfxUiType.DENIED)
                SmartPoolUtils.ShowShortNotification(LanguageUtils.LocalizeCommon("out_of_turn"))
                return
            end
        end
        if InventoryUtils.IsEnoughSingleResourceRequirement(priceData.rewardInBound) == false then
            return
        end
    end
    local requestBuy = function()
        self.eliteSummonData:RequestSummon(priceId, function(rewardList, lunarSummonPoint)
            PopupUtils.ClaimAndShowRewardList(rewardList)
            if isFree == true and sumCount == 1 then
                self.eliteSummonData.lastSummonFree = zg.timeMgr:GetServerTime()
                self:CheckUpdateTime()
            else
                InventoryUtils.SubSingleRewardInBound(priceData.rewardInBound)
                if priceData.rewardInBound.id == MoneyType.GEM then
                    self.eliteSummonData.numberSummonByGem = self.eliteSummonData.numberSummonByGem + priceData.sumNumber
                end
            end

            self:CheckShowIconPrice()

            local currentPoint = self:GetCurrentProgressNumber()
            InventoryUtils.Sub(ResourceType.Money, self.pointType, currentPoint)
            InventoryUtils.Add(ResourceType.Money, self.pointType, lunarSummonPoint)

            self:ShowProgress()

            self.view:UpdateNotificationByTab(self.newYearTab)
        end)
    end

    if priceData.rewardInBound.id == MoneyType.GEM and (isFree == false or sumCount == 10) then
        PopupUtils.ShowPopupNotificationYesNo(LanguageUtils.LocalizeCommon("want_to_buy"), nil, requestBuy)
    else
        requestBuy()
    end
end

function UIEventLunarEliteSummonLayout:OnClickSelectReward()
    SmartPoolUtils.ShowShortNotification("open_list_selectable_reward")
end

function UIEventLunarEliteSummonLayout:GetModelConfig()
    UIEventLunarNewYearLayout.GetModelConfig(self)
    self.eliteSummonConfig = self.eventConfig.eventLunarEliteSummonConfig
    self.eliteSummonData = self.eventModel.eventLunarEliteSummonData
end

function UIEventLunarEliteSummonLayout:ReturnPoolRewardRate()
    --- @param v RootIconView
    for k, v in pairs(self.rewardRateDict:GetItems()) do
        v:ReturnPool()
        self.rewardRateDict:RemoveByKey(k)
    end
end

function UIEventLunarEliteSummonLayout:CheckShowIconPrice()
    local ticket = InventoryUtils.Get(ResourceType.Money, self.summonTicketType)
    local iconMoneyPrice
    self.layoutConfig.gemSummon:SetActive(ticket <= 0)
    if ticket > 0 then
        iconMoneyPrice = ResourceLoadUtils.LoadSpriteFromAtlas(ResourceLoadUtils.iconCoins, self.summonTicketType)
        self.layoutConfig.textGemSummon.text = ""
    else
        local maxSummonByGem = self.eliteSummonConfig:GetMaxSummonByGem()
        iconMoneyPrice = ResourceLoadUtils.LoadSpriteFromAtlas(ResourceLoadUtils.iconCoins, MoneyType.GEM)
        local remain = maxSummonByGem - self.eliteSummonData.numberSummonByGem
        local color = UIUtils.green_dark
        if remain <= 0 then
            color = UIUtils.red_dark
        end
        self.layoutConfig.textGemSummon.text = string.format("%s <color=#%s>%s/%s</color>",
                LanguageUtils.LocalizeCommon("gem_summon"),
                color, remain, maxSummonByGem)
    end
    self.layoutConfig.iconPrice1.sprite = iconMoneyPrice
    self.layoutConfig.iconPrice1:SetNativeSize()

    self.layoutConfig.iconPrice10.sprite = iconMoneyPrice
    self.layoutConfig.iconPrice10:SetNativeSize()

    if self.eliteSummonData:IsFreeSummonAvailable() then
        self.layoutConfig.textPriceSum1.text = LanguageUtils.LocalizeCommon("free")
    else
        local priceId = self:FindPriceId(1)
        local priceData = self.eliteSummonConfig:GetSummonPriceById(priceId)
        self.layoutConfig.textPriceSum1.text = tostring(priceData.rewardInBound.number)
    end

    local priceId = self:FindPriceId(10)
    local priceData = self.eliteSummonConfig:GetSummonPriceById(priceId)
    self.layoutConfig.textPriceSum10.text = tostring(priceData.rewardInBound.number)
end

function UIEventLunarEliteSummonLayout:OnClickSelectHeroReward()
    local data = {}
    data.callbackSelect = function(wishId)
        self.eliteSummonData:RequestSelectWish(wishId, function()
            self:ShowSelectedWishId()
        end)
    end
    data.wishDict = self.eventConfig.eventLunarEliteSummonConfig:GetWishListByDictionary()
    data.selectedWishId = self.eliteSummonData.wishId
    PopupMgr.ShowPopup(UIPopupName.UIEliteSummonPickWish, data)
end

function UIEventLunarEliteSummonLayout:ShowProgress()
    self.barPercent:SetActive(self.wishDataConfig ~= nil)
    if self.wishDataConfig ~= nil then
        local current = self:GetCurrentProgressNumber()
        local max = self.wishDataConfig.pity
        local percent = current / max

        self.barPercent:SetPercent(percent)
        self.barPercent:SetText(string.format("%s/%s", current, max))

        if current < max then
            self.layoutConfig.textSummonCount.text = string.format("%s %s", LanguageUtils.LocalizeCommon("need_summon_more"),
                    UIUtils.SetColorString(UIUtils.green_light, max - current))
        else
            self.layoutConfig.textSummonCount.text = LanguageUtils.LocalizeCommon("summon_more_to_gain_reward")
        end
    else
        self.layoutConfig.textSummonCount.text = LanguageUtils.LocalizeCommon("you_need_select_hero")
    end
end

function UIEventLunarEliteSummonLayout:ShowSelectedWishId()
    self:ReturnPoolSelectedReward()
    local wishId = self.eliteSummonData.wishId
    self.wishDataConfig = self.eliteSummonConfig:GetWishListByDictionary():Get(wishId)
    if wishId > 0 then
        self.rootIconView = SmartPool.Instance:SpawnLuaUIPool(UIPoolType.RootIconView, self.layoutConfig.chosenHeroRewardAnchor.transform)
        self.rootIconView:SetIconData(self.wishDataConfig.rewardInBound:GetIconData())

        self.accumulateRootIconView = SmartPool.Instance:SpawnLuaUIPool(UIPoolType.RootIconView, self.layoutConfig.accumulateRewardAnchor)
        self.accumulateRootIconView:SetIconData(self.wishDataConfig.rewardInBound:GetIconData())
        self.accumulateRootIconView:RegisterShowInfo()
    end
    self.layoutConfig.softTut:SetActive(wishId <= 0)
    self:ShowProgress()
end

function UIEventLunarEliteSummonLayout:FindPriceId(sumCount)
    local ticket = InventoryUtils.Get(ResourceType.Money, self.summonTicketType)
    local priceConfig = self.eliteSummonConfig:GetSummonPriceDict()
    --- @param v {sumNumber, rewardInBound : RewardInBound}
    for k, v in pairs(priceConfig:GetItems()) do
        if sumCount == v.sumNumber and
                ((v.rewardInBound.id == self.summonTicketType and ticket > 0)
                        or (v.rewardInBound.id ~= self.summonTicketType and ticket <= 0)) then
            return k
        end
    end
    return 1
end

function UIEventLunarEliteSummonLayout:ReturnPoolSelectedReward()
    if self.rootIconView then
        self.rootIconView:ReturnPool()
        self.rootIconView = nil
    end
    if self.accumulateRootIconView then
        self.accumulateRootIconView:ReturnPool()
        self.accumulateRootIconView = nil
    end
end

function UIEventLunarEliteSummonLayout:GetCurrentProgressNumber()
    return InventoryUtils.Get(ResourceType.Money, MoneyType.EVENT_LUNAR_NEW_YEAR_SUMMON_POINT)
end