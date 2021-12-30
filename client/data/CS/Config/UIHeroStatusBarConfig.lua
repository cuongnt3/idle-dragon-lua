--- @class UIHeroStatusBarConfig
UIHeroStatusBarConfig = Class(UIHeroStatusBarConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIHeroStatusBarConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_Canvas
	self.canvas = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_Canvas)
	--- @type UnityEngine_RectTransform
	self.healthBarRect = self.transform:Find("bg_health_bar/health_bar"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Image
	self.powerBarImage = self.transform:Find("bg_power_bar/power_bar"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_RectTransform
	self.effectBarRect = self.transform:Find("effect_bar"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.levelText = self.transform:Find("faction_border/txt_level"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.factionBorder = self.transform:Find("faction_border"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_GameObject
	self.fxPower = self.transform:Find("bg_power_bar/fx_power").gameObject
	--- @type UnityEngine_RectTransform
	self.bgHealthBar = self.transform:Find("bg_health_bar"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.bgPowerBar = self.transform:Find("bg_power_bar"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_GameObject
	self.fxPowerBoss = self.transform:Find("bg_power_bar/fx_power_boss").gameObject
	--- @type UnityEngine_RectTransform
	self.redHealthBar = self.transform:Find("bg_health_bar/red_health_bar"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.markBarRect = self.transform:Find("mark_bar"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
