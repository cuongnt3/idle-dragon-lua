--- @class UIGeneralSettingConfig
UIGeneralSettingConfig = Class(UIGeneralSettingConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIGeneralSettingConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.backGround = self.transform:Find("bg_text"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.tab = self.transform:Find("popup/tab"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.content = self.transform:Find("popup/content"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.titleSetting = self.transform:Find("popup/text_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textTapToClose = self.transform:Find("text_tap_to_close/text_tap_to_close"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.accountTab = self.transform:Find("popup/tab/account"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.settingTab = self.transform:Find("popup/tab/setting"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.communityTab = self.transform:Find("popup/tab/community"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.couponTab = self.transform:Find("popup/tab/coupon"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.blockTab = self.transform:Find("popup/tab/block"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Image
	self.titleIcon = self.transform:Find("popup/text_title/icon_detail_dots"):GetComponent(ComponentName.UnityEngine_UI_Image)
end
