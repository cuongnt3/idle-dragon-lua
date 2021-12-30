--- @class UIRateConfig
UIRateConfig = Class(UIRateConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIRateConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.localizeRateTitle = self.transform:Find("rate_us_with_5_star_1/text_rate_us_title_content"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeRateContent = self.transform:Find("rate_us_with_5_star_1/text_rate_us_content"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeRate = self.transform:Find("rate_us_with_5_star_1/bg_button_green_stroke/text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeNotRate = self.transform:Find("rate_us_with_5_star_1/bg_button_red_stroke/text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonRate = self.transform:Find("rate_us_with_5_star_1/bg_button_green_stroke"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonNotRate = self.transform:Find("rate_us_with_5_star_1/bg_button_red_stroke"):GetComponent(ComponentName.UnityEngine_UI_Button)
end
