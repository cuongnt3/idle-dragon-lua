--- @class UIRateFeedbackConfig
UIRateFeedbackConfig = Class(UIRateFeedbackConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIRateFeedbackConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.localizeNotRateContent = self.transform:Find("popup/text_rate_us_content"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeGoToFanpage = self.transform:Find("popup/bg_button_green_stroke/text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonClose = self.transform:Find("popup/button_close_rate_us_2"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonFanpage = self.transform:Find("popup/bg_button_green_stroke"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonBg = self.transform:Find("bg_none"):GetComponent(ComponentName.UnityEngine_UI_Button)
end
