--- @class BondLinkConfig
BondLinkConfig = Class(BondLinkConfig)

--- @return void
--- @param transform UnityEngine_Transform
function BondLinkConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_Transform
	self.mainBone = self.transform:Find("bond/main")
	--- @type UnityEngine_Transform
	self.targetBone = self.transform:Find("bond/target")
	--- @type Spine_Unity_SkeletonAnimation
	self.anim = self.transform:Find("bond"):GetComponent(ComponentName.Spine_Unity_SkeletonAnimation)
end
