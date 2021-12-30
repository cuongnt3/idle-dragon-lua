--- @class BgMarketConfig
BgMarketConfig = Class(BgMarketConfig)

--- @return void
--- @param transform UnityEngine_Transform
function BgMarketConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type Spine_Unity_SkeletonGraphic
	self.npc = self.transform:Find("npc"):GetComponent(ComponentName.Spine_Unity_SkeletonGraphic)
end
