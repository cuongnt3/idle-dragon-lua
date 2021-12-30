--- @class UINewPasswordConfig
UINewPasswordConfig = Class(UINewPasswordConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UINewPasswordConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textTitle = self.transform:Find("popup/text_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonClose = self.transform:Find("popup/button_close"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_InputField
	self.newPassword = self.transform:Find("popup/InputField (2)"):GetComponent(ComponentName.UnityEngine_UI_InputField)
	--- @type UnityEngine_UI_InputField
	self.confirmPassword = self.transform:Find("popup/InputField (3)"):GetComponent(ComponentName.UnityEngine_UI_InputField)
	--- @type UnityEngine_UI_Button
	self.buttonConfirm = self.transform:Find("popup/register_button/bg_button_green"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.localizeConfirm = self.transform:Find("popup/register_button/bg_button_green/text_register"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeNewPassword = self.transform:Find("popup/InputField (2)/Placeholder"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeConfirmPassword = self.transform:Find("popup/InputField (3)/Placeholder"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
