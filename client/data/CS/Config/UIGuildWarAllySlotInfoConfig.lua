--- @class UIGuildWarAllySlotInfoConfig
UIGuildWarAllySlotInfoConfig = Class(UIGuildWarAllySlotInfoConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIGuildWarAllySlotInfoConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonSwap = self.transform:Find("bg_mini_pannel/button_swap"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonCancel = self.transform:Find("bg_mini_pannel/button_cancel"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.avatarAnchor = self.transform:Find("bg_mini_pannel/avatar_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.playerName = self.transform:Find("bg_mini_pannel/player_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textMemberAp = self.transform:Find("bg_mini_pannel/icon_ap/text_member_ap"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.defenderAnchor = self.transform:Find("bg_mini_pannel/defender_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textSlotIndex = self.transform:Find("bg_mini_pannel/slot_flag/text_slot_index"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textMedalCount = self.transform:Find("bg_mini_pannel/medal_icon/text_medal_count"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.bgClose = self.transform:Find("bg_close"):GetComponent(ComponentName.UnityEngine_UI_Button)
end
