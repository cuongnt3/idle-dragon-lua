--- @class XmasDamageViewConfig
XmasDamageViewConfig = Class(XmasDamageViewConfig)

--- @return void
--- @param transform UnityEngine_Transform
function XmasDamageViewConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.barPercent = self.transform:Find("bar_percent"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Image
	self.imgBox = self.transform:Find("img_box"):GetComponent(ComponentName.UnityEngine_UI_Image)
end
