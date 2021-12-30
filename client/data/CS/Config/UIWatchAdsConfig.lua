--- @class UIWatchAdsConfig
UIWatchAdsConfig = Class(UIWatchAdsConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIWatchAdsConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.localizeNotice = self.transform:Find("popup/title/text_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeContent = self.transform:Find("popup/text_noti"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeCancel = self.transform:Find("popup/button_parent/button/button_no/text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizePlayVideo = self.transform:Find("popup/button_parent/button/button_yes/text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonCancel = self.transform:Find("popup/button_parent/button/button_no"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonPlayVideo = self.transform:Find("popup/button_parent/button/button_yes"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_LoopHorizontalScrollRect
	self.item = self.transform:Find("popup/item"):GetComponent(ComponentName.UnityEngine_UI_LoopHorizontalScrollRect)
	--- @type UnityEngine_UI_Text
	self.textTapToClose = self.transform:Find("text_tap_to_close/text_tap_to_close"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.bgButton = self.transform:Find("back_ground_den"):GetComponent(ComponentName.UnityEngine_UI_Button)
end
