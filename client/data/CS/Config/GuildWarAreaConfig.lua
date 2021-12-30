--- @class GuildWarAreaConfig
GuildWarAreaConfig = Class(GuildWarAreaConfig)

--- @return void
--- @param transform UnityEngine_Transform
function GuildWarAreaConfig:Ctor(transform)
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
	--- @type UnityEngine_Transform
	self.left = self.transform:Find("left")
	--- @type UnityEngine_Transform
	self.right = self.transform:Find("right")
	--- @type UnityEngine_UI_GraphicRaycaster
	self.rayCaster = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_UI_GraphicRaycaster)
	--- @type UnityEngine_GameObject
	self.cover = self.transform:Find("cover").gameObject
	--- @type UnityEngine_Canvas
	self.canvas = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_Canvas)
end
