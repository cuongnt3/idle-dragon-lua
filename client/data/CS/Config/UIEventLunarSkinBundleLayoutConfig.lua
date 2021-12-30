--- @class UIEventLunarSkinBundleLayoutConfig
UIEventLunarSkinBundleLayoutConfig = Class(UIEventLunarSkinBundleLayoutConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIEventLunarSkinBundleLayoutConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonBuy = self.transform:Find("button_buy"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textPrice = self.transform:Find("button_buy/text_price"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textEventName = self.transform:Find("bg/text_event_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.tableBundleItem = self.transform:Find("table_bundle_item"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Image
	self.factionIcon = self.transform:Find("hero_view/faction_icon"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_RawImage
	self.heroView = self.transform:Find("hero_view"):GetComponent(ComponentName.UnityEngine_UI_RawImage)
	--- @type UnityEngine_UI_LoopVerticalScrollRect
	self.scrollContent = self.transform:Find("scroll_content"):GetComponent(ComponentName.UnityEngine_UI_LoopVerticalScrollRect)
	--- @type UnityEngine_UI_Text
	self.heroNameTxt = self.transform:Find("hero_view/hero_name_txt"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
