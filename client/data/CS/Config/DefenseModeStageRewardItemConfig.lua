--- @class DefenseModeStageRewardItemConfig
DefenseModeStageRewardItemConfig = Class(DefenseModeStageRewardItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function DefenseModeStageRewardItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.name = self.transform:Find("visual/stage_text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.bgGrown = self.transform:Find("visual/bg_grown").gameObject
	--- @type UnityEngine_GameObject
	self.bgYellow = self.transform:Find("visual/bg_yellow").gameObject
	--- @type UnityEngine_RectTransform
	self.rewardAnchor = self.transform:Find("visual/reward_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
