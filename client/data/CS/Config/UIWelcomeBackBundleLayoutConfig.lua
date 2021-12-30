--- @class UIWelcomeBackBundleLayoutConfig
UIWelcomeBackBundleLayoutConfig = Class(UIWelcomeBackBundleLayoutConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIWelcomeBackBundleLayoutConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_LoopVerticalScrollRect
	self.scrollBundle = self.transform:Find("scroll_vertical"):GetComponent(ComponentName.UnityEngine_UI_LoopVerticalScrollRect)
	--- @type UnityEngine_UI_Text
	self.textTittle = self.transform:Find("bg_tittle/text_tittle"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.bgTittle = self.transform:Find("bg_tittle"):GetComponent(ComponentName.UnityEngine_UI_Image)
end
