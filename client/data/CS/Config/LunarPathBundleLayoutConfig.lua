--- @class LunarPathBundleLayoutConfig
LunarPathBundleLayoutConfig = Class(LunarPathBundleLayoutConfig)

--- @return void
--- @param transform UnityEngine_Transform
function LunarPathBundleLayoutConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.rectTrans = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_RectTransform)
end
