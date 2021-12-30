--- @class UILinkingItemConfig2
UILinkingItemConfig2 = Class(UILinkingItemConfig2)

--- @return void
--- @param transform UnityEngine_Transform
function UILinkingItemConfig2:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textLinking = self.transform:Find("text_linking"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.iconLinking = self.transform:Find("text_linking/icon_linking"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_RectTransform
	self.hero = self.transform:Find("linking_hero_area/hero"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.listLinking = self.transform:Find("listLinking"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.iconLinkingChain = self.transform:Find("linking_hero_area/icon_linking_chain"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
