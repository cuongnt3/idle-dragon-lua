--- @class UIDomainCreateTeamConfig
UIDomainCreateTeamConfig = Class(UIDomainCreateTeamConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIDomainCreateTeamConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_InputField
	self.inputFieldUID = self.transform:Find("popup/InputField"):GetComponent(ComponentName.UnityEngine_UI_InputField)
	--- @type UnityEngine_UI_InputField
	self.inputFieldContent = self.transform:Find("popup/InputFieldContent"):GetComponent(ComponentName.UnityEngine_UI_InputField)
	--- @type UnityEngine_UI_Button
	self.buttonClose = self.transform:Find("popup/button_close"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonSend = self.transform:Find("popup/button_select"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.bgClose = self.transform:Find("bg_none"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.localizeTitle = self.transform:Find("popup/text_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeButton = self.transform:Find("popup/button_select/text_select"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.nameRequire = self.transform:Find("popup/InputField/name_require"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.descRequire = self.transform:Find("popup/InputFieldContent/desc_require"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
