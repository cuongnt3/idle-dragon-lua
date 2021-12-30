
--- @class UIEventBirthdayModel : UIBaseModel
UIEventBirthdayModel = Class(UIEventBirthdayModel, UIBaseModel)

--- @return void
function UIEventBirthdayModel:Ctor()
	UIBaseModel.Ctor(self, UIPopupName.UIEventBirthday, "ui_event_birthday")
end

function UIEventBirthdayModel:InitListSubEvent()
	self.listSubEvent = List()
	self.listSubEvent:Add(EventBirthdayTab.CHECK_IN)
	self.listSubEvent:Add(EventBirthdayTab.WHEEL)
	self.listSubEvent:Add(EventBirthdayTab.BUNDLE)
	self.listSubEvent:Add(EventBirthdayTab.EXCHANGE)
end