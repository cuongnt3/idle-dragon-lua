--- @class FeedBeastLevelRewardItemConfig
FeedBeastLevelRewardItemConfig = Class(FeedBeastLevelRewardItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function FeedBeastLevelRewardItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.rewardAnchor = self.transform:Find("reward_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textLevel = self.transform:Find("text_level"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.highLight = self.transform:Find("high_light").gameObject
end
