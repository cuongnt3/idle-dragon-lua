--- @class UIUpgradeStoneConfig
UIUpgradeStoneConfig = Class(UIUpgradeStoneConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIUpgradeStoneConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textTitleUpgrade = self.transform:Find("popup/back_ground/background_frame/upgrade_artifact_group/text_title_upgrade"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textGoldPrice = self.transform:Find("popup/back_ground/monney/money_bar_info/text_money"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textMagicStonePrice = self.transform:Find("popup/back_ground/monney/money_bar_info (1)/text_money"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.lockCurrent = self.transform:Find("popup/back_ground/background_frame/lock_current_attribute").gameObject
	--- @type UnityEngine_UI_Button
	self.buttonLock = self.transform:Find("popup/back_ground/background_frame/lock_current_attribute/text_quest_name/icon_stick_slot"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_GameObject
	self.buttonTick = self.transform:Find("popup/back_ground/background_frame/lock_current_attribute/text_quest_name/icon_stick_slot/icon_tick").gameObject
	--- @type UnityEngine_UI_Button
	self.buttonUpgrade = self.transform:Find("popup/back_ground/background_frame/when_upgrade_popup/button_upgrade"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textGemKeepProperty = self.transform:Find("popup/back_ground/background_frame/when_upgrade_popup/button_upgrade/price/text_gem"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.objPriceKeepProperty = self.transform:Find("popup/back_ground/background_frame/when_upgrade_popup/button_upgrade/price").gameObject
	--- @type UnityEngine_GameObject
	self.objTextUpgrade = self.transform:Find("popup/back_ground/background_frame/when_upgrade_popup/button_upgrade/text_upgrade").gameObject
	--- @type UnityEngine_RectTransform
	self.particleUpgrade = self.transform:Find("popup/back_ground/fx_ui_upgradestone"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.itemUpgrade = self.transform:Find("popup/back_ground/background_frame/upgrade_artifact_group/item"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.localizeLockStat = self.transform:Find("popup/back_ground/background_frame/lock_current_attribute/text_quest_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeUpgrade = self.transform:Find("popup/back_ground/background_frame/when_upgrade_popup/button_upgrade/text_upgrade"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeUpgradeGem = self.transform:Find("popup/back_ground/background_frame/when_upgrade_popup/button_upgrade/price/text_upgrade"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.bgClose = self.transform:Find("bg_close"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.stat = self.transform:Find("popup/back_ground/background_frame/when_upgrade_popup/stat"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.backButton = self.transform:Find("popup/back_ground/back_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
end
