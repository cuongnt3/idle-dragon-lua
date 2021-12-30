--- @class GuildWarSeasonRankingRewardItemConfig
GuildWarSeasonRankingRewardItemConfig = Class(GuildWarSeasonRankingRewardItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function GuildWarSeasonRankingRewardItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Image
	self.iconMedal = self.transform:Find("icon_medal"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.textRanking = self.transform:Find("icon_medal/text_ranking"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.iconGuild = self.transform:Find("icon_border/icon_guild"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.guildName = self.transform:Find("guild_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.recordTime = self.transform:Find("record_time"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textRankingPoint = self.transform:Find("text_ranking_point"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.point = self.transform:Find("point"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.rewardAnchor = self.transform:Find("reward_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_GameObject
	self.highlight = self.transform:Find("highlight").gameObject
end
