--- @class UIGuildWarPhase3MainConfig
UIGuildWarPhase3MainConfig = Class(UIGuildWarPhase3MainConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIGuildWarPhase3MainConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonAsk = self.transform:Find("safe_area/button_ask"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.backButton = self.transform:Find("safe_area/back_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textBattleDayTime = self.transform:Find("anchor_top/text_battle_day_time"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textAttackRemaining = self.transform:Find("anchor_top/current_attack_point/text_attack_remaining"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textAttackPoint = self.transform:Find("anchor_top/current_attack_point/text_attack_point"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.enemyTopInformation = self.transform:Find("anchor_top/enemy_top_information"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.allyTopInformation = self.transform:Find("anchor_top/ally_top_information"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.safeArea = self.transform:Find("safe_area"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type Spine_Unity_SkeletonGraphic
	self.gateAnim = self.transform:Find("gate"):GetComponent(ComponentName.Spine_Unity_SkeletonGraphic)
	--- @type UnityEngine_UI_Button
	self.buttonLeaderboard = self.transform:Find("safe_area/button_leaderboard"):GetComponent(ComponentName.UnityEngine_UI_Button)
end
