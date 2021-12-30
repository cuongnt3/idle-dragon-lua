--- @class UIGuildDungeonStageRewardItemConfig
UIGuildDungeonStageRewardItemConfig = Class(UIGuildDungeonStageRewardItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIGuildDungeonStageRewardItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textRank = self.transform:Find("text_rank"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.rewardAnchor = self.transform:Find("reward_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Image
	self.topRankBorder = self.transform:Find("top_rank_border"):GetComponent(ComponentName.UnityEngine_UI_Image)
end
