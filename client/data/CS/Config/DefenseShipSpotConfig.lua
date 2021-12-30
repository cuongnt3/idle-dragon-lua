--- @class DefenseShipSpotConfig
DefenseShipSpotConfig = Class(DefenseShipSpotConfig)

--- @return void
--- @param transform UnityEngine_Transform
function DefenseShipSpotConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.healthBar = self.transform:Find("ui_anchor/health_bar"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_Transform
	self.tagBuilding = self.transform:Find("ui_anchor/tag_building")
	--- @type UnityEngine_Transform
	self.defenseBuildingAnim = self.transform:Find("defense_ship_6")
end
