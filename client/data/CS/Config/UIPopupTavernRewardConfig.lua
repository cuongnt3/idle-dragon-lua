--- @class UIPopupTavernRewardConfig
UIPopupTavernRewardConfig = Class(UIPopupTavernRewardConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIPopupTavernRewardConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.itemReward = self.transform:Find("popup/bg_main_pannel_2/item"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.slot = self.transform:Find("popup/bg_main_pannel_2/slot"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.parentRequire = self.transform:Find("popup/bg_main_pannel_2/bg_content_base_2/parent_require"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.buttonStart = self.transform:Find("popup/bg_main_pannel_2/timer_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonAuto = self.transform:Find("popup/bg_main_pannel_2/auto_select_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonClose = self.transform:Find("popup/bg_main_pannel_2/button_close"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textTimeQuest = self.transform:Find("popup/bg_main_pannel_2/timer_button/text_value"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.requirementInfo = self.transform:Find("popup/bg_main_pannel_2/bg_content_base_2/requirement_info"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.heroList = self.transform:Find("popup/bg_main_pannel_2/heroList/hero_list"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.localizeQuest = self.transform:Find("popup/bg_main_pannel_2/text_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeSelectHero = self.transform:Find("popup/bg_main_pannel_2/text_selec_heroes"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeRequirement = self.transform:Find("popup/bg_main_pannel_2/bg_content_base_2/requirement/text_requirement"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeAutoSelect = self.transform:Find("popup/bg_main_pannel_2/auto_select_button/text_auto_select"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeStart = self.transform:Find("popup/bg_main_pannel_2/timer_button/text_start"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.bgClose = self.transform:Find("bg_none"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textTapToClose = self.transform:Find("text_tap_to_close/text_tap_to_close"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
