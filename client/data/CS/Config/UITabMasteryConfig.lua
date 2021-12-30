--- @class UITabMasteryConfig
UITabMasteryConfig = Class(UITabMasteryConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UITabMasteryConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.button = self.transform:Find("button_tab_off"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Image
	self.imageOn = self.transform:Find("button_tab_on"):GetComponent(ComponentName.UnityEngine_UI_Image)
end
