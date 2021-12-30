--- @class GuildDailyBossWorldConfig
GuildDailyBossWorldConfig = Class(GuildDailyBossWorldConfig)

--- @return void
--- @param transform UnityEngine_Transform
function GuildDailyBossWorldConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_Transform
	self.heroAnchor = self.transform:Find("hero_anchor")
	--- @type UnityEngine_Camera
	self.camera = self.transform:Find("camera"):GetComponent(ComponentName.UnityEngine_Camera)
end
