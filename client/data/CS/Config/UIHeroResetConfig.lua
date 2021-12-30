--- @class UIHeroResetConfig
UIHeroResetConfig = Class(UIHeroResetConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIHeroResetConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.localizeReset = self.transform:Find("middle_content/reset_button/button_reset/text_reset"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.priceReset = self.transform:Find("middle_content/reset_button/reset_currency/text_reset_require_value"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonReset = self.transform:Find("middle_content/reset_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Image
	self.imageMoney = self.transform:Find("middle_content/reset_button/reset_currency/icon_1"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.textHeroName = self.transform:Find("left_content/hero_name_faction (1)/text_hero_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.iconFaction = self.transform:Find("left_content/hero_name_faction (1)/icon_faction"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Image
	self.iconClass = self.transform:Find("left_content/hero_name_faction (1)/icon_class"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.localizeLevelCap = self.transform:Find("left_content/stats_upgrade (1)/level_cap_value/text_ap_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.levelCap = self.transform:Find("left_content/stats_upgrade (1)/level_cap_value"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.hp = self.transform:Find("left_content/stats_upgrade (1)/hero_evolve_stats"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.attack = self.transform:Find("left_content/stats_upgrade (1)/hero_evolve_stats (1)"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.speed = self.transform:Find("left_content/stats_upgrade (1)/hero_evolve_stats (2)"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_LoopVerticalScrollRect
	self.scroll = self.transform:Find("left_content/material_refund/VerticalScroll"):GetComponent(ComponentName.UnityEngine_UI_LoopVerticalScrollRect)
	--- @type UnityEngine_UI_Text
	self.localizeMaterial = self.transform:Find("left_content/material_refund/text_material_refund"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
