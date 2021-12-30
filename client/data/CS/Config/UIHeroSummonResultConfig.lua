--- @class UIHeroSummonResultConfig
UIHeroSummonResultConfig = Class(UIHeroSummonResultConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIHeroSummonResultConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonOk = self.transform:Find("bottom/bg_ok"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonSummon1 = self.transform:Find("bottom/bg_button_1"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonSummon10 = self.transform:Find("bottom/bg_button_10"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textHeroName = self.transform:Find("top/text_hero_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.imageHeroFaction = self.transform:Find("top/text_hero_name/image_hero_faction"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Image
	self.imageHeroStar = self.transform:Find("top/image_hero_star"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_RectTransform
	self.containHeroInfo = self.transform:Find("middle"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textOk = self.transform:Find("bottom/bg_ok/text_ok"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.iconScroll1 = self.transform:Find("bottom/bg_button_1/heroic_scroll/icon_scroll_1"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.textSummon1 = self.transform:Find("bottom/bg_button_1/heroic_scroll/text_summon1"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textPriceSummon1 = self.transform:Find("bottom/bg_button_1/heroic_scroll/text_price_summon1"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.iconScroll10 = self.transform:Find("bottom/bg_button_10/heroic_scroll/icon_scroll_1"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.textSummon10 = self.transform:Find("bottom/bg_button_10/heroic_scroll/text_summon1"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textPriceSummon10 = self.transform:Find("bottom/bg_button_10/heroic_scroll/text_price_summon1"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.top = self.transform:Find("top"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.buttonInfo = self.transform:Find("top/button_info"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_GameObject
	self.arrow = self.transform:Find("arrow").gameObject
	--- @type UnityEngine_UI_Image
	self.bgSummonIcon = self.transform:Find("bg_summon_icon"):GetComponent(ComponentName.UnityEngine_UI_Image)
end
