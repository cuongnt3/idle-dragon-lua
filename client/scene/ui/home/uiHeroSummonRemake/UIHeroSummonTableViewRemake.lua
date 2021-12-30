--- @type number
local TIME_MOVE_TABLE = 0.8
--- @class UIHeroSummonTableViewRemake
UIHeroSummonTableViewRemake = Class(UIHeroSummonTableViewRemake)

--- @return void
--- @param uiTransform UnityEngine_RectTransform
--- @param view UIHeroSummonViewRemake
function UIHeroSummonTableViewRemake:Ctor(uiTransform, view)
    --- @type UnityEngine_RectTransform
    self.uiTransform = uiTransform
    --- @type HeroSummonData
    self.csv = ResourceMgr.GetHeroSummonConfig()
    --- @type EventRateUp
    self.eventRateUp = nil
    --- @type EventNewHeroSummonConfig
    self.eventNewHeroSummonConfig = nil
    --- @type EventNewHeroSummonConfig
    self.eventNewHeroSummonConfig2 = nil
    --- @type UIHeroSummonTableViewRemake
    self.view = view

    self:OnReadyCreate()
end

function UIHeroSummonTableViewRemake:OnReadyCreate()
    --- @type UIHeroSummonTableRemakeConfig
    ---@type UIHeroSummonTableRemakeConfig
    self.config = UIBaseConfig(self.uiTransform)
    ---@type UINewHeroSummonTableConfig
    self.newHeroConfig1 = UIBaseConfig(self.config.newHeroSummoner)
    ---@type UINewHeroSummonTableConfig
    self.newHeroConfig2 = UIBaseConfig(self.config.newHeroSummoner2)

    --self:InitMoneyBar()
    self:InitButtonListener()
    self:InitSummonPrice()
end

--function UIHeroSummonTableViewRemake:InitMoneyBar()
--    --- @type MoneyBarLocalView
--    self.moneyBarBasic = MoneyBarLocalView(self.config.textNumberBasicScroll)
--    self.moneyBarBasic:SetIconData(MoneyType.SUMMON_BASIC_SCROLL, false)
--    --- @type MoneyBarLocalView
--    self.moneyBarHeroic = MoneyBarLocalView(self.config.textNumberHeroicScroll)
--    self.moneyBarHeroic:SetIconData(MoneyType.SUMMON_HEROIC_SCROLL, false)
--    --- @type MoneyBarLocalView
--    self.moneyBarFriend = MoneyBarLocalView(self.config.textNumberFriendPoint)
--    self.moneyBarFriend:SetIconData(MoneyType.FRIEND_POINT, false)
--end

--- @return void
function UIHeroSummonTableViewRemake:InitButtonListener()
    self.config.buttonBasicSummon1.onClick:AddListener(function()
        --self.view:Summon(SummonType.Basic, 1)
        self:OnClickSummon(SummonType.Basic, 1)
    end)

    self.config.buttonBasicSummon10.onClick:AddListener(function()
        --self.view:Summon(SummonType.Basic, 10)
        self:OnClickSummon(SummonType.Basic, 10)
    end)

    self.config.buttonHeroicSummon1.onClick:AddListener(function()
        local priceData = self.csv:GetSummonPrice(SummonType.Heroic, 1)
        local isValid = InventoryUtils.IsValid(ResourceType.Money, MoneyType.SUMMON_HEROIC_SCROLL, priceData.summonPrice)
        --self.view:Summon(SummonType.Heroic, 1, not isValid)
        self:OnClickSummon(SummonType.Heroic, 1, not isValid)
    end)

    self.config.buttonHeroicSummon10.onClick:AddListener(function()
        local priceData = self.csv:GetSummonPrice(SummonType.Heroic, 10)
        local isValid = InventoryUtils.IsValid(ResourceType.Money, MoneyType.SUMMON_HEROIC_SCROLL, priceData.summonPrice)
        --self.view:Summon(SummonType.Heroic, 10, not isValid)
        self:OnClickSummon(SummonType.Heroic, 10, not isValid)
    end)

    self.config.buttonFriendshipSummon1.onClick:AddListener(function()
        --self.view:Summon(SummonType.Friendship, 1)
        self:OnClickSummon(SummonType.Friendship, 1)
    end)

    self.config.buttonFriendshipSummon10.onClick:AddListener(function()
        --self.view:Summon(SummonType.Friendship, 10)
        self:OnClickSummon(SummonType.Friendship, 10)
    end)
    self.config.rateupButtonGreen.onClick:AddListener(function()
        local priceData = self.eventRateUp:GetSummonRateUpPrice(SummonType.RateUp, 1)
        local isValid = InventoryUtils.IsValid(ResourceType.Money, MoneyType.SUMMON_HEROIC_SCROLL, priceData.summonPrice)
        self:OnClickSummon(SummonType.RateUp, 1, not isValid)
    end)
    self.config.rateupButtonRed.onClick:AddListener(function()
        local priceData = self.eventRateUp:GetSummonRateUpPrice(SummonType.RateUp, 10)
        local isValid = InventoryUtils.IsValid(ResourceType.Money, MoneyType.SUMMON_HEROIC_SCROLL, priceData.summonPrice)
        self:OnClickSummon(SummonType.RateUp, 10, not isValid)
    end)
    self.newHeroConfig1.newHeroButtonGreen.onClick:AddListener(function()
        local priceData = self.eventNewHeroSummonConfig:GetSummonRateUpPrice(SummonType.NewHero, 1)
        local isValid = InventoryUtils.IsValid(ResourceType.Money, MoneyType.EVENT_LUNAR_NEW_YEAR_SUMMON_TICKET, priceData.summonPrice)
        self:OnClickSummon(SummonType.NewHero, 1, not isValid)
    end)
    self.newHeroConfig1.newHeroButtonRed.onClick:AddListener(function()
        local priceData = self.eventNewHeroSummonConfig:GetSummonRateUpPrice(SummonType.NewHero, 10)
        local isValid = InventoryUtils.IsValid(ResourceType.Money, MoneyType.EVENT_LUNAR_NEW_YEAR_SUMMON_TICKET, priceData.summonPrice)
        self:OnClickSummon(SummonType.NewHero, 10, not isValid)
    end)
    self.newHeroConfig2.newHeroButtonGreen.onClick:AddListener(function()
        local priceData = self.eventNewHeroSummonConfig2:GetSummonRateUpPrice(SummonType.NewHero2, 1)
        local isValid = InventoryUtils.IsValid(ResourceType.Money, MoneyType.EVENT_LUNAR_NEW_YEAR_SUMMON_TICKET, priceData.summonPrice)
        self:OnClickSummon(SummonType.NewHero2, 1, not isValid)
    end)
    self.newHeroConfig2.newHeroButtonRed.onClick:AddListener(function()
        local priceData = self.eventNewHeroSummonConfig2:GetSummonRateUpPrice(SummonType.NewHero2, 10)
        local isValid = InventoryUtils.IsValid(ResourceType.Money, MoneyType.EVENT_LUNAR_NEW_YEAR_SUMMON_TICKET, priceData.summonPrice)
        self:OnClickSummon(SummonType.NewHero2, 10, not isValid)
    end)
end

function UIHeroSummonTableViewRemake:OnClickSummon(summonType, quantity, isUseGem)
    self.view:Summon(summonType, quantity, isUseGem, self)
end

--- @return void
function UIHeroSummonTableViewRemake:InitSummonPrice()
    UIHeroSummonViewRemake.SetScrollInfo(self.config.iconBasicScroll1, self.config.textPriceBasicSummon1, SummonType.Basic, 1)
    UIHeroSummonViewRemake.SetScrollInfo(self.config.iconBasicScroll10, self.config.textPriceBasicSummon10, SummonType.Basic, 10)

    UIHeroSummonViewRemake.SetScrollInfo(self.config.iconFriendshipScroll1, self.config.textPriceFriendSummon1, SummonType.Friendship, 1)
    UIHeroSummonViewRemake.SetScrollInfo(self.config.iconFriendshipScroll10, self.config.textPriceFriendSummon10, SummonType.Friendship, 10)
end

--- @return void
function UIHeroSummonTableViewRemake:Show()
    self:SetEventRateUp()
    self:SetEventNewHero()
    self:SetMoneyInfo()
    self:SetActive(true)
    self.view.uiPreviewHeroSummon:PlayBeforeSummon()
end
function UIHeroSummonTableViewRemake:SetEventRateUp()
    if self.view:IsRateUpOpening() then
        self.eventRateUp = zg.playerData:GetEvents():GetEvent(EventTimeType.EVENT_RATE_UP):GetConfig()
    end
end
function UIHeroSummonTableViewRemake:SetEventNewHero()
    if self.view:IsNewHeroOpening() then
        self.eventNewHeroSummonConfig = zg.playerData:GetEvents():GetEvent(EventTimeType.EVENT_NEW_HERO_SUMMON):GetConfig()
    end
    if self.view:IsNewHero2Opening() then
        self.eventNewHeroSummonConfig2 = zg.playerData:GetEvents():GetEvent(EventTimeType.EVENT_NEW_HERO_RATE_UP):GetConfig()
    end
end
function UIHeroSummonTableViewRemake:SetActive(enable)
    self.config.gameObject:SetActive(enable)
end

function UIHeroSummonTableViewRemake:SetMoneyInfo()
    self:SetNumberScroll(MoneyType.SUMMON_BASIC_SCROLL)
    self:SetNumberScroll(MoneyType.SUMMON_HEROIC_SCROLL)
    self:SetNumberScroll(MoneyType.FRIEND_POINT)
    self:SetNumberScroll(MoneyType.EVENT_LUNAR_NEW_YEAR_SUMMON_TICKET)
end

----- @param type MoneyType
function UIHeroSummonTableViewRemake:SetNumberScroll(type)
    local quantity = InventoryUtils.GetMoney(type)
    if type == MoneyType.EVENT_LUNAR_NEW_YEAR_SUMMON_TICKET then
        if self.view.currentSummonType == SummonType.NewHero then
            UIHeroSummonViewRemake.SetScrollInfo(self.newHeroConfig1.iconScrollNewHero1, self.newHeroConfig1.textNewHeroPrice, self.view.currentSummonType, 1)
            UIHeroSummonViewRemake.SetScrollInfo(self.newHeroConfig1.iconScrollNewHero10, self.newHeroConfig1.textNewHeroPrice10, self.view.currentSummonType, 10)
        elseif self.view.currentSummonType == SummonType.NewHero2 then
            UIHeroSummonViewRemake.SetScrollInfo(self.newHeroConfig2.iconScrollNewHero1, self.newHeroConfig2.textNewHeroPrice, self.view.currentSummonType, 1)
            UIHeroSummonViewRemake.SetScrollInfo(self.newHeroConfig2.iconScrollNewHero10, self.newHeroConfig2.textNewHeroPrice10, self.view.currentSummonType, 10)
        end
    end
    if type == MoneyType.SUMMON_HEROIC_SCROLL then
        if self.view:IsRateUpOpening() then
            UIHeroSummonViewRemake.SetScrollInfo(self.config.iconRateUpScroll, self.config.textRateUpPrice, SummonType.RateUp, 1)
            UIHeroSummonViewRemake.SetScrollInfo(self.config.iconRateUpScroll10, self.config.textRateUpPrice10, SummonType.RateUp, 10)
        end
        UIHeroSummonViewRemake.SetScrollInfo(self.config.iconHeroicScroll1, self.config.textPriceHeroicSummon1, SummonType.Heroic, 1)
        UIHeroSummonViewRemake.SetScrollInfo(self.config.iconHeroicScroll10, self.config.textPriceHeroicSummon10, SummonType.Heroic, 10)
    end
end

function UIHeroSummonTableViewRemake:SetFreeStatusBasic(time, textNotification)
    self:SetTextFreeButtonBasic(time <= 0)
    self:SetTextFreeCountDown(time, self.config.textBasicTime, textNotification)
end

function UIHeroSummonTableViewRemake:SetFreeStatusHeroic(time, textNotification)
    self:SetTextFreeButtonHeroic(time <= 0)
    self:SetTextFreeCountDown(time, self.config.textHeroicTime, textNotification)
end

function UIHeroSummonTableViewRemake:SetFreeStatusNewHero(time, textNotification)
    self:SetTextFreeButtonNewHero(time <= 0)
    self:SetTextFreeCountDown(time, self.newHeroConfig1.textNewHeroTime, textNotification)
end

function UIHeroSummonTableViewRemake:SetFreeStatusNewHero2(time, textNotification)
    self:SetTextFreeButtonNewHero2(time <= 0)
    self:SetTextFreeCountDown(time, self.newHeroConfig2.textNewHeroTime, textNotification)
end

--- @return void
--- @param textTime UnityEngine_UI_Text
function UIHeroSummonTableViewRemake:SetTextFreeCountDown(time, textTime, textNotification)
    if time <= 0 then
        textTime.transform.parent.gameObject:SetActive(false)
        textTime.enabled = false
        textNotification.gameObject:SetActive(true)
    else
        textTime.enabled = true
        textTime.transform.parent.gameObject:SetActive(true)
        textNotification.gameObject:SetActive(false)
        UIUtils.AlignText(textTime)
        textTime.text = string.format(LanguageUtils.LocalizeCommon("free_x"), TimeUtils.SecondsToClock(time))
    end
end

function UIHeroSummonTableViewRemake:SetTextFreeButtonBasic(enable)
    self.config.textBasicSummonFree.gameObject:SetActive(enable)
    self.config.basicScroll:SetActive(not enable)
end

function UIHeroSummonTableViewRemake:SetTextFreeButtonHeroic(enable)
    self.config.textHeroicSummonFree.gameObject:SetActive(enable)
    self.config.heroicScroll:SetActive(not enable)
end

function UIHeroSummonTableViewRemake:SetTextFreeButtonNewHero(enable)
    self.newHeroConfig1.textNewHeroFree.gameObject:SetActive(enable)
    self.newHeroConfig1.newHeroScroll:SetActive(not enable)
end

function UIHeroSummonTableViewRemake:SetTextFreeButtonNewHero2(enable)
    self.newHeroConfig2.textNewHeroFree.gameObject:SetActive(enable)
    self.newHeroConfig2.newHeroScroll:SetActive(not enable)
end

--- @return void
function UIHeroSummonTableViewRemake:Hide()
    Coroutine.start(function()
        coroutine.waitforseconds(TIME_MOVE_TABLE)
        self.config.gameObject:SetActive(false)
    end)
end