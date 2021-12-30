--- @class TownCenterSpotConfig
TownCenterSpotConfig = Class(TownCenterSpotConfig)

--- @return void
--- @param transform UnityEngine_Transform
function TownCenterSpotConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type Spine_Unity_SkeletonAnimation
	self.anim = self.transform:Find("defense_town_center_1"):GetComponent(ComponentName.Spine_Unity_SkeletonAnimation)
	--- @type UnityEngine_Transform
	self.torso = self.transform:Find("defense_town_center_1/torso")
end
