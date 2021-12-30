--- @class UIGuildWarVictoryConfig
UIGuildWarVictoryConfig = Class(UIGuildWarVictoryConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIGuildWarVictoryConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.rewardAnchor = self.transform:Find("reward_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textMedal = self.transform:Find("text_medal"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
