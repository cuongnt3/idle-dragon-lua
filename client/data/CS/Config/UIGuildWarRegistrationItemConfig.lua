--- @class UIGuildWarRegistrationItemConfig
UIGuildWarRegistrationItemConfig = Class(UIGuildWarRegistrationItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIGuildWarRegistrationItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textSlot = self.transform:Find("visual/medal_info/slot_index/text_slot"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textMedal = self.transform:Find("visual/medal_info/medal/text_medal"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.defenderTeamAnchor = self.transform:Find("visual/formation_show/defender_team_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textCp = self.transform:Find("visual/formation_show/text_cp"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.medalInfo = self.transform:Find("visual/medal_info").gameObject
	--- @type UnityEngine_GameObject
	self.iconTick = self.transform:Find("visual/icon_tick").gameObject
	--- @type UnityEngine_GameObject
	self.iconLeader = self.transform:Find("visual/formation_show/icon_leader").gameObject
	--- @type UnityEngine_GameObject
	self.iconViceLeader = self.transform:Find("visual/formation_show/icon_vice_leader").gameObject
	--- @type UnityEngine_UI_Text
	self.memberName = self.transform:Find("visual/formation_show/member_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonSetUp = self.transform:Find("visual/button_set_up"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonSwap = self.transform:Find("visual/button_swap"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.formationShow = self.transform:Find("visual/formation_show"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
