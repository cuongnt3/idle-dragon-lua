--- @class DomainStageInfoConfig
DomainStageInfoConfig = Class(DomainStageInfoConfig)

--- @return void
--- @param transform UnityEngine_Transform
function DomainStageInfoConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textTitle = self.transform:Find("popup/text_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonRecord = self.transform:Find("popup/button_record"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonBattle = self.transform:Find("popup/button_battle"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textRecord = self.transform:Find("popup/button_record/text_record"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textBattle = self.transform:Find("popup/button_battle/text_battle"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textReward = self.transform:Find("popup/text_reward"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.rewardAnchor = self.transform:Find("popup/reward_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.battleTeamAnchor = self.transform:Find("popup/team_info/battle_team_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textTeam = self.transform:Find("popup/team_info/text_team"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textCpValue = self.transform:Find("popup/team_info/icon_cp/text_cp_value"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.bgNone = self.transform:Find("bg_none"):GetComponent(ComponentName.UnityEngine_UI_Button)
end
