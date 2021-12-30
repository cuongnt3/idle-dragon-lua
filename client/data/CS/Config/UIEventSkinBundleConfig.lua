--- @class UIEventSkinBundleConfig
UIEventSkinBundleConfig = Class(UIEventSkinBundleConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIEventSkinBundleConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.backButton = self.transform:Find("back_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Image
	self.backGround = self.transform:Find("popup"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Button
	self.bgNone = self.transform:Find("bg_none"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.bundleAnchor1 = self.transform:Find("popup/bundle_anchor_1"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.bundleAnchor2 = self.transform:Find("popup/bundle_anchor_2"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.tab = self.transform:Find("popup/tab/view_port/tab"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textTimer = self.transform:Find("popup/bg_timer/text_timer"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.pageMarket = self.transform:Find("popup/page_market"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
