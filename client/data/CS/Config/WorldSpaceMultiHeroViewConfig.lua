--- @class WorldSpaceMultiHeroViewConfig
WorldSpaceMultiHeroViewConfig = Class(WorldSpaceMultiHeroViewConfig)

--- @return void
--- @param transform UnityEngine_Transform
function WorldSpaceMultiHeroViewConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_Camera
	self.camera = self.transform:Find("camera"):GetComponent(ComponentName.UnityEngine_Camera)
	--- @type UnityEngine_Transform
	self.heroAnchor1 = self.transform:Find("hero_anchor_1")
	--- @type UnityEngine_Transform
	self.heroAnchor2 = self.transform:Find("hero_anchor_2")
	--- @type UnityEngine_Transform
	self.heroAnchor3 = self.transform:Find("hero_anchor_3")
end
