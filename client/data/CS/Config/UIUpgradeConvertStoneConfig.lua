--- @class UIUpgradeConvertStoneConfig
UIUpgradeConvertStoneConfig = Class(UIUpgradeConvertStoneConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIUpgradeConvertStoneConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textTitleUpgrade = self.transform:Find("popup/text_title_upgrade"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textTitleConvert = self.transform:Find("popup/text_title_convert"):GetComponent(ComponentName.UnityEngine_UI_Text)
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
	--- @type UnityEngine_GameObject
	self.lockCurrent = self.transform:Find("popup/group/lock_current_attribute").gameObject
	--- @type UnityEngine_UI_Button
	self.buttonLock = self.transform:Find("popup/group/lock_current_attribute/text_quest_name/icon_stick_slot"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_GameObject
	self.buttonTick = self.transform:Find("popup/group/lock_current_attribute/text_quest_name/icon_stick_slot/icon_tick").gameObject
	--- @type UnityEngine_UI_Button
	self.buttonUpgrade = self.transform:Find("popup/content_button/button_upgrade"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonConvert = self.transform:Find("popup/content_button/button_convert"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonSave = self.transform:Find("popup/content_button/button_save"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textGemKeepProperty = self.transform:Find("popup/content_button/button_upgrade/price/text_gem"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.objPriceKeepProperty = self.transform:Find("popup/content_button/button_upgrade/price").gameObject
	--- @type UnityEngine_GameObject
	self.objTextUpgrade = self.transform:Find("popup/content_button/button_upgrade/text_upgrade").gameObject
	--- @type UnityEngine_RectTransform
	self.particleUpgrade = self.transform:Find("popup/fx_ui_upgradestone"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.goldRoot = self.transform:Find("top_pannel/money_bar_info"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.gemRoot = self.transform:Find("top_pannel/money_bar_info (1)"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.dustRoot = self.transform:Find("top_pannel/money_bar_info (2)"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_GameObject
	self.convert = self.transform:Find("popup/convert").gameObject
	--- @type UnityEngine_GameObject
	self.upgrade = self.transform:Find("popup/upgrade").gameObject
	--- @type UnityEngine_RectTransform
	self.itemUpgrade = self.transform:Find("popup/upgrade/item"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textBasicStatsUpgrade2 = self.transform:Find("popup/upgrade/text_basic_stats2"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.stat1 = self.transform:Find("popup/upgrade/stat"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.stat2 = self.transform:Find("popup/upgrade/stat2"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.localizeLockStat = self.transform:Find("popup/group/lock_current_attribute/text_quest_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeUpgrade = self.transform:Find("popup/content_button/button_upgrade/text_upgrade"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeUpgradeGem = self.transform:Find("popup/content_button/button_upgrade/price/text_upgrade"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeConvert = self.transform:Find("popup/content_button/button_convert/text_upgrade"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeSave = self.transform:Find("popup/content_button/button_save/text_upgrade"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.bgClose = self.transform:Find("bg_close"):GetComponent(ComponentName.UnityEngine_UI_Button)
end
