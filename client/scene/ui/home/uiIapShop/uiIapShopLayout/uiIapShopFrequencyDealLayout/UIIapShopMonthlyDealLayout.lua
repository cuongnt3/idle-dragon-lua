--- @class UIIapShopMonthlyDealLayout : UIIapShopLimitedPackLayout
UIIapShopMonthlyDealLayout = Class(UIIapShopMonthlyDealLayout, UIIapShopLimitedPackLayout)

function UIIapShopMonthlyDealLayout:InitLayoutConfig()
    local inst = PrefabLoadUtils.Instantiate("banner_monthly_deal", self.config.bannerView)
    --- @type UIIapShopBannerConfig
    self.layoutConfig = UIBaseConfig(inst.transform)
    UIUtils.SetParent(self.layoutConfig.transform, self.config.bannerView)
    self.layoutConfig.rectTrans.anchoredPosition3D = U_Vector3(165, 250, 0)
end

function UIIapShopMonthlyDealLayout:SetTimeReset()
    local serverTime = zg.timeMgr:GetServerTime()
    local date = TimeUtils.GetOsDateFromSecWithFormatT(serverTime)
    if self.isWeeklyPacks == true then
        self.timeReset = ((7 - date.wday + 1) * TimeUtils.SecondADay)
                - (serverTime - TimeUtils.GetTimeStartDayFromSec(serverTime))
    else
        local startTimeOfMonth = TimeUtils.GetTimeStartDayFromSec(serverTime) - (date.day - 1) * TimeUtils.SecondADay
        local dayOfMonth = TimeUtils.GetDayOfMonth(date.month, date.year)
        local endTime = startTimeOfMonth + dayOfMonth * TimeUtils.SecondADay
        self.timeReset = endTime - serverTime
    end
end

function UIIapShopMonthlyDealLayout:SetUpLayout()
    UIIapShopLimitedPackLayout.SetUpLayout(self)
    self.layoutConfig.gameObject:SetActive(true)
end

function UIIapShopMonthlyDealLayout:InitLocalization()
    self.layoutConfig.bannerTittle.text = LanguageUtils.LocalizeCommon("monthly_packs")
end

function UIIapShopMonthlyDealLayout:OnHide()
    UIIapShopLimitedPackLayout.OnHide(self)
    self.layoutConfig.gameObject:SetActive(false)
end