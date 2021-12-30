--- @class UISelectMaterialHeroesConfig
UISelectMaterialHeroesConfig = Class(UISelectMaterialHeroesConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UISelectMaterialHeroesConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonClose = self.transform:Find("popup/bg_main_pannel_2/button_close"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonSelect = self.transform:Find("popup/bg_main_pannel_2/button_select"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_LoopVerticalScrollRect
	self.scroll = self.transform:Find("popup/bg_main_pannel_2/VerticalScroll_Grid"):GetComponent(ComponentName.UnityEngine_UI_LoopVerticalScrollRect)
	--- @type UnityEngine_UI_Text
	self.textTitle = self.transform:Find("popup/bg_main_pannel_2/text_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeSelect = self.transform:Find("popup/bg_main_pannel_2/button_select/text_select"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.bgClose = self.transform:Find("bg_none"):GetComponent(ComponentName.UnityEngine_UI_Button)
end
