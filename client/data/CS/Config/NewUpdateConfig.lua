--- @class NewUpdateConfig
NewUpdateConfig = Class(NewUpdateConfig)

--- @return void
--- @param transform UnityEngine_Transform
function NewUpdateConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonBackground = self.transform:Find("bg_none"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonClose = self.transform:Find("popup/bg_mini_infomation_pannel/button_close"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textTitle = self.transform:Find("popup/text_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textNoti = self.transform:Find("popup/bg_mini_infomation_pannel/bg_content/content/text_noti"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
