--- @class SimpleButtonConfig
SimpleButtonConfig = Class(SimpleButtonConfig)

--- @return void
--- @param transform UnityEngine_Transform
function SimpleButtonConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.button = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.rectTransform = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Image
	self.icon = self.transform:Find("icon"):GetComponent(ComponentName.UnityEngine_UI_Image)
end
