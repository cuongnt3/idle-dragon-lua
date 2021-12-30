--- @class UIHeroEvolveConfig
UIHeroEvolveConfig = Class(UIHeroEvolveConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIHeroEvolveConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Image
	self.star1 = self.transform:Find("left_content/star/1/icon_character_star_yellow"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Image
	self.star2 = self.transform:Find("left_content/star/2/icon_character_star_yellow"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.textPriceGold = self.transform:Find("middle_content/levelup_hero/level_up_and_currency/money/gold/text_coin_value"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.heroMaterialParent = self.transform:Find("left_content/hero_require"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.buttonAwaken = self.transform:Find("middle_content/levelup_hero/level_up_and_currency/button_awaken"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonEvolve = self.transform:Find("middle_content/levelup_hero/level_up_and_currency/button_evolve"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textPriceMagicPotion = self.transform:Find("middle_content/levelup_hero/level_up_and_currency/money/magic_potion/text_currency_value"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeAwaken = self.transform:Find("middle_content/levelup_hero/level_up_and_currency/button_awaken/text_accept"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeEvolve = self.transform:Find("middle_content/levelup_hero/level_up_and_currency/button_evolve/text_accept"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textMaterialRequireValue = self.transform:Find("left_content/text_material_require_value"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.skillParent = self.transform:Find("left_content/len_level_skill_passive"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.levelCap = self.transform:Find("left_content/stats_upgrade/level_cap_value"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.hp = self.transform:Find("left_content/stats_upgrade/hero_evolve_stats"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.attack = self.transform:Find("left_content/stats_upgrade/hero_evolve_stats (1)"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.speed = self.transform:Find("left_content/stats_upgrade/hero_evolve_stats (2)"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textHeroName = self.transform:Find("left_content/hero_name_faction/text_hero_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.iconFaction = self.transform:Find("left_content/hero_name_faction/icon_faction"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Image
	self.iconClass = self.transform:Find("left_content/hero_name_faction/icon_class"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.localizeLevelCap = self.transform:Find("left_content/stats_upgrade/level_cap_value/text_ap_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textPriceAwakenBook = self.transform:Find("middle_content/levelup_hero/level_up_and_currency/money/awaken_book/text_currency_value"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
