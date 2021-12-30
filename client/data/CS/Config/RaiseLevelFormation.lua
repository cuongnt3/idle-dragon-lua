--- @class RaiseLevelFormation
RaiseLevelFormation = Class(RaiseLevelFormation)

--- @return void
--- @param transform UnityEngine_Transform
function RaiseLevelFormation:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Image
	self.centerPosition = self.transform:Find("world_canvas/center_position"):GetComponent(ComponentName.UnityEngine_UI_Image)
end
