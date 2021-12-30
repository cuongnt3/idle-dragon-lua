--- hero_60008_skin_id_60008001_attack_impact
--- @class Hero60008SkinId60008001AttackImpactConfig
Hero60008SkinId60008001AttackImpactConfig = Class(Hero60008SkinId60008001AttackImpactConfig)

--- @return void
--- @param transform UnityEngine_Transform
function Hero60008SkinId60008001AttackImpactConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform
	--- @type number
	self.timeLife = 1.5
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

return Hero60008SkinId60008001AttackImpactConfig
