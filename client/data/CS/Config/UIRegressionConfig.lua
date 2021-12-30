--- @class UIRegressionConfig
UIRegressionConfig = Class(UIRegressionConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIRegressionConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonAsk = self.transform:Find("button_ask"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.slotButton = self.transform:Find("regression_content_slot/slot_hero_view"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.money = self.transform:Find("regression_content_slot/money"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_LoopHorizontalScrollRect
	self.scroll = self.transform:Find("regression_reward/scroll_reward"):GetComponent(ComponentName.UnityEngine_UI_LoopHorizontalScrollRect)
	--- @type UnityEngine_RectTransform
	self.reward = self.transform:Find("regression_reward/reward"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.buttonRegression = self.transform:Find("regression_reward/button_green"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textRegression = self.transform:Find("regression_reward/button_green/text_green"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textPopupContent = self.transform:Find("regression_reward/quest_reward_header2/text_popup_content"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.softTut = self.transform:Find("regression_content_slot/slot_hero_view/soft_tut").gameObject
	--- @type UnityEngine_GameObject
	self.softTutRegression = self.transform:Find("regression_reward/button_green/soft_tut").gameObject
end
