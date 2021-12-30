--- @class UIChatBoxConfig
UIChatBoxConfig = Class(UIChatBoxConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIChatBoxConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_ContentSizeFitter
	self.sizeFilter = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_UI_ContentSizeFitter)
end
