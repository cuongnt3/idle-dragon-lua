--- @class UICompanionBuffConfig
UICompanionBuffConfig = Class(UICompanionBuffConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UICompanionBuffConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.stats = self.transform:Find("stats"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Image
	self.iconCompanionBuff = self.transform:Find("icon_companion_buff"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.textCompanionBuffName = self.transform:Find("text_companion_buff_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
