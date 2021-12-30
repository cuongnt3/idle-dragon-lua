--- @class FriendRankingRewardItemConfig
FriendRankingRewardItemConfig = Class(FriendRankingRewardItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function FriendRankingRewardItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textLeaderBoardTop = self.transform:Find("leaderboard_top_icon/text_leaderboard_top"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.iconLeaderBoardTop1 = self.transform:Find("leaderboard_top_icon/icon_leaderboard_top_1"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_RectTransform
	self.reward = self.transform:Find("reward"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
