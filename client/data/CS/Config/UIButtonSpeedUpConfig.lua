--- @class UIButtonSpeedUpConfig
UIButtonSpeedUpConfig = Class(UIButtonSpeedUpConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIButtonSpeedUpConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonSpeedUp = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textSpeed = self.transform:Find("border/text_speed"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.effectOn = self.transform:Find("effect_on"):GetComponent(ComponentName.UnityEngine_UI_Image)
end
