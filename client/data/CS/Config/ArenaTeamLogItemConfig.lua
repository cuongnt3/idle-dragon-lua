--- @class ArenaTeamLogItemConfig
ArenaTeamLogItemConfig = Class(ArenaTeamLogItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function ArenaTeamLogItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.attackerAnchor = self.transform:Find("attacker_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.defenderAnchor = self.transform:Find("defender_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.buttonLog = self.transform:Find("button_log"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textBattle = self.transform:Find("bg_battle_index/text_battle"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textResult = self.transform:Find("text_result"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
