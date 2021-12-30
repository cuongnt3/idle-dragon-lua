--- @class UIFastForgeConfig
UIFastForgeConfig = Class(UIFastForgeConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIFastForgeConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.item1 = self.transform:Find("popup/item_info_1/weapon_slot1"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.item2 = self.transform:Find("popup/item_info_1 (1)/weapon_slot2"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.itemMaterial = self.transform:Find("popup/weapon_slot3"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.moneyBarInfo = self.transform:Find("popup/money_bar_info"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.buttonUpgrade = self.transform:Find("popup/upgrade_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.fxuiUpgradeArtifactIcon = self.transform:Find("popup/fxui_upgrade_artifact_icon"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.localizeTitle = self.transform:Find("popup/title_img/text_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeMaterial = self.transform:Find("popup/text_material"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeUpgrade = self.transform:Find("popup/upgrade_button/text_upgrade"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.bgClose = self.transform:Find("bg_close"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.itemPreviewFastForge = self.transform:Find("popup/item_preview_fast_forge"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.upgradeMoneyText = self.transform:Find("popup/upgrade_button/can_upgrade/upgrade_money_text"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
