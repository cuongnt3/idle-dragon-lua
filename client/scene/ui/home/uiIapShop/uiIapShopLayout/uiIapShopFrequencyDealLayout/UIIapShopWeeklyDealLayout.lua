--- @class UIIapShopWeeklyDealLayout : UIIapShopLimitedPackLayout
UIIapShopWeeklyDealLayout = Class(UIIapShopWeeklyDealLayout, UIIapShopLimitedPackLayout)

function UIIapShopWeeklyDealLayout:InitLayoutConfig()
    local inst = PrefabLoadUtils.Instantiate("banner_weekly_deal", self.config.bannerView)
    --- @type UIIapShopBannerConfig
    self.layoutConfig = UIBaseConfig(inst.transform)
    UIUtils.SetParent(self.layoutConfig.transform, self.config.bannerView)
    self.layoutConfig.rectTrans.anchoredPosition3D = U_Vector3(165, 250, 0)
end

function UIIapShopWeeklyDealLayout:SetTimeReset()
    local serverTime = zg.timeMgr:GetServerTime()
    local date = TimeUtils.GetOsDateFromSecWithFormatT(serverTime)
    self.timeReset = ((7 - date.wday + 1) * TimeUtils.SecondADay)
            - (serverTime - TimeUtils.GetTimeStartDayFromSec(serverTime))
end

function UIIapShopWeeklyDealLayout:SetUpLayout()
    UIIapShopLimitedPackLayout.SetUpLayout(self)
    self.layoutConfig.gameObject:SetActive(true)
end

function UIIapShopWeeklyDealLayout:InitLocalization()
    self.layoutConfig.bannerTittle.text = LanguageUtils.LocalizeCommon("weekly_packs")
end

function UIIapShopWeeklyDealLayout:OnHide()
    UIIapShopLimitedPackLayout.OnHide(self)
    self.layoutConfig.gameObject:SetActive(false)
end