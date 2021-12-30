--- @class UIEventPackageTabItemConfig
UIEventPackageTabItemConfig = Class(UIEventPackageTabItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIEventPackageTabItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textEventTime = self.transform:Find("bg_timer/text_timer"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textEventName = self.transform:Find("text_tab_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.icon = self.transform:Find("icon_tab"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_GameObject
	self.iconNew = self.transform:Find("notify").gameObject
	--- @type UnityEngine_UI_Button
	self.buttonSelect = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_GameObject
	self.bgOff = self.transform:Find("bg_off").gameObject
	--- @type UnityEngine_GameObject
	self.bgOn = self.transform:Find("bg_on").gameObject
	--- @type UnityEngine_RectTransform
	self.rectTrans = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_GameObject
	self.bgTimer = self.transform:Find("bg_timer").gameObject
end
