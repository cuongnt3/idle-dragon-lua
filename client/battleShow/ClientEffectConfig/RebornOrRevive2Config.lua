--- reborn_or_revive_2
--- @class RebornOrRevive2Config
RebornOrRevive2Config = Class(RebornOrRevive2Config)

--- @return void
--- @param transform UnityEngine_Transform
function RebornOrRevive2Config:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform
	--- @type number
	self.timeLife = 2
	--- @type number
	self.delayDespawnOnRelease = -1
	--- @type number
	self.anchor = ClientConfigUtils.FOOT_ANCHOR
	--- @type boolean
	self.isSyncLayerToTarget = false
	--- @type boolean
	self.isChildTarget = false
	--- @type UnityEngine_GameObject
	self.mainVisual = nil

	--- @type number
	self.battleEffectType = ClientConfigUtils.SPINE_BATTLE_EFFECT_TYPE
	self.skeletonAnimation = self.transform:Find("wing"):GetComponent(ComponentName.Spine_Unity_SkeletonAnimation)
	self.defaultSpineAnim = "reborn"

	--- @type List<ClientEffectVisual>
	self.listEffectVisual = nil
end

return RebornOrRevive2Config
