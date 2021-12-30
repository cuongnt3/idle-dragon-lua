--- @class UIEventLunarNewYearExchangeLayout : UIEventLunarNewYearLayout
UIEventLunarNewYearExchangeLayout = Class(UIEventLunarNewYearExchangeLayout, UIEventLunarNewYearLayout)

--- @param view UIEventLunarNewYearView
--- @param tab number
--- @param anchor UnityEngine_RectTransform
function UIEventLunarNewYearExchangeLayout:Ctor(view, tab, anchor)
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

function UIEventLunarNewYearExchangeLayout:InitLayoutConfig()
    local inst = PrefabLoadUtils.Instantiate("lunar_new_year_exchange", self.anchor)
    UIEventLunarNewYearLayout.InitLayoutConfig(self, inst)
    self:InitItemShow()
    self:InitLocalization()

    self.moneyTableView = ItemsTableView(self.layoutConfig.moneyBarAnchor, nil, UIPoolType.MoneyBarView)
end

function UIEventLunarNewYearExchangeLayout:InitLocalization()
    UIEventLunarNewYearLayout.InitLocalization(self)
    self.layoutConfig.localizeEventName.text = LanguageUtils.LocalizeCommon("event_lunar_new_year_exchange_title")
    self.layoutConfig.localizeEventContent.text = LanguageUtils.LocalizeCommon("event_lunar_new_year_exchange_desc")
end

function UIEventLunarNewYearExchangeLayout:InitItemShow()
    --- @param obj ExchangeMidAutumnItemView
    --- @param index number
    local onUpdateItem = function(obj, index)
        ---@type ExchangeEventConfig
        local exchangeData = self.listData:Get(index + 1)
        obj:SetIconData(OpCode.EVENT_LUNAR_NEW_YEAR_EXCHANGE, exchangeData, self.eventModel:GetNumberBuy(EventActionType.LUNAR_NEW_YEAR_EXCHANGE, exchangeData.id),
                function(number)
                    self.eventModel:AddNumberBuy(EventActionType.LUNAR_NEW_YEAR_EXCHANGE, exchangeData.id, number)
                end)
    end
    self.uiScroll = UILoopScroll(self.layoutConfig.scrollVertical, UIPoolType.ExchangeMidAutumnItemView, onUpdateItem, onUpdateItem)
end

function UIEventLunarNewYearExchangeLayout:InitButtonListener()

end

function UIEventLunarNewYearExchangeLayout:OnShow()
    UIEventLunarNewYearLayout.OnShow(self)
    self.listData = self.eventConfig:GetListExchangeConfig()
    self.uiScroll:Resize(self.listData:Count())
end


function UIEventLunarNewYearExchangeLayout:SetUpLayout()
    UIEventLunarNewYearLayout.SetUpLayout(self)
    self:ShowMoneyBar()
end

function UIEventLunarNewYearExchangeLayout:ShowMoneyBar()
    local moneyList = List()
    moneyList:Add(MoneyType.EVENT_LUNAR_NEW_YEAR_ENVELOPE)
    self.moneyTableView:SetData(moneyList)
end

function UIEventLunarNewYearExchangeLayout:OnHide()
    UIEventLunarNewYearLayout.OnHide(self)
    self.uiScroll:Hide()
    self.moneyTableView:Hide()
end






