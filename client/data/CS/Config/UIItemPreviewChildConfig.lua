--- @class UIItemPreviewChildConfig
UIItemPreviewChildConfig = Class(UIItemPreviewChildConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIItemPreviewChildConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.itemEquipInfo = self.transform:Find("top/item_equip_info"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textSkillName = self.transform:Find("top/title/text_ten_skill"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textActiveSkill = self.transform:Find("top/title/text_active_skill"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.textContent = self.transform:Find("stat"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.buttonUpgrade = self.transform:Find("button/layout/buttonUpgrade"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_ContentSizeFitter
	self.bgFilterPanel = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_UI_ContentSizeFitter)
	--- @type UnityEngine_UI_VerticalLayoutGroup
	self.vertical = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_UI_VerticalLayoutGroup)
	--- @type UnityEngine_RectTransform
	self.button = self.transform:Find("button"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.button1 = self.transform:Find("button/layout/buttonRemove"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.button2 = self.transform:Find("button/layout/buttonUpgrade"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.localizeButton1 = self.transform:Find("button/layout/buttonRemove/text_remove"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeUpgrade = self.transform:Find("button/layout/buttonUpgrade/text_upgrade"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeReplace = self.transform:Find("button/layout/buttonReplace/text_remove"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonReplace = self.transform:Find("button/layout/buttonReplace"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textRate = self.transform:Find("top/title/text_rate"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.input = self.transform:Find("input_view/input"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.moneyBarInfo = self.transform:Find("root_money/money_bar_info"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
