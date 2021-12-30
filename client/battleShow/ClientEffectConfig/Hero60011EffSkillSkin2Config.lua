--- hero_60011_eff_skill_skin_2
--- @class Hero60011EffSkillSkin2Config
Hero60011EffSkillSkin2Config = Class(Hero60011EffSkillSkin2Config)

--- @return void
--- @param transform UnityEngine_Transform
function Hero60011EffSkillSkin2Config:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform
	--- @type number
	self.timeLife = 2.667
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
	self.skeletonAnimation = self.transform:Find("Model"):GetComponent(ComponentName.Spine_Unity_SkeletonAnimation)
	self.defaultSpineAnim = "fxskill"

	--- @type List<ClientEffectVisual>
	self.listEffectVisual = nil
end

return Hero60011EffSkillSkin2Config
