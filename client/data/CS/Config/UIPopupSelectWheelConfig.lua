--- @class UIPopupSelectWheelConfig
UIPopupSelectWheelConfig = Class(UIPopupSelectWheelConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIPopupSelectWheelConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonBasic = self.transform:Find("popup/icon_fortune_wheel"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonPremium = self.transform:Find("popup/icon_destiny_wheel"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonClose = self.transform:Find("back_ground"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.localizeBasicCasino = self.transform:Find("popup/bg_text_1/text_fortune_wheel"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizePremiumCasino = self.transform:Find("popup/bg_text_2/text_destiny_wheel"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textTapToClose = self.transform:Find("text_tap_to_close/text_tap_to_close"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.bgTextDestiny = self.transform:Find("popup/bg_text_2").gameObject
	--- @type UnityEngine_UI_Image
	self.iconDestinyWheel = self.transform:Find("popup/icon_destiny_wheel"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.textDestinyUnlock = self.transform:Find("popup/text_destiny_unlock"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
