--- @class UITabNewServerConfig
UITabNewServerConfig = Class(UITabNewServerConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UITabNewServerConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.button = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_GameObject
	self.imageOn = self.transform:Find("on").gameObject
	--- @type UnityEngine_GameObject
	self.iconOff = self.transform:Find("icon/icon_off/icon_off").gameObject
	--- @type UnityEngine_GameObject
	self.iconLock = self.transform:Find("icon/icon_off/icon_lock").gameObject
	--- @type UnityEngine_UI_Text
	self.textDay = self.transform:Find("icon/Text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeDay = self.transform:Find("on/text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.notice = self.transform:Find("icon_dots").gameObject
end
