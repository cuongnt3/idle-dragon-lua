--- @class SkillSummonerConfig
SkillSummonerConfig = Class(SkillSummonerConfig)

--- @return void
--- @param transform UnityEngine_Transform
function SkillSummonerConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.icon = self.transform:Find("bg_vieng_skill"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textNameSkill = self.transform:Find("text_ten_skill"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textActiveSkill = self.transform:Find("text_active_skill"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonSelect = self.transform:Find("button"):GetComponent(ComponentName.UnityEngine_UI_Button)
end
