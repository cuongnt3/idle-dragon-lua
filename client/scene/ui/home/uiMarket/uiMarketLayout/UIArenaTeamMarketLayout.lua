--- @class UIArenaTeamMarketLayout : UIMarketLayout
UIArenaTeamMarketLayout = Class(UIArenaTeamMarketLayout, UIMarketLayout)

--- @param view UIMarketView
--- @param marketType MarketType
--- @param tabAnchor UnityEngine_RectTransform
function UIArenaTeamMarketLayout:Ctor(view, marketType, tabAnchor)
    UIMarketLayout.Ctor(self, view, marketType)
    self.playerDataMethod = PlayerDataMethod.ARENA_TEAM_MARKET
    self.opCodeBuy = OpCode.ARENA_TEAM_MARKET_BUY
    self.opCodeUpgrade = OpCode.ARENA_TEAM_MARKET_UPGRADE
    self.upgradeMoneyType = MoneyType.ARENA_TEAM_MARKET_UPGRADE_COIN

    --- @type ArenaTeamMarketConfig
    self.marketConfig = ResourceMgr.GetArenaTeamMarket()
    --- @type UnityEngine_UI_Text
    self.textTab = tabAnchor:Find("on/text"):GetComponent(ComponentName.UnityEngine_UI_Text)
end

function UIArenaTeamMarketLayout:InitLocalization()
    UIMarketLayout.InitLocalization(self)
    self.textTab.text = LanguageUtils.LocalizeCommon("arena_team_shop")
end

function UIArenaTeamMarketLayout:FireTracking()
    TrackingUtils.AddFireBaseClickButtonEvent(FBEvents.BLACK_MARKET, "arena_team")
end

function UIArenaTeamMarketLayout:SetUpLayout()
    self.view:EnableBg("bg_black_market")
    self.config.buttonTabAnchor.gameObject:SetActive(true)
    self.view:SetUpMoneyBar(MoneyType.ARENA_TEAM_COIN)
    self.view.tab:HighlightTabByIndex(self.marketType)
end

--- @return boolean
function UIArenaTeamMarketLayout:IsAvailableToRequest()
    local data = zg.playerData:GetMethod(self.playerDataMethod)
    return data == nil or data.marketItemList == nil
end

function UIArenaTeamMarketLayout:RequestShopData()
    UIMarketLayout.RequestShopData(self)
    local onSuccess = function()
        self:OnLoadedShopData()
    end
    PlayerDataRequest.RequestAndCallback({ self.playerDataMethod }, onSuccess, SmartPoolUtils.LogicCodeNotification)
end

function UIArenaTeamMarketLayout:OnLoadedShopData()
    self.modeShopDataInBound = zg.playerData:GetMethod(self.playerDataMethod)
    self.marketItemList = self.modeShopDataInBound.marketItemList
    self.marketConfig:LoadCsv(self.modeShopDataInBound.level)
    UIMarketLayout.OnLoadedShopData(self)
end

function UIArenaTeamMarketLayout:UpdateTimeRefresh()
    self.config.textTimer.gameObject:SetActive(true)
    UIMarketLayout.UpdateTimeRefresh(self, function()
        --- @type EventTimeData
        local eventTime = zg.playerData:GetEvents():GetEvent(EventTimeType.ARENA_TEAM):GetTime()
        self.timeRefresh = eventTime.endTime - zg.timeMgr:GetServerTime()
    end,function()
        local onSuccessUpdateEventTime = function()
            self:OnShow()
        end
        EventInBound.ValidateEventModel(onSuccessUpdateEventTime, true)
    end)
end

function UIArenaTeamMarketLayout:ShowButtonRefresh()
    self.view:ShowRefreshPrice(
            ResourceLoadUtils.LoadMoneyIcon(self.marketConfig.refreshMoneyType),
            tostring(self.marketConfig.refreshPrice))
    UIMarketLayout.ShowButtonRefresh(self)
end

function UIArenaTeamMarketLayout:ShowUpgradingBtn()
    UIMarketLayout.ShowUpgradingBtn(self)
    UIMarketLayout.ShowUpgradingProcess(self, LanguageUtils.LocalizeCommon("arena_team_shop"))
end