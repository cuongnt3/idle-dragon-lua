--- @class UIEmailVerifyConfig
UIEmailVerifyConfig = Class(UIEmailVerifyConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIEmailVerifyConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonClose = self.transform:Find("popup/button_close"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonBg = self.transform:Find("bg_none"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textTitle = self.transform:Find("popup/text_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_InputField
	self.inputField = self.transform:Find("popup/email_type_box/InputField"):GetComponent(ComponentName.UnityEngine_UI_InputField)
	--- @type UnityEngine_UI_Button
	self.buttonConfirm = self.transform:Find("popup/register_button/bg_button_green"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.localizeEmail = self.transform:Find("popup/email_type_box/text_email"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeEmailInput = self.transform:Find("popup/email_type_box/InputField/Placeholder"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeConfirm = self.transform:Find("popup/register_button/bg_button_green/text_register"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
