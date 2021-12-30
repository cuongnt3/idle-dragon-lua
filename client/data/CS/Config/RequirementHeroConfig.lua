--- @class RequirementHeroConfig
RequirementHeroConfig = Class(RequirementHeroConfig)

--- @return void
--- @param transform UnityEngine_Transform
function RequirementHeroConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Image
	self.icon = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_EventSystems_EventTrigger
	self.eventTrigger = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_EventSystems_EventTrigger)
	--- @type UnityEngine_GameObject
	self.tick = self.transform:Find("tick").gameObject
end
