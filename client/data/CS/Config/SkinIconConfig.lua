--- @class SkinIconConfig
SkinIconConfig = Class(SkinIconConfig)

--- @return void
--- @param transform UnityEngine_Transform
function SkinIconConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.button = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.rectTransform = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Image
	self.icon = self.transform:Find("visual/frame/icon"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Image
	self.rarity = self.transform:Find("visual/frame/rarity"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.textNumber = self.transform:Find("visual/frame/text_number"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
