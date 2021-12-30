--- @class DownloadConfig
DownloadConfig = Class(DownloadConfig)

--- @return void
--- @param transform UnityEngine_Transform
function DownloadConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonBackground = self.transform:Find("button_bg"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonNotice = self.transform:Find("safe_area/icon_notice_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonLogin = self.transform:Find("safe_area/icon_account_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonRecover = self.transform:Find("safe_area/icon_fix_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonChangeLanguage = self.transform:Find("safe_area/change_language"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textGuide = self.transform:Find("text_guide"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textLanguage = self.transform:Find("safe_area/change_language/text_language"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textTapToPlay = self.transform:Find("safe_area/tap_to_start/textTapToPlay"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textVersion = self.transform:Find("safe_area/text_version"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.guide = self.transform:Find("text_guide"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.loadingScreen = self.transform:Find("background_splash_art_easter"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_RectTransform
	self.safeArea = self.transform:Find("safe_area"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.anim = self.transform:Find("background_splash_art_easter/anim"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
