--- hero_30012_atk
--- @class Hero30012AtkConfig
Hero30012AtkConfig = Class(Hero30012AtkConfig)

--- @return void
--- @param transform UnityEngine_Transform
function Hero30012AtkConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform
	--- @type number
	self.timeLife = 0.3
	--- @type number
	self.delayDespawnOnRelease = -1
	--- @type number
	self.anchor = ClientConfigUtils.HEAD_ANCHOR
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

return Hero30012AtkConfig
