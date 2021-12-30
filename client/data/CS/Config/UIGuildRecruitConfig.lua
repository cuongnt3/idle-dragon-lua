--- @class UIGuildRecruitConfig
UIGuildRecruitConfig = Class(UIGuildRecruitConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIGuildRecruitConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonSend = self.transform:Find("popup/button_send"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonClose = self.transform:Find("popup/button_close"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_InputField
	self.inputRecruit = self.transform:Find("popup/input_recruit"):GetComponent(ComponentName.UnityEngine_UI_InputField)
	--- @type UnityEngine_UI_Text
	self.textTitle = self.transform:Find("popup/text_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeInputRecruitInfo = self.transform:Find("popup/input_recruit/Placeholder"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeSend = self.transform:Find("popup/button_send/Text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.bgClose = self.transform:Find("bg_none"):GetComponent(ComponentName.UnityEngine_UI_Button)
end
