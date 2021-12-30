--- @class UINewHeroSpinConfig
UINewHeroSpinConfig = Class(UINewHeroSpinConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UINewHeroSpinConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.reward = self.transform:Find("bg_the_rose_spin"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.money = self.transform:Find("money"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.rollButton = self.transform:Find("roll_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textButtonContent = self.transform:Find("roll_button/bg_button_green/text_button_content"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textValuePrice = self.transform:Find("roll_button/bg_button_green/currency_price/text_value"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.iconCurrency = self.transform:Find("roll_button/bg_button_green/currency_price/icon_currency_the_rose_dropshadow"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Button
	self.skinReview = self.transform:Find("icon_skin_review"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textReviewSkin = self.transform:Find("icon_skin_review/text_review_skin"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textTitle = self.transform:Find("event_content/new_year_card_header/text_new_year_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.effect = self.transform:Find("fx_ui_8_3_open_card").gameObject
	--- @type UnityEngine_UI_Text
	self.textFree = self.transform:Find("roll_button/bg_button_green_free/text_button_content"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.bgBannerSpin = self.transform:Find("bg_banner_rose_spin"):GetComponent(ComponentName.UnityEngine_UI_Image)
end
