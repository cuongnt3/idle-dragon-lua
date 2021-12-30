--- @class DefenseWorldConfig
DefenseWorldConfig = Class(DefenseWorldConfig)

--- @return void
--- @param transform UnityEngine_Transform
function DefenseWorldConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_Canvas
	self.canvas = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_Canvas)
	--- @type UnityEngine_Transform
	self.defenseTownCenterSpot = self.transform:Find("defense_town_center_spot")
	--- @type UnityEngine_Transform
	self.defenseTurretSpot1 = self.transform:Find("defense_turret_spot_1")
	--- @type UnityEngine_Transform
	self.defenseTurretSpot2 = self.transform:Find("defense_turret_spot_2")
	--- @type UnityEngine_Transform
	self.defenseTurretSpot3 = self.transform:Find("defense_turret_spot_3")
	--- @type UnityEngine_Transform
	self.defenseMotherShipSpot = self.transform:Find("defense_mother_ship_spot")
	--- @type UnityEngine_ParticleSystem
	self.fxUpgradeTownCenter = self.transform:Find("fx_upgrade_town_center_6"):GetComponent(ComponentName.UnityEngine_ParticleSystem)
	--- @type UnityEngine_ParticleSystem
	self.fxUpgradeTurret = self.transform:Find("fx_upgrade_turret_6"):GetComponent(ComponentName.UnityEngine_ParticleSystem)
end
