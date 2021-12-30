--- hero_20022_skill_hand_skin_1
--- @class Hero20022SkillHandSkin1Config
Hero20022SkillHandSkin1Config = Class(Hero20022SkillHandSkin1Config)

--- @return void
--- @param transform UnityEngine_Transform
function Hero20022SkillHandSkin1Config:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform
	--- @type number
	self.timeLife = 1.667
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
	self.skeletonAnimation = self.transform:Find("view (1)"):GetComponent(ComponentName.Spine_Unity_SkeletonAnimation)
	self.defaultSpineAnim = "skill_2"

	--- @type List<ClientEffectVisual>
	self.listEffectVisual = nil
end

return Hero20022SkillHandSkin1Config
