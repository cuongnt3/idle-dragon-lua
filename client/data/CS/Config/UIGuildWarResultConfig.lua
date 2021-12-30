--- @class UIGuildWarResultConfig
UIGuildWarResultConfig = Class(UIGuildWarResultConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIGuildWarResultConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Image
	self.icon1 = self.transform:Find("icon_guild_war_flag_allies/icon_guild_symbol"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Image
	self.icon2 = self.transform:Find("icon_guild_war_flag_enemy/icon_guild_symbol"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.textGuildName1 = self.transform:Find("icon_guild_war_flag_allies/text_guild_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textGuildName2 = self.transform:Find("icon_guild_war_flag_enemy/text_guild_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textRankingPointGuild1 = self.transform:Find("icon_guild_war_flag_allies/text_ranking_point_guild"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textRankingPoint1 = self.transform:Find("icon_guild_war_flag_allies/text_ranking_point"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textRankingPoint2 = self.transform:Find("icon_guild_war_flag_enemy/text_ranking_point"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textRankingPointGuild2 = self.transform:Find("icon_guild_war_flag_enemy/text_ranking_point_guild"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textReward = self.transform:Find("txt_reward/text_reward"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.rewardAnchor = self.transform:Find("reward_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.buttonGoToMail = self.transform:Find("button_go_to_mail"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textGoMail = self.transform:Find("button_go_to_mail/Text"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
