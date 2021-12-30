--- @class LandViewConfig
LandViewConfig = Class(LandViewConfig)

--- @return void
--- @param transform UnityEngine_Transform
function LandViewConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonPick = self.transform:Find("1"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_SpriteRenderer
	self.hideSprite = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_SpriteRenderer)
	--- @type UnityEngine_EventSystems_EventTrigger
	self.eventTrigger = self.transform:Find("1"):GetComponent(ComponentName.UnityEngine_EventSystems_EventTrigger)
	--- @type UnityEngine_Transform
	self.bubbleContainer = self.transform:Find("bubble_container")
	--- @type UnityEngine_Transform
	self.tagBuilding = self.transform:Find("tag_land")
	--- @type UnityEngine_GameObject
	self.highLight = self.transform:Find("high_light").gameObject
	--- @type UnityEngine_SpriteRenderer
	self.landView = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_SpriteRenderer)
end
