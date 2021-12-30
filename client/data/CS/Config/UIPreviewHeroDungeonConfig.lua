--- @class UIPreviewHeroDungeonConfig
UIPreviewHeroDungeonConfig = Class(UIPreviewHeroDungeonConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIPreviewHeroDungeonConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_Transform
	self.attackerAnchor = self.transform:Find("attacker_anchor")
	--- @type UnityEngine_Transform
	self.defenderAnchor = self.transform:Find("defender_anchor")
	--- @type UnityEngine_Camera
	self.camera = self.transform:Find("camera"):GetComponent(ComponentName.UnityEngine_Camera)
	--- @type UnityEngine_Transform
	self.itemAnchor = self.transform:Find("defender_anchor/item_anchor")
	--- @type UnityEngine_ParticleSystem
	self.fxDungeonSpawn = self.transform:Find("defender_anchor/fx_dungeon_spawn"):GetComponent(ComponentName.UnityEngine_ParticleSystem)
	--- @type UnityEngine_RectTransform
	self.worldCanvas = self.transform:Find("world_canvas"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_Camera
	self.cameraEffect = self.transform:Find("camera_effect"):GetComponent(ComponentName.UnityEngine_Camera)
end
