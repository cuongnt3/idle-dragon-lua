--- hero_10005_skin_id_10005001_skill_impact
--- @class Hero10005SkinId10005001SkillImpactConfig
Hero10005SkinId10005001SkillImpactConfig = Class(Hero10005SkinId10005001SkillImpactConfig)

--- @return void
--- @param transform UnityEngine_Transform
function Hero10005SkinId10005001SkillImpactConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform
	--- @type number
	self.timeLife = 3
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
	self.battleEffectType = ClientConfigUtils.DEFAULT_BATTLE_EFFECT_TYPE

	--- @type List<ClientEffectVisual>
	self.listEffectVisual = nil
end

return Hero10005SkinId10005001SkillImpactConfig
