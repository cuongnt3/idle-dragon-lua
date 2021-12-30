--- @class GuildAreaWorldConfig
GuildAreaWorldConfig = Class(GuildAreaWorldConfig)

--- @return void
--- @param transform UnityEngine_Transform
function GuildAreaWorldConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_Camera
	self.camera = self.transform:Find("camera"):GetComponent(ComponentName.UnityEngine_Camera)
	--- @type UnityEngine_RectTransform
	self.guildHall = self.transform:Find("group_building/scroll_view/viewport/guild_hall"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.guildWar = self.transform:Find("group_building/scroll_view/viewport/guild_war"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.guildDailyBoss = self.transform:Find("group_building/scroll_view/viewport/guild_daily_boss"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.guildDungeon = self.transform:Find("group_building/scroll_view/viewport/guild_dungeon"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.guildShop = self.transform:Find("group_building/scroll_view/viewport/guild_shop"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_EventSystems_EventTrigger
	self.viewport = self.transform:Find("group_building/scroll_view/viewport"):GetComponent(ComponentName.UnityEngine_EventSystems_EventTrigger)
	--- @type UnityEngine_RectTransform
	self.content = self.transform:Find("group_building/scroll_view/viewport/content"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textGuildWarSeasonTimer = self.transform:Find("group_building/scroll_view/viewport/guild_war/tag_building/guild_war_season_timer/text_guild_war_season_timer"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.guildWarSeasonTimer = self.transform:Find("group_building/scroll_view/viewport/guild_war/tag_building/guild_war_season_timer").gameObject
end
