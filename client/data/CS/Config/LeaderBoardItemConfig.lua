--- @class LeaderBoardItemConfig
LeaderBoardItemConfig = Class(LeaderBoardItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function LeaderBoardItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.icon = self.transform:Find("visual/icon"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.name = self.transform:Find("visual/name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.rank = self.transform:Find("visual/rank"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.rankTittle = self.transform:Find("visual/rank_info_anchor/rank_tittle"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.rankInfo = self.transform:Find("visual/rank_info_anchor/rank_info"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.recordDay = self.transform:Find("visual/record_day"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.rankAnchor = self.transform:Find("visual/rankAnchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_GameObject
	self.bgGrown = self.transform:Find("visual/bg_grown").gameObject
	--- @type UnityEngine_GameObject
	self.bgYellow = self.transform:Find("visual/bg_yellow").gameObject
	--- @type UnityEngine_UI_Image
	self.rankIcon = self.transform:Find("visual/rankAnchor"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_RectTransform
	self.avatarAnchor = self.transform:Find("visual/avatar_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.rankInfoAnchor = self.transform:Find("visual/rank_info_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.rewardAnchor = self.transform:Find("visual/reward_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_GameObject
	self.bgGuildLogo = self.transform:Find("visual/avatar_anchor/bg_guild_logo").gameObject
	--- @type UnityEngine_UI_Image
	self.iconGuild = self.transform:Find("visual/avatar_anchor/bg_guild_logo/icon_guild"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.guildLevel = self.transform:Find("visual/icon/guild_level"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeLevel = self.transform:Find("visual/icon/localize_level"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
