--- @class UIPopupNotificationConfig
UIPopupNotificationConfig = Class(UIPopupNotificationConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIPopupNotificationConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textTitle = self.transform:Find("popup/text_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textNoti = self.transform:Find("popup/text_noti"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.buttonParent = self.transform:Find("popup/button").gameObject
	--- @type UnityEngine_UI_Button
	self.background = self.transform:Find("bg_none"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.button1 = self.transform:Find("popup/button/button_no"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textButton1 = self.transform:Find("popup/button/button_no/text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.button2 = self.transform:Find("popup/button/button_yes"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textButton2 = self.transform:Find("popup/button/button_yes/text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.item = self.transform:Find("popup/item"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
