--- @class LandSelectConfig
LandSelectConfig = Class(LandSelectConfig)

--- @return void
--- @param transform UnityEngine_Transform
function LandSelectConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_Transform
	self.camTrans = self.transform:Find("camera")
	--- @type UnityEngine_EventSystems_EventTrigger
	self.viewportEventTrigger = self.transform:Find("war_area/scroll_view/viewport"):GetComponent(ComponentName.UnityEngine_EventSystems_EventTrigger)
	--- @type UnityEngine_RectTransform
	self.content = self.transform:Find("war_area/scroll_view/viewport/content"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_Camera
	self.camera = self.transform:Find("camera"):GetComponent(ComponentName.UnityEngine_Camera)
	--- @type UnityEngine_GameObject
	self.cover = self.transform:Find("cover").gameObject
	--- @type UnityEngine_Transform
	self.landContainer = self.transform:Find("land_container")
	--- @type UnityEngine_RectTransform
	self.fxUiWorldDefenseModeAnchor = self.transform:Find("fx_ui_world_defense_mode"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
