--- @class StatHeroEvolveChangeConfig
StatHeroEvolveChangeConfig = Class(StatHeroEvolveChangeConfig)

--- @return void
--- @param transform UnityEngine_Transform
function StatHeroEvolveChangeConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.base = self.transform:Find("text_health"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.upgrade = self.transform:Find("text_health_stats_upgrade"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
