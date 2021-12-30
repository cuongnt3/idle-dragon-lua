--- @class SkillHeroConfig
SkillHeroConfig = Class(SkillHeroConfig)

--- @return void
--- @param transform UnityEngine_Transform
function SkillHeroConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.button = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Image
	self.skillIcon = self.transform:Find("icon_skill"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Image
	self.frame = self.transform:Find("bg_vieng_skill"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Image
	self.frameActive = self.transform:Find("bg_vieng_skill_active"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Image
	self.frameEmpty = self.transform:Find("bg_vieng_skill_empty"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.txtLv = self.transform:Find("bg_lv/lv"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.bgLv = self.transform:Find("bg_lv"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_EventSystems_EventTrigger
	self.eventTrigger = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_EventSystems_EventTrigger)
	--- @type UnityEngine_RectTransform
	self.rectTransform = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_RectTransform)
end
