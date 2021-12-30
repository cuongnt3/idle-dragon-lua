--- @class UIVictoryPvpLayoutConfig
UIVictoryPvpLayoutConfig = Class(UIVictoryPvpLayoutConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIVictoryPvpLayoutConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textReward = self.transform:Find("txt_reward/text_reward"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.avatar1 = self.transform:Find("pvp_game_over/vs/avatar1"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.avatar2 = self.transform:Find("pvp_game_over/vs/avatar2"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
