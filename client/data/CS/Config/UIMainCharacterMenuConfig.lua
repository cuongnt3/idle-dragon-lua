--- @class UIMainCharacterMenuConfig
UIMainCharacterMenuConfig = Class(UIMainCharacterMenuConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIMainCharacterMenuConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.heroName = self.transform:Find("character_name_title/text_name_character"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonHero = self.transform:Find("button_hero"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonBack = self.transform:Find("safe_area/back_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.content = self.transform:Find("bg_main_pannel_1/content"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.tab = self.transform:Find("bg_main_pannel_1/tab"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.switchCharacter = self.transform:Find("switch_character"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.buttonSwitch = self.transform:Find("switch_character/btn_switch"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.rootMoney = self.transform:Find("rootMoney"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.localizeInfo = self.transform:Find("bg_main_pannel_1/tab/tab1/on/text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeEvolve = self.transform:Find("bg_main_pannel_1/tab/tab1 (2)/on/text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeSkin = self.transform:Find("bg_main_pannel_1/tab/tab1 (3)/on/text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeSwitchCharacter = self.transform:Find("switch_character/btn_switch/text_switch_character"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.safeArea = self.transform:Find("safe_area"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.statChange = self.transform:Find("stat"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.localizeStat1 = self.transform:Find("stat/hero_stat_change/stat"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeStat2 = self.transform:Find("stat/hero_stat_change (1)/stat"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeStat3 = self.transform:Find("stat/hero_stat_change (2)/stat"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.notiTabEvolve = self.transform:Find("bg_main_pannel_1/tab/tab1 (2)/icon_dots").gameObject
	--- @type UnityEngine_GameObject
	self.notiButtonEvolve = self.transform:Find("bg_main_pannel_1/content/evolve/button/evolve_button/noti").gameObject
	--- @type UnityEngine_GameObject
	self.notiButtonAwaken = self.transform:Find("bg_main_pannel_1/content/evolve/button/awaken_button/noti").gameObject
end
