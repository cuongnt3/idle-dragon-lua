--- @class UIAccountConfig
UIAccountConfig = Class(UIAccountConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIAccountConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonChangePassword = self.transform:Find("button/layout/summonerEra/verify_fansipan/changepassword_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonEmailVerify = self.transform:Find("button/layout/summonerEra/verify_fansipan"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonSwitchServer = self.transform:Find("button/layout/switch/switchsever_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonSwitchAccount = self.transform:Find("button/layout/switch/switchaccount_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonRegisterAccount = self.transform:Find("button/layout/summonerEra/linking_fansipan"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonGoogle = self.transform:Find("button/layout/native/linking_google"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonApple = self.transform:Find("button/layout/native/linking_apple"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonFacebook = self.transform:Find("button/layout/native/linking_facebook"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonSunGame = self.transform:Find("button/layout/summonerEra/linking_sungame"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.avatarTuong = self.transform:Find("hero_icon_demo"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textSummon = self.transform:Find("summoner_text (1)/image_summoner/text_summon"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textId = self.transform:Find("id_text (1)/image_id/text_id"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textGameVersion = self.transform:Find("button/layout/text/text_game_version (1)"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textNotiBinding = self.transform:Find("button/layout/text/text_game_version (2)"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeId = self.transform:Find("id_text (1)/image_id"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeSummoner = self.transform:Find("summoner_text (1)/image_summoner"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeChangePassword = self.transform:Find("button/layout/summonerEra/verify_fansipan/changepassword_button/bg_button_red/text_changepassword"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeRegisterAccount = self.transform:Find("button/layout/summonerEra/linking_fansipan/bg_button_red/text_changepassword"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeEmailVerify = self.transform:Find("button/layout/summonerEra/verify_fansipan/bg_button_red/text_changepassword"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeSwitchServer = self.transform:Find("button/layout/switch/switchsever_button/bg_button_red/text_switchsever"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeSwitchAccount = self.transform:Find("button/layout/switch/switchaccount_button/bg_button_red/text_switchaccount"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeLoginGoogle = self.transform:Find("button/layout/native/linking_google/bg_button_red/text_changepassword"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeDisableGoogle = self.transform:Find("button/layout/native/linking_google/bg_button_red (1)/text_changepassword"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeLoginApple = self.transform:Find("button/layout/native/linking_apple/bg_button_red/text_changepassword"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeDisableApple = self.transform:Find("button/layout/native/linking_apple/bg_button_red (1)/text_changepassword"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeLoginFacebook = self.transform:Find("button/layout/native/linking_facebook/bg_button_red/text_changepassword"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeDisableFacebook = self.transform:Find("button/layout/native/linking_facebook/bg_button_red (1)/text_changepassword"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeSunGame = self.transform:Find("button/layout/summonerEra/linking_sungame/bg_button_red/text_changepassword"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeDisableSunGame = self.transform:Find("button/layout/summonerEra/linking_sungame/bg_button_red (1)/text_changepassword"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonTermOfUse = self.transform:Find("button/layout/policy/button_term_of_use"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonPolicy = self.transform:Find("button/layout/policy/button_policy"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textTermOfUse = self.transform:Find("button/layout/policy/button_term_of_use/text_term_of_use"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textPolicy = self.transform:Find("button/layout/policy/button_policy/text_policy"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
