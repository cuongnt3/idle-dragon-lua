--- @class RoundRewardItemConfig
RoundRewardItemConfig = Class(RoundRewardItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function RoundRewardItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_GameObject
	self.highlight = self.transform:Find("highlight").gameObject
	--- @type UnityEngine_RectTransform
	self.rewardAnchor = self.transform:Find("reward_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textRound = self.transform:Find("text_round"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
