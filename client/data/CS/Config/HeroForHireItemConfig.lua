--- @class HeroForHireItemConfig
HeroForHireItemConfig = Class(HeroForHireItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function HeroForHireItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.heroNameTxt = self.transform:Find("visual/hero_icon_anchor/info_hero/text_hero_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.removeBtn = self.transform:Find("visual/button_green"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.starTxt = self.transform:Find("visual/hero_icon_anchor/info_hero/star"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.heroIconAnchor = self.transform:Find("visual/hero_icon_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.pickHeroBtn = self.transform:Find("visual/button_pick_hero"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.describeTxt = self.transform:Find("visual/button_pick_hero/describe_txt"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
