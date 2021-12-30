--- @class UICheckDataConfig
UICheckDataConfig = Class(UICheckDataConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UICheckDataConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textGuide = self.transform:Find("text_guide"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.loadingScreen = self.transform:Find("background_splash_art"):GetComponent(ComponentName.UnityEngine_UI_Image)
end
