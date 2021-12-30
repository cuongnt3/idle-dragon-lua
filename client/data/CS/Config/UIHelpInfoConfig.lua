--- @class UIHelpInfoConfig
UIHelpInfoConfig = Class(UIHelpInfoConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIHelpInfoConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.bg = self.transform:Find("bg_none"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textTitle = self.transform:Find("popup/text_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textTapToClose = self.transform:Find("text_tap_to_close/text_tap_to_close"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.content = self.transform:Find("popup/Scroll View/Viewport/Content"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.scroll = self.transform:Find("popup/Scroll View"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
