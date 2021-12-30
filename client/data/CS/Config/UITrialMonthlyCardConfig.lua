--- @class UITrialMonthlyCardConfig
UITrialMonthlyCardConfig = Class(UITrialMonthlyCardConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UITrialMonthlyCardConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.bgClose = self.transform:Find("bg_close"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.packAnchor = self.transform:Find("popup"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textTapToClose = self.transform:Find("text_tap_to_close/text_tap_to_close"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
