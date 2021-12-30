--- @class UILoginConfig
UILoginConfig = Class(UILoginConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UILoginConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_InputField
	self.inputAccount = self.transform:Find("popup/InputField"):GetComponent(ComponentName.UnityEngine_UI_InputField)
	--- @type UnityEngine_UI_InputField
	self.inputPassword = self.transform:Find("popup/InputField (1)"):GetComponent(ComponentName.UnityEngine_UI_InputField)
	--- @type UnityEngine_UI_Button
	self.buttonLogin = self.transform:Find("popup/button/login_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.login = self.transform:Find("popup/button/login_button"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.buttonForget = self.transform:Find("popup/button/forget_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.forget = self.transform:Find("popup/button/forget_button"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.buttonRegister = self.transform:Find("popup/button/register_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonClose = self.transform:Find("popup/button_close"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.backGround = self.transform:Find("bg_none"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonListAccount = self.transform:Find("popup/button_list_account (1)"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonCloseListAccount = self.transform:Find("popup/button_close_list_account"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonFacebook = self.transform:Find("popup/bg_facekbook_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonGoogle = self.transform:Find("popup/bg_facekbook_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.tectContent = self.transform:Find("popup/button_close_list_account/Scroll View/Viewport/Content"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.titleLogin = self.transform:Find("popup/text_login"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeLogin = self.transform:Find("popup/button/login_button/text_login"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeForget = self.transform:Find("popup/button/forget_button/text_forget"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeRegister = self.transform:Find("popup/button/register_button/text_forget"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizePassword = self.transform:Find("popup/InputField (1)/Placeholder"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeAccount = self.transform:Find("popup/InputField/Placeholder"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeFacebook = self.transform:Find("popup/bg_facekbook_button/text_continue_with_facebook"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
