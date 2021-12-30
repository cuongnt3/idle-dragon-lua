--- @class ArenaRewardItemConfig
ArenaRewardItemConfig = Class(ArenaRewardItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function ArenaRewardItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.reward = self.transform:Find("reward"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Image
	self.iconLeaderBoard = self.transform:Find("icon_ranking"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.textLeaderBoardTop = self.transform:Find("text_ranking_point"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textRankName = self.transform:Find("text_ranking_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.currentRank = self.transform:Find("current_ranking").gameObject
end
