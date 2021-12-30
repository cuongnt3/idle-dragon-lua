--- @class UIGuildMemberSlotItemConfig
UIGuildMemberSlotItemConfig = Class(UIGuildMemberSlotItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIGuildMemberSlotItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textMemberName = self.transform:Find("visual/text_member_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textLastTimeActive = self.transform:Find("visual/text_last_time_active"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textMemberRole = self.transform:Find("visual/text_member_role"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.checked = self.transform:Find("visual/checked").gameObject
	--- @type UnityEngine_RectTransform
	self.avatar = self.transform:Find("visual/bg_equipment/avatar"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.buttonSetLeader = self.transform:Find("visual/button_set_leader"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.localizeSetLeader = self.transform:Find("visual/button_set_leader/text_set_leader"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.iconLeader = self.transform:Find("visual/icon_guild_leader").gameObject
	--- @type UnityEngine_GameObject
	self.iconSubLeader = self.transform:Find("visual/icon_guild_sub_leader").gameObject
end
