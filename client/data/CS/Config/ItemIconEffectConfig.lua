--- @class ItemIconEffectConfig
ItemIconEffectConfig = Class(ItemIconEffectConfig)

--- @return void
--- @param transform UnityEngine_Transform
function ItemIconEffectConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.button = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Image
	self.item = self.transform:Find("visual/item"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_RectTransform
	self.star = self.transform:Find("visual/item/sao_tim"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.number = self.transform:Find("visual/item/number"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.starImage = self.transform:Find("visual/item/sao_tim"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_RectTransform
	self.endStar = self.transform:Find("visual/item/sao_tim/endStar"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.rectTransform = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_RectTransform)
end
