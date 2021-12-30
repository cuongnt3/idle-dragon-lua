--- @class UIArenaTeamLogConfig
UIArenaTeamLogConfig = Class(UIArenaTeamLogConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIArenaTeamLogConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.bgClose = self.transform:Find("bg_none"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textTitle = self.transform:Find("popup/text_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.tableView = self.transform:Find("popup/table_view"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.attackerName = self.transform:Find("popup/attacker_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.defenderName = self.transform:Find("popup/defender_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.attackerPointChange = self.transform:Find("popup/attacker_point_change"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.defenderPointChange = self.transform:Find("popup/defender_point_change"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
