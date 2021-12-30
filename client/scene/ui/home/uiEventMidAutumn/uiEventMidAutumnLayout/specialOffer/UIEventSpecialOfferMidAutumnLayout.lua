require "lua.client.scene.ui.home.uiEventMidAutumn.uiEventMidAutumnLayout.specialOffer.UISpecialOfferMidAutumnItemView"

--- @class UIEventSpecialOfferMidAutumnLayout : UIEventMidAutumnLayout
UIEventSpecialOfferMidAutumnLayout = Class(UIEventSpecialOfferMidAutumnLayout, UIEventMidAutumnLayout)

--- @param view UIEventView
function UIEventSpecialOfferMidAutumnLayout:Ctor(view, midAutumnTab, anchor)
    --- @type EventMidAutumnModel
    self.eventMidAutumnModel = nil
    --- @type EventMidAutumnConfig
    self.eventConfig = nil
    --- @type UISpecialOfferMidAutumnConfig
    self.layoutConfig = nil
    --- @type UISpecialOfferMidAutumnItemView
    self.packList = nil

    UIEventMidAutumnLayout.Ctor(self, view, midAutumnTab, anchor)
end

function UIEventSpecialOfferMidAutumnLayout:OnShow()
    UIEventMidAutumnLayout.OnShow(self)
    for i = 1, self.packList:Count() do
        --- @type UISpecialOfferMidAutumnItemView
        local packItem = self.packList:Get(i)
        packItem:OnShow(i, self.eventMidAutumnModel.timeData.dataId)
    end
end

function UIEventSpecialOfferMidAutumnLayout:OnHide()
    UIEventMidAutumnLayout.OnHide(self)
end

function UIEventSpecialOfferMidAutumnLayout:InitLayoutConfig()
    local inst = PrefabLoadUtils.Instantiate("mid_autumn_special_offer", self.anchor)
    UIEventMidAutumnLayout.InitLayoutConfig(self, inst)

    --self.itemsTableView = ItemsTableView(self.layoutConfig.rewardAnchor)
    self:InitButtons()
    self:InitLocalization()
    self:InitPacks()
end

function UIEventSpecialOfferMidAutumnLayout:InitPacks()
    self.packList = List()
    self.eventMidAutumnModel = zg.playerData:GetEvents():GetEvent(EventTimeType.EVENT_MID_AUTUMN)
    for i = 1, self.layoutConfig.rectTrans.childCount do
        local packView = UISpecialOfferMidAutumnItemView(self.layoutConfig.rectTrans:GetChild(i - 1))
        self.packList:Add(packView)
    end
end


function UIEventSpecialOfferMidAutumnLayout:InitButtons()
end

function UIEventSpecialOfferMidAutumnLayout:InitLocalization()
end

