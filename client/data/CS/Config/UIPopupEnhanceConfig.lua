--- @class UIPopupEnhanceConfig
UIPopupEnhanceConfig = Class(UIPopupEnhanceConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIPopupEnhanceConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.localizeEnhance = self.transform:Find("new_function_screen_2/title/text_awaken_enhance"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.hero1 = self.transform:Find("new_function_screen_2/hero_icon_info"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.hero2 = self.transform:Find("new_function_screen_2/hero_icon_info2"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.localizeSkill = self.transform:Find("new_function_screen_2/title/text_skill_enhance"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.skillEnhance = self.transform:Find("new_function_screen_2/skill").gameObject
	--- @type UnityEngine_RectTransform
	self.panel = self.transform:Find("new_function_screen_2"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_Transform
	self.fxUiEvolveenhanceLight = self.transform:Find("new_function_screen_2/fx_ui_evolveenhance_light")
	--- @type UnityEngine_RectTransform
	self.stat = self.transform:Find("new_function_screen_2/stat"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.background = self.transform:Find("back_ground"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.localizeTapToClose = self.transform:Find("new_function_screen_2/tap_to_close/text_tap_to_close"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
