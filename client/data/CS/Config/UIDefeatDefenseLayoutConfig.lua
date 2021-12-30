--- @class UIDefeatDefenseLayoutConfig
UIDefeatDefenseLayoutConfig = Class(UIDefeatDefenseLayoutConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIDefeatDefenseLayoutConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.tower = self.transform:Find("tower"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
