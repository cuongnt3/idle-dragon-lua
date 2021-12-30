--- @class UIVipConfig
UIVipConfig = Class(UIVipConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIVipConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Image
	self.iconVipCurrent = self.transform:Find("popup/icon_vip_current"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Image
	self.iconVipNext = self.transform:Find("popup/icon_vip_next"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.textVipPoint = self.transform:Find("popup/text_vip_point"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.iconVipPreview = self.transform:Find("popup/benefit_title/GameObject/icon_vip_preview"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.textVipPreview = self.transform:Find("popup/benefit_title/GameObject/text_benefit"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.iconArrowLeft = self.transform:Find("popup/icon_arrow_left"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.iconArrowRight = self.transform:Find("popup/icon_arrow_right"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_VerticalLayoutGroup
	self.content = self.transform:Find("popup/Scroll View/Viewport/Content"):GetComponent(ComponentName.UnityEngine_UI_VerticalLayoutGroup)
	--- @type UnityEngine_UI_VerticalLayoutGroup
	self.content2 = self.transform:Find("popup/Scroll View/Viewport/Content (1)"):GetComponent(ComponentName.UnityEngine_UI_VerticalLayoutGroup)
	--- @type UnityEngine_UI_Button
	self.bg = self.transform:Find("bg_none"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_ScrollRect
	self.scroll = self.transform:Find("popup/Scroll View"):GetComponent(ComponentName.UnityEngine_UI_ScrollRect)
	--- @type UnityEngine_RectTransform
	self.safeArea = self.transform:Find("safe_area"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textVipFull = self.transform:Find("popup/text_vip_full"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.backButton = self.transform:Find("safe_area/back_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.process = self.transform:Find("popup/bar_percent"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textTapToClose = self.transform:Find("safe_area/text_tap_to_close/text_tap_to_close"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
