--- @class UITreasureItemConfig
UITreasureItemConfig = Class(UITreasureItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UITreasureItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.item = self.transform:Find("item"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Image
	self.iconTreasure = self.transform:Find("icon"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_GameObject
	self.iconLock = self.transform:Find("iconLock").gameObject
	--- @type UnityEngine_GameObject
	self.iconUnlock = self.transform:Find("iconUnlock").gameObject
	--- @type UnityEngine_UI_Button
	self.button = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_GameObject
	self.icon = self.transform:Find("icon").gameObject
end
