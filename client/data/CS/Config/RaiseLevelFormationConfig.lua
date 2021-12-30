--- @class RaiseLevelFormationConfig
RaiseLevelFormationConfig = Class(RaiseLevelFormationConfig)

--- @return void
--- @param transform UnityEngine_Transform
function RaiseLevelFormationConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_GameObject
	self.centerPosition = self.transform:Find("world_canvas/center_position").gameObject
end
