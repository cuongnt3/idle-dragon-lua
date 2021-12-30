--- @class UIHeroCollectionTabConfig
UIHeroCollectionTabConfig = Class(UIHeroCollectionTabConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIHeroCollectionTabConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textTabName = self.transform:Find("text_tab_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.button = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_GameObject
	self.notify = self.transform:Find("notify").gameObject
	--- @type UnityEngine_GameObject
	self.bgOff = self.transform:Find("bg_off").gameObject
	--- @type UnityEngine_GameObject
	self.bgOn = self.transform:Find("bg_on").gameObject
	--- @type UnityEngine_UI_Image
	self.iconDefault = self.transform:Find("bg_off/icon_off (1)"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_RectTransform
	self.rectTransform = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_RectTransform)
end
