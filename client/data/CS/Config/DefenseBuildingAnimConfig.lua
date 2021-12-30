--- @class DefenseBuildingAnimConfig
DefenseBuildingAnimConfig = Class(DefenseBuildingAnimConfig)

--- @return void
--- @param transform UnityEngine_Transform
function DefenseBuildingAnimConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type Spine_Unity_SkeletonAnimation
	self.anim = self.transform:Find(""):GetComponent(ComponentName.Spine_Unity_SkeletonAnimation)
	--- @type UnityEngine_Transform
	self.torso = self.transform:Find("torso")
	--- @type UnityEngine_MeshRenderer
	self.meshRenderer = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_MeshRenderer)
	--- @type UnityEngine_Transform
	self.launchPosition = self.transform:Find("torso/launch_position")
	--- @type UnityEngine_Transform
	self.launchImpact = self.transform:Find("torso/launch_impact")
	--- @type UnityEngine_Transform
	self.localImpact = self.transform:Find("torso/local_impact")
end
