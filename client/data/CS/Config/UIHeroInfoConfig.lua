--- @class UIHeroInfoConfig
UIHeroInfoConfig = Class(UIHeroInfoConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIHeroInfoConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textLevelCharacter = self.transform:Find("group_1/lv_ap_lv_to_max/character_level/text_level"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonLvMax = self.transform:Find("group_1/lv_ap_lv_to_max/level_to_max_button/bg_button_green"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textGem = self.transform:Find("group_1/currency_used/diamond/text_gem_value"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textGold = self.transform:Find("group_1/currency_used/coin/text_coin_value"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.iconMagicPotion = self.transform:Find("group_1/currency_used/diamond/icon_diamond"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Button
	self.buttonUpLv = self.transform:Find("group_1/currency_used/level_up_button/bg_button_red"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonEvolve = self.transform:Find("group_1/currency_max/level_up_button/bg_button_red"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_GameObject
	self.lvUp = self.transform:Find("group_1/currency_used").gameObject
	--- @type UnityEngine_GameObject
	self.lvMax = self.transform:Find("group_1/currency_max").gameObject
	--- @type UnityEngine_RectTransform
	self.prefabHeroInfo = self.transform:Find("prefab_hero_Info"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.localizeLvToMax = self.transform:Find("group_1/lv_ap_lv_to_max/level_to_max_button/bg_button_green/text_level_to_max"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeLvUp = self.transform:Find("group_1/currency_used/level_up_button/bg_button_red/text_level_up"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeEvolve = self.transform:Find("group_1/currency_max/level_up_button/bg_button_red/text_level_up"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeLevelMax = self.transform:Find("group_1/currency_max/text_level_up (1)"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
