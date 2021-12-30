--- @class UIChangePasswordConfig
UIChangePasswordConfig = Class(UIChangePasswordConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIChangePasswordConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_InputField
	self.inputPassword = self.transform:Find("popup/InputField"):GetComponent(ComponentName.UnityEngine_UI_InputField)
	--- @type UnityEngine_UI_InputField
	self.inputNewPassword = self.transform:Find("popup/InputField (1)"):GetComponent(ComponentName.UnityEngine_UI_InputField)
	--- @type UnityEngine_UI_InputField
	self.inputConfirmNewPassword = self.transform:Find("popup/InputField (2)"):GetComponent(ComponentName.UnityEngine_UI_InputField)
	--- @type UnityEngine_UI_Button
	self.buttonConfirm = self.transform:Find("popup/login_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonCancel = self.transform:Find("popup/forget_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonClose = self.transform:Find("popup/button_close"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.backGround = self.transform:Find("bg_none"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.titleChangePassword = self.transform:Find("popup/text_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizePassword = self.transform:Find("popup/InputField/Placeholder"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeNewPassword = self.transform:Find("popup/InputField (1)/Placeholder"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeConfirmNewPassword = self.transform:Find("popup/InputField (2)/Placeholder"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeCancel = self.transform:Find("popup/forget_button/text_forget"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeConfirm = self.transform:Find("popup/login_button/text_login"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.noteRegister = self.transform:Find("popup/note_register"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
