--- @class UIGuildWarMemberSlotConfig
UIGuildWarMemberSlotConfig = Class(UIGuildWarMemberSlotConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIGuildWarMemberSlotConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonSetUp = self.transform:Find("button_set_up"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textCpValue = self.transform:Find("member_info/text_cp_value"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.playerName = self.transform:Find("member_info/player_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.iconLeader = self.transform:Find("member_info/icon_leader").gameObject
	--- @type UnityEngine_GameObject
	self.iconSubLeader = self.transform:Find("member_info/icon_sub_leader").gameObject
	--- @type UnityEngine_RectTransform
	self.teamAnchor = self.transform:Find("member_info/team_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_GameObject
	self.highlight = self.transform:Find("highlight").gameObject
	--- @type UnityEngine_GameObject
	self.slotInfo = self.transform:Find("slot_info").gameObject
	--- @type UnityEngine_UI_Text
	self.slotIndex = self.transform:Find("slot_info/flag/slot_index"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textMedalValue = self.transform:Find("slot_info/icon_medal/text_medal_value"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonSwap = self.transform:Find("button_swap"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.memberInfo = self.transform:Find("member_info"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
