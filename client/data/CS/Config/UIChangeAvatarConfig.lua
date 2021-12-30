--- @class UIChangeAvatarConfig
UIChangeAvatarConfig = Class(UIChangeAvatarConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIChangeAvatarConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textTitle = self.transform:Find("popup/bg_main_pannel_1/text_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textBorder = self.transform:Find("popup/bg_main_pannel_1/text_border"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.tab = self.transform:Find("popup/bg_main_pannel_1/tab"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.backGround = self.transform:Find("bg_none"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.iconUser = self.transform:Find("popup/bg_main_pannel_1/icon_user"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.saveButton = self.transform:Find("popup/bg_main_pannel_1/save_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_LoopVerticalScrollRect
	self.scroll = self.transform:Find("popup/bg_main_pannel_1/VerticalScroll_Grid"):GetComponent(ComponentName.UnityEngine_UI_LoopVerticalScrollRect)
	--- @type UnityEngine_UI_LoopVerticalScrollRect
	self.scroll2 = self.transform:Find("popup/bg_main_pannel_1/VerticalScroll_Grid (1)"):GetComponent(ComponentName.UnityEngine_UI_LoopVerticalScrollRect)
	--- @type UnityEngine_RectTransform
	self.textTapToClose = self.transform:Find("text_tap_to_close"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.localizeAvatar = self.transform:Find("popup/bg_main_pannel_1/tab/avatar/bg_on/text_tab_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeAvatarOff = self.transform:Find("popup/bg_main_pannel_1/tab/avatar/bg_off/text_tab_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeBorder = self.transform:Find("popup/bg_main_pannel_1/tab/boder/bg_on/text_tab_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeBorderOff = self.transform:Find("popup/bg_main_pannel_1/tab/boder/bg_off/text_tab_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeCurrentAvatar = self.transform:Find("popup/bg_main_pannel_1/text_your_current_avatar"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeSelectAvatar = self.transform:Find("popup/bg_main_pannel_1/text_select_avatar"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeSelectBorder = self.transform:Find("popup/bg_main_pannel_1/text_select_avatar"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
