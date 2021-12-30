--- hero_60011_skill_impact_skin_2
--- @class Hero60011SkillImpactSkin2Config
Hero60011SkillImpactSkin2Config = Class(Hero60011SkillImpactSkin2Config)

--- @return void
--- @param transform UnityEngine_Transform
function Hero60011SkillImpactSkin2Config:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform
	--- @type number
	self.timeLife = 3
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

return Hero60011SkillImpactSkin2Config
