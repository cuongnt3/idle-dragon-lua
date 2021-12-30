--- @class UIRegisterAccountConfig
UIRegisterAccountConfig = Class(UIRegisterAccountConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIRegisterAccountConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_InputField
	self.inputAccount = self.transform:Find("popup/InputField"):GetComponent(ComponentName.UnityEngine_UI_InputField)
	--- @type UnityEngine_UI_InputField
	self.inputPassword = self.transform:Find("popup/InputField (1)"):GetComponent(ComponentName.UnityEngine_UI_InputField)
	--- @type UnityEngine_UI_InputField
	self.inputConfirmPassword = self.transform:Find("popup/InputField (2)"):GetComponent(ComponentName.UnityEngine_UI_InputField)
	--- @type UnityEngine_UI_Button
	self.buttonRegist = self.transform:Find("popup/login_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonFacebook = self.transform:Find("popup/bg_facekbook_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonClose = self.transform:Find("popup/button_close"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.backGround = self.transform:Find("bg_none"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.titleRegister = self.transform:Find("popup/text_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeAccount = self.transform:Find("popup/InputField/Placeholder"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizePassword = self.transform:Find("popup/InputField (1)/Placeholder"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeConfirmPassword = self.transform:Find("popup/InputField (2)/Placeholder"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeConfirm = self.transform:Find("popup/login_button/text_login"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeFacebook = self.transform:Find("popup/bg_facekbook_button/text_continue_with_facebook"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeNoteText = self.transform:Find("popup/note_text"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
