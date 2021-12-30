--- @class TabFormationConfig
TabFormationConfig = Class(TabFormationConfig)

--- @return void
--- @param transform UnityEngine_Transform
function TabFormationConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.button = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.rectTranform = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_RectTransform)
end
