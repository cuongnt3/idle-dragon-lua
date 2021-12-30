--- @class UIEventSkinBundle1LayoutConfig
UIEventSkinBundle1LayoutConfig = Class(UIEventSkinBundle1LayoutConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIEventSkinBundle1LayoutConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_LoopVerticalScrollRect
	self.loopScroll = self.transform:Find("loop_scroll"):GetComponent(ComponentName.UnityEngine_UI_LoopVerticalScrollRect)
	--- @type UnityEngine_RectTransform
	self.iapSkinBundlePackItem = self.transform:Find("iap_skin_bundle_pack_item"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textDesc = self.transform:Find("text_desc"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
