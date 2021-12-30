--- @class ArenaRankingItemConfig
ArenaRankingItemConfig = Class(ArenaRankingItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function ArenaRankingItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Image
	self.iconLeaderBoardTop1 = self.transform:Find("visual/leaderboard_top_icon/ icon_leaderboard_top_1"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.textLeaderBoardTop = self.transform:Find("visual/leaderboard_top_icon/text_leaderboard_top"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.heroSlot = self.transform:Find("visual/hero_slot"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textUserName = self.transform:Find("visual/user_name_event_time/text_user_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textAp = self.transform:Find("visual/power/text_ap"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textScorePoint = self.transform:Find("visual/score/text_score_point"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeScore = self.transform:Find("visual/score/text_score"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.power = self.transform:Find("visual/power").gameObject
end
