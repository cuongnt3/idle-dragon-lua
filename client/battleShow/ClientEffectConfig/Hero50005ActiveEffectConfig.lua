--- hero_50005_active_effect
--- @class Hero50005ActiveEffectConfig
Hero50005ActiveEffectConfig = Class(Hero50005ActiveEffectConfig)

--- @return void
--- @param transform UnityEngine_Transform
function Hero50005ActiveEffectConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform
	--- @type number
	self.timeLife = 1.8
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
	self.skeletonAnimation = self.transform:Find("view"):GetComponent(ComponentName.Spine_Unity_SkeletonAnimation)
	self.defaultSpineAnim = "eff_skill"

	--- @type List<ClientEffectVisual>
	self.listEffectVisual = nil
end

return Hero50005ActiveEffectConfig
