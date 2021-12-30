--- @class UIGuildWarSelectedSwapMemberConfig
UIGuildWarSelectedSwapMemberConfig = Class(UIGuildWarSelectedSwapMemberConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIGuildWarSelectedSwapMemberConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textSlot = self.transform:Find("popup/medal_info/slot_index/text_slot"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textMedal = self.transform:Find("popup/medal_info/medal/text_medal"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.avatarAnchor = self.transform:Find("popup/avatar_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textCpValue = self.transform:Find("popup/text_cp_value"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.playerName = self.transform:Find("popup/player_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.defenderTeamAnchor = self.transform:Find("popup/defender_team_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.buttonSwapMember = self.transform:Find("popup/buttons/button_green"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonCancel = self.transform:Find("popup/buttons/button_cancel"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textSwapMember = self.transform:Find("popup/buttons/button_green/text_swap_member"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textCancel = self.transform:Find("popup/buttons/button_cancel/text_cancel"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.bgNone = self.transform:Find("bg_none"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.guildNameText = self.transform:Find("popup/guild_name_text"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
