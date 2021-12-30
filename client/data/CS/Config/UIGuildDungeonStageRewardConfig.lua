--- @class UIGuildDungeonStageRewardConfig
UIGuildDungeonStageRewardConfig = Class(UIGuildDungeonStageRewardConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIGuildDungeonStageRewardConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.bgClose = self.transform:Find("bg_close"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_LoopVerticalScrollRect
	self.rewardScroll = self.transform:Find("popup/reward_scroll"):GetComponent(ComponentName.UnityEngine_UI_LoopVerticalScrollRect)
	--- @type UnityEngine_UI_Text
	self.textTitle = self.transform:Find("popup/text_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
