--- @class UIItemPreviewConfig
UIItemPreviewConfig = Class(UIItemPreviewConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIItemPreviewConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Image
	self.view1 = self.transform:Find("popup/bg_filter_pannel"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Image
	self.view2 = self.transform:Find("popup/bg_filter_pannel (1)"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Button
	self.buttonClose = self.transform:Find("bg_text"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_ContentSizeFitter
	self.parentFitter = self.transform:Find("popup"):GetComponent(ComponentName.UnityEngine_UI_ContentSizeFitter)
	--- @type UnityEngine_UI_HorizontalLayoutGroup
	self.horizontal = self.transform:Find("popup"):GetComponent(ComponentName.UnityEngine_UI_HorizontalLayoutGroup)
	--- @type UnityEngine_GameObject
	self.softTut = self.transform:Find("popup/bg_filter_pannel/button/layout/buttonUpgrade/soft_tut").gameObject
end
