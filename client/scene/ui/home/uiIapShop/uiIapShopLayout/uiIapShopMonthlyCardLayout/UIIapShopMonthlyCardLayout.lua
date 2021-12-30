require "lua.client.scene.ui.home.uiIapShop.uiIapShopLayout.uiIapShopMonthlyCardLayout.UISubscriptionPackView"

--- @class UIIapShopMonthlyCardLayout : UIIapShopLayout
UIIapShopMonthlyCardLayout = Class(UIIapShopMonthlyCardLayout, UIIapShopLayout)

--- @param view UIIapShopView
function UIIapShopMonthlyCardLayout:Ctor(view, parent)
    --- @type UISubscriptionPackView
    self.packList = nil
    --- @type UIIapShopMonthlyCardLayoutConfig
    self.layoutConfig = nil
    UIIapShopLayout.Ctor(self, view, parent)
end

--- @param parent UnityEngine_RectTransform
function UIIapShopMonthlyCardLayout:InitLayoutConfig(parent)
    local inst = PrefabLoadUtils.Instantiate("monthly_card_view", parent)
    self.layoutConfig = UIBaseConfig(inst.transform)
    UIUtils.SetParent(inst.transform, parent)
    inst:SetActive(true)

    self:InitPack()
end

function UIIapShopMonthlyCardLayout:InitPack()
    self.packList = List()
    for i = 2, self.layoutConfig.rectTrans.childCount do
        local packView = UISubscriptionPackView(self.layoutConfig.rectTrans:GetChild(i - 1), i)
        self.packList:Add(packView)
    end
end

--- @param iapShopTab IapShopTab
function UIIapShopMonthlyCardLayout:OnShow(iapShopTab)
    self.config.monthlyCardView.gameObject:SetActive(true)
    TrackingUtils.AddFireBaseClickButtonEvent(FBEvents.IAP_SHOP, "monthly_card")
    for i = 1, self.packList:Count() do
        local pack = self.packList:Get(i)
        pack:ShowPack()
    end
    self.isShowing = true
end

function UIIapShopMonthlyCardLayout:OnHide()
    self.isShowing = false
    for i = 1, self.packList:Count() do
        local pack = self.packList:Get(i)
        pack:Hide()
    end
end