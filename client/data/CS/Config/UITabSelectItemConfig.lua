--- @class UITabSelectItemConfig
UITabSelectItemConfig = Class(UITabSelectItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UITabSelectItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textTabName = self.transform:Find("text_tab_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.button = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_GameObject
	self.notify = self.transform:Find("notify").gameObject
	--- @type UnityEngine_GameObject
	self.bgOff = self.transform:Find("bg_off").gameObject
	--- @type UnityEngine_GameObject
	self.bgOn = self.transform:Find("bg_on").gameObject
end
