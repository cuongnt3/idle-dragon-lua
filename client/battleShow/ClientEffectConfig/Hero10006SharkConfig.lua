--- hero_10006_shark
--- @class Hero10006SharkConfig
Hero10006SharkConfig = Class(Hero10006SharkConfig)

--- @return void
--- @param transform UnityEngine_Transform
function Hero10006SharkConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform
	--- @type number
	self.timeLife = 2.2
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
	self.skeletonAnimation = self.transform:Find("model"):GetComponent(ComponentName.Spine_Unity_SkeletonAnimation)
	self.defaultSpineAnim = "skill"

	--- @type List<ClientEffectVisual>
	self.listEffectVisual = nil
end

return Hero10006SharkConfig
