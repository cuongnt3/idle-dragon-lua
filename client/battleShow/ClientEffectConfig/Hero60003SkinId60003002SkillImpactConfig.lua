--- hero_60003_skin_id_60003002_skill_impact
--- @class Hero60003SkinId60003002SkillImpactConfig
Hero60003SkinId60003002SkillImpactConfig = Class(Hero60003SkinId60003002SkillImpactConfig)

--- @return void
--- @param transform UnityEngine_Transform
function Hero60003SkinId60003002SkillImpactConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform
	--- @type number
	self.timeLife = 2
	--- @type number
	self.delayDespawnOnRelease = -1
	--- @type number
	self.anchor = ClientConfigUtils.BODY_ANCHOR
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

return Hero60003SkinId60003002SkillImpactConfig
