--- @class UIPopupNotificationResourceConfig
UIPopupNotificationResourceConfig = Class(UIPopupNotificationResourceConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIPopupNotificationResourceConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textTitle = self.transform:Find("popup/text_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textNoti = self.transform:Find("popup/text_noti"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.background = self.transform:Find("bg_none"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.button2 = self.transform:Find("popup/button_yes"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textButton2 = self.transform:Find("popup/button_yes/text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.item = self.transform:Find("popup/item_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
