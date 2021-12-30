--- @class UIConvertStoneConfig
UIConvertStoneConfig = Class(UIConvertStoneConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIConvertStoneConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textTitleConvert = self.transform:Find("popup/text_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonClose = self.transform:Find("popup/button_close"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_GameObject
	self.stonePanelNext = self.transform:Find("popup/convert/item_preview_mini_pannel_2").gameObject
	--- @type UnityEngine_RectTransform
	self.previewItem1 = self.transform:Find("popup/convert/item_preview_mini_pannel_1"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.previewItem2 = self.transform:Find("popup/convert/item_preview_mini_pannel_2"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textGoldPrice = self.transform:Find("popup/group/monney/money_bar_info/text_money"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textMagicStonePrice = self.transform:Find("popup/group/monney/money_bar_info (1)/text_money"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonConvert = self.transform:Find("popup/content_button/button_convert"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonSave = self.transform:Find("popup/content_button/button_save"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.goldRoot = self.transform:Find("top_pannel/money_bar_info"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.dustRoot = self.transform:Find("top_pannel/money_bar_info (2)"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.localizeConvert = self.transform:Find("popup/content_button/button_convert/text_upgrade"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeSave = self.transform:Find("popup/content_button/button_save/text_upgrade"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.bgClose = self.transform:Find("bg_close"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.particleUpgrade = self.transform:Find("fx_ui_upgradestone"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
