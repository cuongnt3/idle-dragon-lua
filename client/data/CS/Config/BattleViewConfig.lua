--- @class BattleViewConfig
BattleViewConfig = Class(BattleViewConfig)

--- @return void
--- @param transform UnityEngine_Transform
function BattleViewConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_Camera
	self.mainCamera = self.transform:Find("MainCamera"):GetComponent(ComponentName.UnityEngine_Camera)
	--- @type UnityEngine_SpriteRenderer
	self.battleCover = self.transform:Find("battle_cover"):GetComponent(ComponentName.UnityEngine_SpriteRenderer)
	--- @type UnityEngine_Transform
	self.cameraTrans = self.transform:Find("MainCamera")
end
