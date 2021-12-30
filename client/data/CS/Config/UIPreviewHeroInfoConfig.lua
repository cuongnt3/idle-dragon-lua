--- @class UIPreviewHeroInfoConfig
UIPreviewHeroInfoConfig = Class(UIPreviewHeroInfoConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIPreviewHeroInfoConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.prefabHeroInfo2 = self.transform:Find("popup/prefab_hero_info_2"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.heroEquipmentView = self.transform:Find("popup/hero_equipment_view"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.buttonClose = self.transform:Find("popup/button_close"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.bgNone = self.transform:Find("bg_none"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_RawImage
	self.rawImage = self.transform:Find("popup/icon_base/raw_image"):GetComponent(ComponentName.UnityEngine_UI_RawImage)
end
