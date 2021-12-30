--- @class UIStarterPackConfig
UIStarterPackConfig = Class(UIStarterPackConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIStarterPackConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.bgClose = self.transform:Find("bg_none"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textTapToClose = self.transform:Find("text_tap_to_close/text_tap_to_close"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.packTimer = self.transform:Find("popup/glow_title/pack_timer"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeTitle = self.transform:Find("popup/glow_title/tittle"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
