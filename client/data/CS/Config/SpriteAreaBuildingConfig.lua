--- @class SpriteAreaBuildingConfig
SpriteAreaBuildingConfig = Class(SpriteAreaBuildingConfig)

--- @return void
--- @param transform UnityEngine_Transform
function SpriteAreaBuildingConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_EventSystems_EventTrigger
	self.eventTrigger = self.transform:Find("click_area"):GetComponent(ComponentName.UnityEngine_EventSystems_EventTrigger)
	--- @type UnityEngine_UI_Button
	self.clickArea = self.transform:Find("click_area"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_GameObject
	self.highlight = self.transform:Find("sprite_building/highlight").gameObject
	--- @type UnityEngine_Transform
	self.tagBuilding = self.transform:Find("tag_building")
end
