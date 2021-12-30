--- @class LandStageItemConfig
LandStageItemConfig = Class(LandStageItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function LandStageItemConfig:Ctor(transform)
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
	--- @type UnityEngine_UI_Text
	self.textStage = self.transform:Find("text_stage"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.button = self.transform:Find("button"):GetComponent(ComponentName.UnityEngine_UI_Button)
end
