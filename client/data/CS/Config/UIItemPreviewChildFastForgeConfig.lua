--- @class UIItemPreviewChildFastForgeConfig
UIItemPreviewChildFastForgeConfig = Class(UIItemPreviewChildFastForgeConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIItemPreviewChildFastForgeConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.itemEquipInfo = self.transform:Find("top/item_equip_info"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textSkillName = self.transform:Find("top/title/text_ten_skill"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textActiveSkill = self.transform:Find("top/title/text_active_skill"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.textContent = self.transform:Find("stat"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.buttonReplace = self.transform:Find("top/button_replace"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textRate = self.transform:Find("top/title/text_rate"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
