--- @class UIDefenseWaveRecordConfig
UIDefenseWaveRecordConfig = Class(UIDefenseWaveRecordConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIDefenseWaveRecordConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonPlay = self.transform:Find("popup/bg_button_green"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.teamInfo = self.transform:Find("popup/prefab_team_info"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textPower = self.transform:Find("popup/ap/text_ap_value"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.titleChooseRival = self.transform:Find("popup/text_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeChange = self.transform:Find("popup/bg_button_green/text_change"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.bgClose = self.transform:Find("bg_none"):GetComponent(ComponentName.UnityEngine_UI_Button)
end
