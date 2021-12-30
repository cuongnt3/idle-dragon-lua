--- @class UISkillMasteryConfig
UISkillMasteryConfig = Class(UISkillMasteryConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UISkillMasteryConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.button = self.transform:Find("icon_skill"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Image
	self.icon = self.transform:Find("icon_skill"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.textLevelSkill = self.transform:Find("text_level_skill"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.bgSkill = self.transform:Find("bg_vieng_skill"):GetComponent(ComponentName.UnityEngine_UI_Image)
end
