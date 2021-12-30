--- @class HeroMaterialIconConfig
HeroMaterialIconConfig = Class(HeroMaterialIconConfig)

--- @return void
--- @param transform UnityEngine_Transform
function HeroMaterialIconConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.heroIconInfo = self.transform:Find("hero_icon_info"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textCountMaterial = self.transform:Find("text_so_luong_craft"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
