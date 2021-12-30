
--- @class UIEventEasterEggModel : UIBaseModel
UIEventEasterEggModel = Class(UIEventEasterEggModel, UIBaseModel)

--- @return void
function UIEventEasterEggModel:Ctor()
	UIBaseModel.Ctor(self, UIPopupName.UIEventEasterEgg, "ui_event_easter_egg")

	self.listSubEvent = List()
end

function UIEventEasterEggModel:InitListSubEvent()
	self.listSubEvent = List()
	self.listSubEvent:Add(EasterEggTab.CHECK_IN)
	self.listSubEvent:Add(EasterEggTab.BUNNY_CARD)
	self.listSubEvent:Add(EasterEggTab.LIMITED_OFFER)
	self.listSubEvent:Add(EasterEggTab.HUNT)
	self.listSubEvent:Add(EasterEggTab.BREAK)
end