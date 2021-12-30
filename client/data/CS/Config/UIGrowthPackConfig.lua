--- @class UIGrowthPackConfig
UIGrowthPackConfig = Class(UIGrowthPackConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIGrowthPackConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonUnlock = self.transform:Find("button_unlock"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonActive = self.transform:Find("button_active"):GetComponent(ComponentName.UnityEngine_UI_Button)
end
