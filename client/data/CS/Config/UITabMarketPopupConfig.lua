--- @class UITabMarketPopupConfig
UITabMarketPopupConfig = Class(UITabMarketPopupConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UITabMarketPopupConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.button = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_GameObject
	self.imageOn = self.transform:Find("on").gameObject
	--- @type UnityEngine_UI_Image
	self.noti = self.transform:Find("icon_dots"):GetComponent(ComponentName.UnityEngine_UI_Image)
end
