--- @class UIEventLunarNewYearLayout : UIEventLayout
UIEventLunarNewYearLayout = Class(UIEventLunarNewYearLayout, UIEventLayout)

--- @param view UIEventNewYearView
--- @param newYearTab LunarNewYearTab
--- @param anchor UnityEngine_RectTransform
function UIEventLunarNewYearLayout:Ctor(view, newYearTab, anchor)
    --- @type UIEventNewYearView
    self.view = view
    --- @type LunarNewYearTab
    self.newYearTab = newYearTab
    --- @type UnityEngine_RectTransform
    self.anchor = anchor
    --- @type UIBaseConfig
    self.layoutConfig = nil
    --- @type EventLunarNewYearModel
    self.eventModel = nil
    --- @type EventLunarNewYearConfig
    self.eventConfig = nil

    self.opCode = OpCode.EVENT_CHRISTMAS_EXCHANGE_RESOURCE

    self.moneyTypeShow = MoneyType.EVENT_CHRISTMAS_CANDY_BAR

    self.eventTimeType = EventTimeType.EVENT_LUNAR_NEW_YEAR
    UIEventLayout.Ctor(self, view, self.eventTimeType)
    self:InitLayoutConfig()
end

--- @param objectView UnityEngine_GameObject
function UIEventLunarNewYearLayout:InitLayoutConfig(objectView)
    self.layoutConfig = UIBaseConfig(objectView.transform)
    UIUtils.SetParent(objectView.transform, self.anchor)
    objectView:SetActive(true)
end

function UIEventLunarNewYearLayout:SetUpLayout()
    UIEventLayout.SetUpLayout(self)
    self.anchor.gameObject:SetActive(true)
end

function UIEventLunarNewYearLayout:SetEventBanner()
end

function UIEventLunarNewYearLayout:SetEventTitle()
end

function UIEventLunarNewYearLayout:SetEventDesc()
end

function UIEventLunarNewYearLayout:OnShow()
    self:GetModelConfig()
    UIEventLayout.OnShow(self)
end

function UIEventLunarNewYearLayout:OnHide()
    UIEventLayout.OnHide(self)
    self.anchor.gameObject:SetActive(false)
end

function UIEventLunarNewYearLayout:GetModelConfig()
    self.eventModel = zg.playerData:GetEvents():GetEvent(self.eventTimeType)
    if self.eventModel ~= nil then
        self.eventConfig = self.eventModel:GetConfig()
    end
end