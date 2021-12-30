--- @class UISettingConfig
UISettingConfig = Class(UISettingConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UISettingConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonLanguageSetting = self.transform:Find("language_container/icon_language_on"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonMusic = self.transform:Find("music_container/button_music"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonSound = self.transform:Find("sound_container/button_sound"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.graphic = self.transform:Find("graphic_container/graphic/graphic_state_list/button_container"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.graphicSelect = self.transform:Find("graphic_container/graphic/graphic_state_list/bg_button_team_up_chosen"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_GameObject
	self.iconTatSound = self.transform:Find("sound_container/button_sound/icon_sound_off").gameObject
	--- @type UnityEngine_GameObject
	self.iconSoundOn = self.transform:Find("sound_container/button_sound/icon_sound_on").gameObject
	--- @type UnityEngine_GameObject
	self.iconTatMusic = self.transform:Find("music_container/button_music/icon_music_off").gameObject
	--- @type UnityEngine_GameObject
	self.iconMusicOn = self.transform:Find("music_container/button_music/icon_music_on").gameObject
	--- @type UnityEngine_UI_Slider
	self.sliderSound = self.transform:Find("sound_container/Slider_sound"):GetComponent(ComponentName.UnityEngine_UI_Slider)
	--- @type UnityEngine_UI_Slider
	self.sliderMusic = self.transform:Find("music_container/Slider_music"):GetComponent(ComponentName.UnityEngine_UI_Slider)
	--- @type UnityEngine_UI_Text
	self.localizeSound = self.transform:Find("sound_container/text_sound"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeMusic = self.transform:Find("music_container/text_music"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeGraphicQuality = self.transform:Find("graphic_container/text_graphicquality"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeLow = self.transform:Find("graphic_container/graphic/graphic_state_list/button_container/button_hight/Text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeMedium = self.transform:Find("graphic_container/graphic/graphic_state_list/button_container/button_graphic (1)/Text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeHigh = self.transform:Find("graphic_container/graphic/graphic_state_list/button_container/button_graphic (2)/Text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.titleLanguage = self.transform:Find("language_container/select_language_btn/text_language"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeLanguageSetting = self.transform:Find("language_container/text_languagesetting"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.selectLanguageBtn = self.transform:Find("language_container/select_language_btn"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.titleGraphicText = self.transform:Find("graphic_container/graphic/select_graphic_btn/text_graphic"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.iconGraphicState = self.transform:Find("graphic_container/graphic/select_graphic_btn/icon_state"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_GameObject
	self.graphicStateList = self.transform:Find("graphic_container/graphic/graphic_state_list").gameObject
	--- @type UnityEngine_UI_Button
	self.selectGraphicBtn = self.transform:Find("graphic_container/graphic/select_graphic_btn"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.hideGraphicButton = self.transform:Find("graphic_container/setting_hide_graphic_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
end
