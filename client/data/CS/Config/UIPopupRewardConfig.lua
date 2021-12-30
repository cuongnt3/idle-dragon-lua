--- @class UIPopupRewardConfig
UIPopupRewardConfig = Class(UIPopupRewardConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIPopupRewardConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_GridLayoutGroup
	self.contentGrid = self.transform:Find("content"):GetComponent(ComponentName.UnityEngine_UI_GridLayoutGroup)
	--- @type UnityEngine_RectTransform
	self.content = self.transform:Find("content"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.background = self.transform:Find("popup_reward/back_ground_mo"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.fxUiPopup = self.transform:Find("fx_ui_popup"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.localizeTitle = self.transform:Find("text_congratulation"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeTapToClose = self.transform:Find("tap_to_close/text_collect"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
