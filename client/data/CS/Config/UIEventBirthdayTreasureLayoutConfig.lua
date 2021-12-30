--- @class UIEventBirthdayTreasureLayoutConfig
UIEventBirthdayTreasureLayoutConfig = Class(UIEventBirthdayTreasureLayoutConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIEventBirthdayTreasureLayoutConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textEventName = self.transform:Find("bg_banner_elune_journey/header/text_event_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.map = self.transform:Find("bg_banner_elune_journey/map"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.complete = self.transform:Find("bg_banner_elune_journey/chest"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.money = self.transform:Find("bg_banner_elune_journey/button_group/money"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.moveButton = self.transform:Find("bg_banner_elune_journey/button_group/move_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textPriceReplace = self.transform:Find("bg_banner_elune_journey/button_group/move_button/gem/icon_wood/text_price_replace"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textMove = self.transform:Find("bg_banner_elune_journey/button_group/move_button/gem/text_move"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textStart = self.transform:Find("bg_banner_elune_journey/bg_holder_start/text_start"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textGoal = self.transform:Find("bg_banner_elune_journey/goal_start/text_goal"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonHelp = self.transform:Find("bg_banner_elune_journey/header/icon_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.iconSelect = self.transform:Find("bg_banner_elune_journey/icon_select"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.bgSelect = self.transform:Find("bg_banner_elune_journey/bg_select"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.elune = self.transform:Find("bg_banner_elune_journey/elune"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.bgHolderStart = self.transform:Find("bg_banner_elune_journey/bg_holder_start"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
