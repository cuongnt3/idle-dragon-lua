--- @class UISwitchCharacterConfig
UISwitchCharacterConfig = Class(UISwitchCharacterConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UISwitchCharacterConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonBack = self.transform:Find("back_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonTutorial = self.transform:Find("safe_area/anchor_top/?_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonSwitch = self.transform:Find("anchor_mid/switch_character"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonSwitchAll = self.transform:Find("anchor_mid/switch_all"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textNameCharacter = self.transform:Find("anchor_mid/main_character_name_title/character_name_title/text_name_character"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.star = self.transform:Find("anchor_mid/main_character_name_title/star"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_GameObject
	self.selected = self.transform:Find("anchor_mid/selected").gameObject
	--- @type UnityEngine_RectTransform
	self.tab = self.transform:Find("tab"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.localizeBack = self.transform:Find("back_button/text_back"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeSwitchCharacter = self.transform:Find("anchor_mid/switch_character/text_switch_character"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeSwitchAll = self.transform:Find("anchor_mid/switch_all/text_switch_character"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeSelected = self.transform:Find("anchor_mid/selected/text_switch_character"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.safeArea = self.transform:Find("safe_area"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.tabInfo = self.transform:Find("safe_area/anchor_right/tab_info"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.content = self.transform:Find("safe_area/anchor_right/content"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.localizeInfo = self.transform:Find("safe_area/anchor_right/tab_info/tab1/on/text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeEvolve = self.transform:Find("safe_area/anchor_right/tab_info/tab1 (2)/on/text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_Transform
	self.previewSwitchSummoner = self.transform:Find("preview_switch_summoner")
	--- @type UnityEngine_GameObject
	self.notiEvolve = self.transform:Find("safe_area/anchor_right/tab_info/tab1 (2)/icon_dots").gameObject
end
