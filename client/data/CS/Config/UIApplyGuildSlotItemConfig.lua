--- @class UIApplyGuildSlotItemConfig
UIApplyGuildSlotItemConfig = Class(UIApplyGuildSlotItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIApplyGuildSlotItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textGuildLevel = self.transform:Find("text_guild_level"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.guildName = self.transform:Find("guild_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textGuildMember = self.transform:Find("text_guild_member"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.guildId = self.transform:Find("guild_id"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonApply = self.transform:Find("button_apply"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textApply = self.transform:Find("button_apply/text_apply"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.avatarAnchor = self.transform:Find("bg_equipment/avatar_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
