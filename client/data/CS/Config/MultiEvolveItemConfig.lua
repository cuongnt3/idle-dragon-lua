--- @class MultiEvolveItemConfig
MultiEvolveItemConfig = Class(MultiEvolveItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function MultiEvolveItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_GameObject
	self.bgHeroEvolveSelected = self.transform:Find("bg_hero_evolve_selected").gameObject
	--- @type UnityEngine_RectTransform
	self.iconMaterialHeroEvolve = self.transform:Find("icon_material_hero_evolve"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.iconMainHeroEvolve = self.transform:Find("icon_main_hero_evolve"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.listHero = self.transform:Find("list_hero"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.button = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonRemove = self.transform:Find("button_remove"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textRemove = self.transform:Find("button_remove/text_button_content"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonAuto = self.transform:Find("button_auto"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textAuto = self.transform:Find("button_auto/bg_button_glass/text_button_content"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
