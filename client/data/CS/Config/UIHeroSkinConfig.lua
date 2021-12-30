--- @class UIHeroSkinConfig
UIHeroSkinConfig = Class(UIHeroSkinConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIHeroSkinConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.content = self.transform:Find("Viewport/Content"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_HorizontalLayoutGroup
	self.layout = self.transform:Find("Viewport/Content"):GetComponent(ComponentName.UnityEngine_UI_HorizontalLayoutGroup)
	--- @type UnityEngine_UI_Button
	self.buttonArrowBack = self.transform:Find("button_arrow_back"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonArrowNext = self.transform:Find("button_arrow_next"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonEquip = self.transform:Find("button/equip_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonUnequip = self.transform:Find("button/unequip_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonPreview = self.transform:Find("button_preview"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_GameObject
	self.tick = self.transform:Find("button_preview/tick").gameObject
	--- @type UnityEngine_UI_Text
	self.textPreview = self.transform:Find("button_preview/text_preview"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textEquip = self.transform:Find("button/equip_button/text_equip"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textUnequip = self.transform:Find("button/unequip_button/text_unequip"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.nameSkin = self.transform:Find("skin_name/skin_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.heroName = self.transform:Find("skin_name/hero_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonBuy = self.transform:Find("button/button_buy"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textPrice = self.transform:Find("button/button_buy/Image/text_price"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textBuy = self.transform:Find("button/button_buy/text_buy"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
