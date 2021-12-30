--- @class UIFormationDomainConfig
UIFormationDomainConfig = Class(UIFormationDomainConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIFormationDomainConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonBack = self.transform:Find("back_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.battleButtonNotSkip = self.transform:Find("group_select_hero/bg_main_pannel_1/battle_button_not_skip"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_GameObject
	self.groupSelectHero = self.transform:Find("group_select_hero").gameObject
	--- @type UnityEngine_RectTransform
	self.heroList = self.transform:Find("group_select_hero/bg_main_pannel_1/heroList"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.localizeSelectHero = self.transform:Find("group_select_hero/bg_main_pannel_1/text_select_heroes_to_battle"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeBattle = self.transform:Find("group_select_hero/bg_main_pannel_1/battle_button_not_skip/text_battle"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonRemoveAll = self.transform:Find("button_remove_all"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.localizeRemoveAll = self.transform:Find("button_remove_all/txt_remove"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.hero = self.transform:Find("hero"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.buttonHelp = self.transform:Find("group_select_hero/button_help"):GetComponent(ComponentName.UnityEngine_UI_Button)
end
