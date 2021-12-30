--- @class FriendRankingPointItemConfig
FriendRankingPointItemConfig = Class(FriendRankingPointItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function FriendRankingPointItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textLeaderBoardTop = self.transform:Find("leaderboard_top_icon/text_leaderboard_top"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.iconHero = self.transform:Find("icon_hero"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textUserName = self.transform:Find("user_name/text_user_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.iconRank = self.transform:Find("leaderboard_top_icon/icon_raid_4"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.textRankingPoint = self.transform:Find("ranking_point_info/text_ranking_point"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
