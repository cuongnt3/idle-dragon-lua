--- @class UIFanpageNavigatorConfig
UIFanpageNavigatorConfig = Class(UIFanpageNavigatorConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIFanpageNavigatorConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonClose = self.transform:Find("popup/button_close"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textTitle = self.transform:Find("popup/text_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonFanpage = self.transform:Find("popup/yes_button/bg_button_green"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.localizeFanpage = self.transform:Find("popup/yes_button/bg_button_green/text_yes"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeNoticeFanpage = self.transform:Find("popup/text_notice"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
