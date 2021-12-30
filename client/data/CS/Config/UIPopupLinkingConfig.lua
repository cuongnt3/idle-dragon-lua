--- @class UIPopupLinkingConfig
UIPopupLinkingConfig = Class(UIPopupLinkingConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIPopupLinkingConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.popup = self.transform:Find("popup"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_ContentSizeFitter
	self.contentSizeFitter = self.transform:Find("popup"):GetComponent(ComponentName.UnityEngine_UI_ContentSizeFitter)
	--- @type UnityEngine_UI_Text
	self.textSkillType = self.transform:Find("popup/top/text_skill_type"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.name = self.transform:Find("popup/top/name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.icon = self.transform:Find("popup/top/icon"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.textInfo = self.transform:Find("popup/text_noi_dung_skill"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.bg = self.transform:Find("bg"):GetComponent(ComponentName.UnityEngine_UI_Button)
end
