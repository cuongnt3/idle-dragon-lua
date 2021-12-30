--- @class GuildDonateItemConfig
GuildDonateItemConfig = Class(GuildDonateItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function GuildDonateItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textPearValue = self.transform:Find("icon_pear_progress_bar_1/text_pear_value"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textAppleValue = self.transform:Find("icon_apple_progress_bar_1/text_apple_value"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.complete = self.transform:Find("bg_apple_pear_complete").gameObject
	--- @type UnityEngine_GameObject
	self.iconActive1 = self.transform:Find("icon_pear_progress_bar_1/icon_guild_quest_pear_2/icon_guild_quest_pear_2 (1)").gameObject
	--- @type UnityEngine_GameObject
	self.iconActive2 = self.transform:Find("icon_apple_progress_bar_1/icon_guild_quest_apple_2/icon_guild_quest_apple_2 (1)").gameObject
	--- @type UnityEngine_UI_Button
	self.buttonReward = self.transform:Find("reward/rewarded_point"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_GameObject
	self.open = self.transform:Find("reward/rewarded_point/icon_opening_event_chest_3").gameObject
	--- @type UnityEngine_GameObject
	self.on = self.transform:Find("reward/rewarded_point/icon_opening_event_chest_2").gameObject
	--- @type UnityEngine_GameObject
	self.off = self.transform:Find("reward/rewarded_point/icon_opening_event_chest_1").gameObject
end
