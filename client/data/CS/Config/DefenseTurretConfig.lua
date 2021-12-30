--- @class DefenseTurretConfig
DefenseTurretConfig = Class(DefenseTurretConfig)

--- @return void
--- @param transform UnityEngine_Transform
function DefenseTurretConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type Spine_Unity_SkeletonAnimation
	self.anim = self.transform:Find("anim"):GetComponent(ComponentName.Spine_Unity_SkeletonAnimation)
end
