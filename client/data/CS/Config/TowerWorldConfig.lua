--- @class TowerWorldConfig
TowerWorldConfig = Class(TowerWorldConfig)

--- @return void
--- @param transform UnityEngine_Transform
function TowerWorldConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_Camera
	self.camera = self.transform:Find("floor_anchor/camera"):GetComponent(ComponentName.UnityEngine_Camera)
	--- @type UnityEngine_Transform
	self.towerAnchor = self.transform:Find("tower_anchor")
	--- @type UnityEngine_Transform
	self.cameraTransform = self.transform:Find("floor_anchor/camera")
	--- @type UnityEngine_Transform
	self.ground = self.transform:Find("floor_anchor/ground")
	--- @type UnityEngine_Transform
	self.floorAnchor = self.transform:Find("floor_anchor")
	--- @type UnityEngine_GameObject
	self.floorPrefab = self.transform:Find("floorPrefab").gameObject
	--- @type UnityEngine_Transform
	self.bgAnchor = self.transform:Find("bg_anchor")
	--- @type UnityEngine_Transform
	self.topFloor = self.transform:Find("floor_anchor/topFloor")
	--- @type UnityEngine_SpriteRenderer
	self.highlight = self.transform:Find("floor_anchor/highlight"):GetComponent(ComponentName.UnityEngine_SpriteRenderer)
	--- @type UnityEngine_RectTransform
	self.arrowPointer = self.transform:Find("floor_anchor/arrow_pointer"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_Transform
	self.floorPool = self.transform:Find("floor_pool")
end
