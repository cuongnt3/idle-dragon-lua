--- @class UIRaiseLevelConfig
UIRaiseLevelConfig = Class(UIRaiseLevelConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIRaiseLevelConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonBack = self.transform:Find("safe_area/back_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.heroList = self.transform:Find("group_select_hero/heroList"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.localizeRaisedList = self.transform:Find("group_select_hero/bg_main_pannel_2/bg_main_pannel_1/text_select_heroes_to_battle"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.safeArea = self.transform:Find("safe_area"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.localizeRaiseLevel = self.transform:Find("safe_area/anchor_top/text_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_Transform
	self.raiseLevelFormation = self.transform:Find("raise_level_formation")
	--- @type UnityEngine_RectTransform
	self.moneyBarAnchor = self.transform:Find("safe_area/money_bar_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.buttonAsk = self.transform:Find("group_select_hero/button_ask (2)"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_LoopVerticalScrollRect
	self.scroll = self.transform:Find("group_select_hero/bg_main_pannel_2/VerticalScroll_Grid (1)"):GetComponent(ComponentName.UnityEngine_UI_LoopVerticalScrollRect)
	--- @type UnityEngine_UI_Text
	self.heroCountText = self.transform:Find("group_select_hero/bg_main_pannel_2/bg_main_pannel_1/text_select_heroes_to_battle/hero_count_text"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
