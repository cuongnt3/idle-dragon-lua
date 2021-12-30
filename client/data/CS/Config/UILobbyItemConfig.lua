--- @class UILobbyItemConfig
UILobbyItemConfig = Class(UILobbyItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UILobbyItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.applyButton = self.transform:Find("apply_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.localizeApply = self.transform:Find("apply_button/text_found"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.slot = self.transform:Find("slot"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textTeamSlot = self.transform:Find("text_team_slot"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textGuildName = self.transform:Find("text_guild_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textGuildId = self.transform:Find("text_guild_id"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
