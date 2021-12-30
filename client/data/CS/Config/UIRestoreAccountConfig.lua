--- @class UIRestoreAccountConfig
UIRestoreAccountConfig = Class(UIRestoreAccountConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIRestoreAccountConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonRegister = self.transform:Find("popup/button_parent/button/button_register"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonRestore = self.transform:Find("popup/button_parent/button/button_restore"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonLogin = self.transform:Find("popup/button_parent/button/button_login"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textNoti = self.transform:Find("popup/text_noti"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.titleNotice = self.transform:Find("popup/bg_main_pannel_1 (1)/text_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeRegister = self.transform:Find("popup/button_parent/button/button_register/text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeRestore = self.transform:Find("popup/button_parent/button/button_restore/text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeLogin = self.transform:Find("popup/button_parent/button/button_login/text"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
