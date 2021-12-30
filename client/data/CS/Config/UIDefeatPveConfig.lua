--- @class UIDefeatPveConfig
UIDefeatPveConfig = Class(UIDefeatPveConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIDefeatPveConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.recommend = self.transform:Find("recommend"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.reward = self.transform:Find("reward"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
