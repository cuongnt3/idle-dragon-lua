--- @class UIGuildLogItemViewConfig
UIGuildLogItemViewConfig = Class(UIGuildLogItemViewConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIGuildLogItemViewConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textLog = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.guildLogItemView = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_RectTransform)
end
