--- @class UISwitchAccountConfig
UISwitchAccountConfig = Class(UISwitchAccountConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UISwitchAccountConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.backGround = self.transform:Find("bg_none"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textTitle = self.transform:Find("popup/text_login"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonClose = self.transform:Find("popup/button_close"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonLinkingFansipan = self.transform:Find("popup/layout/linking_fansipan"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonSunGame = self.transform:Find("popup/layout/linking_sungame"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonLinkingGoogle = self.transform:Find("popup/layout/linking_google"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonLinkingApple = self.transform:Find("popup/layout/linking_apple"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonLinkingFacebook = self.transform:Find("popup/layout/linking_facebook"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.localizeFansipan = self.transform:Find("popup/layout/linking_fansipan/bg_button_red/text_changepassword"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeGoogle = self.transform:Find("popup/layout/linking_google/bg_button_red/text_changepassword"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeApple = self.transform:Find("popup/layout/linking_apple/bg_button_red/text_changepassword"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeFacebook = self.transform:Find("popup/layout/linking_facebook/bg_button_red/text_changepassword"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeSunGame = self.transform:Find("popup/layout/linking_sungame/bg_button_red/text_changepassword"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
