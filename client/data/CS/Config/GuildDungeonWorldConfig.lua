--- @class GuildDungeonWorldConfig
GuildDungeonWorldConfig = Class(GuildDungeonWorldConfig)

--- @return void
--- @param transform UnityEngine_Transform
function GuildDungeonWorldConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_Transform
	self.center = self.transform:Find("center")
	--- @type UnityEngine_Transform
	self.left = self.transform:Find("left")
	--- @type UnityEngine_Transform
	self.right = self.transform:Find("right")
	--- @type UnityEngine_Camera
	self.camera = self.transform:Find("camera"):GetComponent(ComponentName.UnityEngine_Camera)
end
