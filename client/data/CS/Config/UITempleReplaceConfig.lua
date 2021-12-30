--- @class UITempleReplaceConfig
UITempleReplaceConfig = Class(UITempleReplaceConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UITempleReplaceConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_GameObject
	self.haveNotHero = self.transform:Find("summon_screen/button_select_hero/have_not_hero").gameObject
	--- @type UnityEngine_GameObject
	self.haveHero = self.transform:Find("summon_screen/have_hero").gameObject
	--- @type UnityEngine_UI_Button
	self.buttonHelp = self.transform:Find("safe_area/anchor_top/button_help"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonBack = self.transform:Find("safe_area/back_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonSelectHero = self.transform:Find("summon_screen/button_select_hero"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonReplace = self.transform:Find("safe_area/anchor_bottom/button_replace"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textPriceReplace = self.transform:Find("safe_area/anchor_bottom/button_replace/icon_wood/text_price_replace"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonSave = self.transform:Find("safe_area/anchor_bottom/button_save"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonCancel = self.transform:Find("safe_area/anchor_bottom/button_cancel"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Image
	self.iconFactionLeft = self.transform:Find("summon_screen/have_hero/hero_info/hero_info_left/text_hero_name_left/icon_faction_left"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Image
	self.starLeft = self.transform:Find("summon_screen/have_hero/hero_info/hero_info_left/sao_left"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.textHeroNameLeft = self.transform:Find("summon_screen/have_hero/hero_info/hero_info_left/text_hero_name_left"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textHeroLevelLeft = self.transform:Find("summon_screen/have_hero/hero_info/hero_info_left/text_hero_level_left"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.iconFactionRight = self.transform:Find("summon_screen/have_hero/hero_info/hero_info_right/text_hero_name_right/icon_faction_right"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Image
	self.starRight = self.transform:Find("summon_screen/have_hero/hero_info/hero_info_right/sao_right"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.textHeroNameRight = self.transform:Find("summon_screen/have_hero/hero_info/hero_info_right/text_hero_name_right"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textHeroLevelRight = self.transform:Find("summon_screen/have_hero/hero_info/hero_info_right/text_hero_level_right"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonHeroInfoRight = self.transform:Find("summon_screen/have_hero/hero_info/hero_info_right/icon_hero_info_right"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.prefabHeroList = self.transform:Find("summon_screen/prefab_hero_list"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.moneyBarAnchor = self.transform:Find("safe_area/anchor_top/money_bar_root"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.localizeSummon = self.transform:Find("safe_area/anchor_bottom/button_replace/text_summon"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeCancel = self.transform:Find("safe_area/anchor_bottom/button_cancel/text_cancel"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeSave = self.transform:Find("safe_area/anchor_bottom/button_save/text_save"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeSelectYourHero = self.transform:Find("summon_screen/button_select_hero/have_not_hero/text_select_a_hero"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizePleseSelectHero = self.transform:Find("safe_area/anchor_top/text_put_the_hero"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.safeArea = self.transform:Find("safe_area"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_Transform
	self.previewTempleReplace = self.transform:Find("preview_temple_replace")
end
