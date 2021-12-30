--- @class UISkillPreviewConfig
UISkillPreviewConfig = Class(UISkillPreviewConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UISkillPreviewConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.skillInfo = self.transform:Find("popup/top/skill_info"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textSkillName = self.transform:Find("popup/top/text_ten_skill"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textActiveSkill = self.transform:Find("popup/top/text_active_skill"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textNoiDungSkill = self.transform:Find("popup/text_noi_dung_skill"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textUnlockSkill = self.transform:Find("popup/text_unlock_skill"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.rectTransform = self.transform:Find("popup"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_ContentSizeFitter
	self.skillPreview = self.transform:Find("popup"):GetComponent(ComponentName.UnityEngine_UI_ContentSizeFitter)
	--- @type UnityEngine_UI_Button
	self.bg = self.transform:Find("bg_text"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonGreen = self.transform:Find("popup/button/button_green"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textUse = self.transform:Find("popup/button/button_green/text_green"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textEquiped = self.transform:Find("popup/button/equiped/text_green"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
