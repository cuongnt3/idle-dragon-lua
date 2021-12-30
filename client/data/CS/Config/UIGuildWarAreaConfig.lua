--- @class UIGuildWarAreaConfig
UIGuildWarAreaConfig = Class(UIGuildWarAreaConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIGuildWarAreaConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.backButton = self.transform:Find("back_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
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
	--- @type UnityEngine_UI_Button
	self.buttonInfo = self.transform:Find("manage_popup_setup/button_info"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.pageMember = self.transform:Find("manage_popup_setup/page_member"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_LoopVerticalScrollRect
	self.tableMember = self.transform:Find("manage_popup_setup/table_member"):GetComponent(ComponentName.UnityEngine_UI_LoopVerticalScrollRect)
end
