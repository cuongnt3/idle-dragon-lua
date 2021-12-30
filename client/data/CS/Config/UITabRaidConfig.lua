--- @class UITabRaidConfig
UITabRaidConfig = Class(UITabRaidConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UITabRaidConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.button = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_GameObject
	self.choose = self.transform:Find("preview_button/choose").gameObject
	--- @type UnityEngine_GameObject
	self.notify = self.transform:Find("preview_button/notify").gameObject
end
