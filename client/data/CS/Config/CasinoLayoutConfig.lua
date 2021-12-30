--- @class CasinoLayoutConfig
CasinoLayoutConfig = Class(CasinoLayoutConfig)

--- @return void
--- @param transform UnityEngine_Transform
function CasinoLayoutConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type Spine_Unity_SkeletonAnimation
	self.npc = self.transform:Find("npc"):GetComponent(ComponentName.Spine_Unity_SkeletonAnimation)
	--- @type UnityEngine_Transform
	self.wheel = self.transform:Find("wheel")
	--- @type UnityEngine_GameObject
	self.effect = self.transform:Find("wheel/effect").gameObject
end
