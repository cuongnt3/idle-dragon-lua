--- @class UIGuildMarketLayout : UIMarketLayout
UIGuildMarketLayout = Class(UIGuildMarketLayout, UIMarketLayout)

--- @param view UIMarketView
--- @param marketType MarketType
function UIGuildMarketLayout:Ctor(view, marketType)
    UIMarketLayout.Ctor(self, view, marketType)
    self.playerDataMethod = PlayerDataMethod.GUILD_MARKET
    self.opCodeBuy = OpCode.GUILD_MARKET_BUY
    self.opCodeRefresh = OpCode.GUILD_MARKET_REFRESH
    self.opCodeUpgrade = OpCode.GUILD_MARKET_UPGRADE
    self.upgradeMoneyType = MoneyType.GUILD_MARKET_UPGRADE_COIN

    --- @type GuildMarketConfig
    self.marketConfig = ResourceMgr.GetGuildMarketConfig()
end

function UIGuildMarketLayout:FireTracking()
    TrackingUtils.AddFireBaseClickButtonEvent(FBEvents.BLACK_MARKET, "guild")
end

function UIGuildMarketLayout:SetUpLayout()
    self.view:EnableBg("bg_guild_market")
    self.view:SetUpMoneyBar(MoneyType.GEM, MoneyType.GUILD_BASIC_COIN, MoneyType.GUILD_PREMIUM_COIN)
    self.config.buttonTabAnchor.gameObject:SetActive(false)
end

--- @return boolean
function UIGuildMarketLayout:IsAvailableToRequest()
    local data = zg.playerData:GetMethod(PlayerDataMethod.GUILD_MARKET)
    return data == nil or data.marketItemList == nil
end

function UIGuildMarketLayout:RequestShopData()
    UIMarketLayout.RequestShopData(self)
    local onSuccess = function()
        self:OnLoadedShopData()
    end
    PlayerDataRequest.RequestAndCallback({ self.playerDataMethod }, onSuccess, SmartPoolUtils.LogicCodeNotification)
end

function UIGuildMarketLayout:OnLoadedShopData()
    self.modeShopDataInBound = zg.playerData:GetMethod(self.playerDataMethod)
    self.marketItemList = self.modeShopDataInBound.marketItemList
    self.marketConfig:LoadCsv(self.modeShopDataInBound.level)
    UIMarketLayout.OnLoadedShopData(self)
end

function UIGuildMarketLayout:UpdateTimeRefresh()
    self.config.textTimer.gameObject:SetActive(true)
    UIMarketLayout.UpdateTimeRefresh(self, function()
        --- @type EventTimeData
        local eventTime = zg.playerData:GetEvents():GetEvent(EventTimeType.GUILD_DUNGEON):GetTime()
        self.timeRefresh = eventTime.endTime - zg.timeMgr:GetServerTime()
    end, function ()
        local onSuccessUpdateEventTime = function()
            self:RequestShopData()
        end
        EventInBound.ValidateEventModel(onSuccessUpdateEventTime, true)
    end)
end

function UIGuildMarketLayout:ShowButtonRefresh()
    self.view:ShowRefreshPrice(
            ResourceLoadUtils.LoadMoneyIcon(self.marketConfig.refreshMoneyType),
            tostring(self.marketConfig.refreshPrice))
    UIMarketLayout.ShowButtonRefresh(self)
end

function UIGuildMarketLayout:ShowUpgradingBtn()
    UIMarketLayout.ShowUpgradingBtn(self)
    UIMarketLayout.ShowUpgradingProcess(self, LanguageUtils.LocalizeFeature(FeatureType.BLACK_MARKET))
end