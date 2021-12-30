--- @class UISummonerInfoConfig
UISummonerInfoConfig = Class(UISummonerInfoConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UISummonerInfoConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Image
	self.iconClass = self.transform:Find("icon_ranger"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.textClass = self.transform:Find("text_assasins"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textContent = self.transform:Find("text_content"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.skill = self.transform:Find("skill"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.attack = self.transform:Find("text_power"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.skillSelect = self.transform:Find("skill_select"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.contentSkillSelect = self.transform:Find("skill_select/skill/content"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.bgSelect = self.transform:Find("skill_select/bg"):GetComponent(ComponentName.UnityEngine_UI_Button)
end
