--- fx_defense_1_projectile
--- @class FxDefense1ProjectileConfig
FxDefense1ProjectileConfig = Class(FxDefense1ProjectileConfig)

--- @return void
--- @param transform UnityEngine_Transform
function FxDefense1ProjectileConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform
	--- @type number
	self.timeLife = -1
	--- @type number
	self.delayDespawnOnRelease = 0,5
	--- @type number
	self.anchor = ClientConfigUtils.TORSO_ANCHOR
	--- @type boolean
	self.isSyncLayerToTarget = false
	--- @type boolean
	self.isChildTarget = false
	--- @type UnityEngine_GameObject
	self.mainVisual = self.transform:Find("main_visual").gameObject

	--- @type number
	self.battleEffectType = ClientConfigUtils.DEFAULT_BATTLE_EFFECT_TYPE

	--- @type List<ClientEffectVisual>
	self.listEffectVisual = nil
end

return FxDefense1ProjectileConfig
