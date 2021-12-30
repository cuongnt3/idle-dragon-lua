--- @class LapViewConfig
LapViewConfig = Class(LapViewConfig)

--- @return void
--- @param transform UnityEngine_Transform
function LapViewConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.title = self.transform:Find("title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.rewardAnchor = self.transform:Find("reward_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_GameObject
	self.hideView = self.transform:Find("hide_view (1)").gameObject
end
