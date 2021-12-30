--- @class MotherShipSpotConfig
MotherShipSpotConfig = Class(MotherShipSpotConfig)

--- @return void
--- @param transform UnityEngine_Transform
function MotherShipSpotConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_Transform
	self.spawn1 = self.transform:Find("spawn_1")
	--- @type UnityEngine_Transform
	self.spawn2 = self.transform:Find("spawn_2")
	--- @type UnityEngine_Transform
	self.spawn3 = self.transform:Find("spawn_3")
	--- @type UnityEngine_Transform
	self.defenseBuildingAnim = self.transform:Find("defense_mother_ship_6")
end
