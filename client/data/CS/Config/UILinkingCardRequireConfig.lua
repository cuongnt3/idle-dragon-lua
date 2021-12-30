--- @class UILinkingCardRequireConfig
UILinkingCardRequireConfig = Class(UILinkingCardRequireConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UILinkingCardRequireConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_GameObject
	self.iconLinkingActive = self.transform:Find("icon_linking_active").gameObject
	--- @type UnityEngine_UI_Text
	self.textLinkingRequire = self.transform:Find("text_linking_require"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.stat = self.transform:Find("stat"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textStat = self.transform:Find("text_stat"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
