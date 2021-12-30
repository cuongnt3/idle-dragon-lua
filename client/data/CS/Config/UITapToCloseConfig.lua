--- @class UITapToCloseConfig
UITapToCloseConfig = Class(UITapToCloseConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UITapToCloseConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.localizeTapToClose = self.transform:Find("text_tap_to_close"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
