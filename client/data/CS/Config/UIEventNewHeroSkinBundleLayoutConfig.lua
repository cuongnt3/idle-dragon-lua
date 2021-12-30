--- @class UIEventNewHeroSkinBundleLayoutConfig
UIEventNewHeroSkinBundleLayoutConfig = Class(UIEventNewHeroSkinBundleLayoutConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIEventNewHeroSkinBundleLayoutConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.eventBundleLarge1 = self.transform:Find("event_bundle_large_1"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.eventBundleLarge2 = self.transform:Find("event_bundle_large_2"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
