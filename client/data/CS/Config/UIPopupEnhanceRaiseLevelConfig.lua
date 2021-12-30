--- @class UIPopupEnhanceRaiseLevelConfig
UIPopupEnhanceRaiseLevelConfig = Class(UIPopupEnhanceRaiseLevelConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIPopupEnhanceRaiseLevelConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.hero1 = self.transform:Find("new_function_screen_2/bg_congratulation_pannel/hero_icon_info"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.hero2 = self.transform:Find("new_function_screen_2/bg_congratulation_pannel/hero_icon_info2"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.panel = self.transform:Find("new_function_screen_2"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_Transform
	self.fxUiEvolveenhanceLight = self.transform:Find("new_function_screen_2/bg_congratulation_pannel/fx_ui_evolveenhance_light")
	--- @type UnityEngine_UI_Button
	self.background = self.transform:Find("back_ground"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.localizeTapToClose = self.transform:Find("new_function_screen_2/bg_congratulation_pannel/tap_to_close/text_tap_to_close"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.congratulationText = self.transform:Find("new_function_screen_2/bg_congratulation_pannel/title/congraduation_text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.levelText1 = self.transform:Find("new_function_screen_2/bg_congratulation_pannel/level_text_1"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.levelText2 = self.transform:Find("new_function_screen_2/bg_congratulation_pannel/level_text_2"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.upEffect = self.transform:Find("new_function_screen_2/bg_congratulation_pannel/hero_icon_info2/dice_reset_effect"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
