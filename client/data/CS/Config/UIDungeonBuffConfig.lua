--- @class UIDungeonBuffConfig
UIDungeonBuffConfig = Class(UIDungeonBuffConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIDungeonBuffConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.root = self.transform:Find("popup/root"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textRemaining = self.transform:Find("popup/text_remaining"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.tapToClose = self.transform:Find("bg_none"):GetComponent(ComponentName.UnityEngine_UI_Button)
end
