--- @class DomainTeamWorldConfig
DomainTeamWorldConfig = Class(DomainTeamWorldConfig)

--- @return void
--- @param transform UnityEngine_Transform
function DomainTeamWorldConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_Canvas
	self.worldCanvas = self.transform:Find("bg_gameplay/world_canvas"):GetComponent(ComponentName.UnityEngine_Canvas)
end
