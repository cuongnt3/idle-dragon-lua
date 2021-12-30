--- @class UIEventBirthdayBundleLayoutConfig
UIEventBirthdayBundleLayoutConfig = Class(UIEventBirthdayBundleLayoutConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIEventBirthdayBundleLayoutConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.bundle1 = self.transform:Find("bundle_1"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.bundle2 = self.transform:Find("bundle_2"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
