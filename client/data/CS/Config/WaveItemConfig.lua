--- @class WaveItemConfig
WaveItemConfig = Class(WaveItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function WaveItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_GameObject
	self.iconLandStageCurrent = self.transform:Find("icon_land_stage_current").gameObject
	--- @type UnityEngine_GameObject
	self.iconIdleSwordInCampaign = self.transform:Find("icon_idle_sword_in_campaign").gameObject
	--- @type UnityEngine_GameObject
	self.iconTick = self.transform:Find("icon_tick").gameObject
	--- @type UnityEngine_RectTransform
	self.healthBar = self.transform:Find("bg_health_bar/health_bar"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.button = self.transform:Find("icon_land_stage"):GetComponent(ComponentName.UnityEngine_UI_Button)
end
