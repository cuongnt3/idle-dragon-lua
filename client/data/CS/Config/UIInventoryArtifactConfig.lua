--- @class UIInventoryArtifactConfig
UIInventoryArtifactConfig = Class(UIInventoryArtifactConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIInventoryArtifactConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_LoopVerticalScrollRect
	self.scroll = self.transform:Find("VerticalScroll_Grid"):GetComponent(ComponentName.UnityEngine_UI_LoopVerticalScrollRect)
	--- @type UnityEngine_RectTransform
	self.selectType = self.transform:Find("rarity_artifact_filter/rarity"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Image
	self.iconSelect = self.transform:Find("rarity_artifact_filter/select"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Button
	self.buttonCollection = self.transform:Find("bg_button_xanh"):GetComponent(ComponentName.UnityEngine_UI_Button)
end
