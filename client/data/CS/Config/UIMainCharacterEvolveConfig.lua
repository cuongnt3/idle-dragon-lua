--- @class UIMainCharacterEvolveConfig
UIMainCharacterEvolveConfig = Class(UIMainCharacterEvolveConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIMainCharacterEvolveConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Image
	self.star1 = self.transform:Find("group_1/1/icon_character_star_yellow"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Image
	self.star2 = self.transform:Find("group_1/2/icon_character_star_yellow"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.textUnlockSkill = self.transform:Find("opt_1/evolve_stats/text_evolve_stats1"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textNoti = self.transform:Find("opt_1/evolve_stats/text_evolve_stats2"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.contentSkill = self.transform:Find("len_level_skill_passive"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.materials = self.transform:Find("materials"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.buttonEvolve = self.transform:Find("button/evolve_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonAwaken = self.transform:Find("button/awaken_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.localizeAwaken = self.transform:Find("button/awaken_button/text_evolve"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeEvolve = self.transform:Find("button/evolve_button/text_evolve"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
