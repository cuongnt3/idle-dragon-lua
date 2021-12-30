--- @class UIGuildWarPhase3MainTopInfoConfig
UIGuildWarPhase3MainTopInfoConfig = Class(UIGuildWarPhase3MainTopInfoConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIGuildWarPhase3MainTopInfoConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textGuildName = self.transform:Find("text_guild_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textRankingPointGuild = self.transform:Find("text_ranking_point_guild"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textAttackPoint = self.transform:Find("attack_point/text_attack_point"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.pointBar = self.transform:Find("guild_ranking_point/point_bar"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Image
	self.iconSymbol = self.transform:Find("icon_flag/flag/symbol"):GetComponent(ComponentName.UnityEngine_UI_Image)
end
