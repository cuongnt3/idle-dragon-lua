--- @class UIDefeatArenaConfig
UIDefeatArenaConfig = Class(UIDefeatArenaConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIDefeatArenaConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.rewardAnchor = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.avatar1 = self.transform:Find("pvp_game_over/vs/avatar1"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.avatar2 = self.transform:Find("pvp_game_over/vs/avatar2"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_GameObject
	self.txtReward = self.transform:Find("txt_reward").gameObject
end
