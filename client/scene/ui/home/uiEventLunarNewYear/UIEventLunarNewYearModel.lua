
--- @class UIEventLunarNewYearModel : UIBaseModel
UIEventLunarNewYearModel = Class(UIEventLunarNewYearModel, UIBaseModel)

--- @return void
function UIEventLunarNewYearModel:Ctor()
	UIBaseModel.Ctor(self, UIPopupName.UIEventLunarNewYear, "ui_event_lunar_new_year")
end

function UIEventLunarNewYearModel:InitListSubEvent()
	self.listSubEvent = List()
	self.listSubEvent:Add(LunarNewYearTab.GOLDEN_TIME)
	self.listSubEvent:Add(LunarNewYearTab.ELITE_SUMMON)
	self.listSubEvent:Add(LunarNewYearTab.LOGIN)
	self.listSubEvent:Add(LunarNewYearTab.BUNDLE)
	self.listSubEvent:Add(LunarNewYearTab.EXCHANGE)
	self.listSubEvent:Add(LunarNewYearTab.SKIN_BUNDLE)
end