--- @class BattleRewardChestConfig
BattleRewardChestConfig = Class(BattleRewardChestConfig)

--- @return void
--- @param transform UnityEngine_Transform
function BattleRewardChestConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_Transform
	self.move = self.transform:Find("SkeletonUtility-Root/root/move")
	--- @type UnityEngine_Transform
	self.bone9 = self.transform:Find("SkeletonUtility-Root/root/bone9")
	--- @type Spine_Unity_SkeletonAnimation
	self.anim = self.transform:Find(""):GetComponent(ComponentName.Spine_Unity_SkeletonAnimation)
	--- @type UnityEngine_MeshRenderer
	self.meshRenderer = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_MeshRenderer)
end
