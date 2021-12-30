--- @class BgWorldConfig
BgWorldConfig = Class(BgWorldConfig)

--- @return void
--- @param transform UnityEngine_Transform
function BgWorldConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_Camera
	self.camera = self.transform:Find("camera"):GetComponent(ComponentName.UnityEngine_Camera)
end
