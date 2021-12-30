--- @class UIGuildWarAreaSetupLayoutConfig
UIGuildWarAreaSetupLayoutConfig = Class(UIGuildWarAreaSetupLayoutConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIGuildWarAreaSetupLayoutConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.tittleMessageSetup = self.transform:Find("bg_rate_us_popup/tittle_message_setup"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.messageSetup = self.transform:Find("bg_rate_us_popup/message_setup"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonSort = self.transform:Find("manage_popup_setup/button_sort"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonNext = self.transform:Find("manage_popup_setup/button_next"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonPrev = self.transform:Find("manage_popup_setup/button_prev"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.pageMember = self.transform:Find("manage_popup_setup/page_member"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
