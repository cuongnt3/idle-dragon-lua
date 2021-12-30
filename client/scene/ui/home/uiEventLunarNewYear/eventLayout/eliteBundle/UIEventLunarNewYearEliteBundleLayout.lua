--- @class UIEventLunarNewYearEliteBundleLayout : UIEventLunarNewYearLayout
UIEventLunarNewYearEliteBundleLayout = Class(UIEventLunarNewYearEliteBundleLayout, UIEventLunarNewYearLayout)

--- @param view UIEventLunarNewYearView
--- @param tab number
--- @param anchor UnityEngine_RectTransform
function UIEventLunarNewYearEliteBundleLayout:Ctor(view, tab, anchor)
    ---@type UIEventXmasExchangeConfig
    self.layoutConfig = nil
    --- @type UILoopScroll
    self.uiScroll = nil
    ---@type List
    self.listData = nil
    --- @type ItemsTableView
    self.moneyTableView = nil

    self.localizeRequireChap = ""
    UIEventLunarNewYearLayout.Ctor(self, view, tab, anchor)
end

function UIEventLunarNewYearEliteBundleLayout:InitLayoutConfig()
    local inst = PrefabLoadUtils.Instantiate("lunar_new_year_elite_bundle", self.anchor)
    UIEventLunarNewYearLayout.InitLayoutConfig(self, inst)
    self:InitItemShow()
    self:InitLocalization()

    self.moneyTableView = ItemsTableView(self.layoutConfig.moneyBarAnchor, nil, UIPoolType.MoneyBarView)
end

function UIEventLunarNewYearEliteBundleLayout:InitLocalization()
    UIEventLunarNewYearLayout.InitLocalization(self)
    self.layoutConfig.localizeEventName.text = LanguageUtils.LocalizeCommon("event_lunar_new_year_bundle_title")
    self.layoutConfig.localizeEventContent.text = LanguageUtils.LocalizeCommon("event_lunar_new_year_bundle_desc")
end

function UIEventLunarNewYearEliteBundleLayout:InitItemShow()
    --- @param obj IapTilePackItem
    --- @param index number
    local onUpdateItem = function(obj, index)
        local dataIndex = index + 1
        --- @type LimitedProduct
        local limitedProduct = self.listData:Get(dataIndex)
        obj:SetViewIconData(PackViewType.ELITE_BUNDLE, limitedProduct, function ()
            self:OnPurchaseSuccess()
        end)
    end
    self.uiScroll = UILoopScroll(self.layoutConfig.scrollVertical, UIPoolType.IapTilePackItem, onUpdateItem, onUpdateItem)
end

function UIEventLunarNewYearEliteBundleLayout:OnPurchaseSuccess()
    --self.view:CheckShowNotificationDailyDealXmas()
end

function UIEventLunarNewYearEliteBundleLayout:InitButtonListener()

end

function UIEventLunarNewYearEliteBundleLayout:OnShow()
    UIEventLunarNewYearLayout.OnShow(self)
    self.listData = ResourceMgr.GetPurchaseConfig():GetEliteBundleStore():GetPack(self.eventModel.timeData.dataId).packList
    self.uiScroll:Resize(self.listData:Count())
end


function UIEventLunarNewYearEliteBundleLayout:SetUpLayout()
    UIEventLunarNewYearLayout.SetUpLayout(self)
    --self:ShowMoneyBar()
end

function UIEventLunarNewYearEliteBundleLayout:ShowMoneyBar()
    local moneyList = List()
    moneyList:Add(MoneyType.EVENT_LUNAR_NEW_YEAR_ENVELOPE)
    self.moneyTableView:SetData(moneyList)
end

function UIEventLunarNewYearEliteBundleLayout:OnHide()
    UIEventLunarNewYearLayout.OnHide(self)
    self.uiScroll:Hide()
    self.moneyTableView:Hide()
end






