--- @class CanvasSystemMessageConfig
CanvasSystemMessageConfig = Class(CanvasSystemMessageConfig)

--- @return void
--- @param transform UnityEngine_Transform
function CanvasSystemMessageConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textMessage = self.transform:Find("text_message"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.textTransform = self.transform:Find("text_message"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.bgMessage = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_RectTransform)
end
