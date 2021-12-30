--- @class BubbleViewConfig
BubbleViewConfig = Class(BubbleViewConfig)

--- @return void
--- @param transform UnityEngine_Transform
function BubbleViewConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Image
	self.bubbleFill = self.transform:Find("buble_fill"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Image
	self.rewardIcon = self.transform:Find("reward_icon"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.rewardAmount = self.transform:Find("reward_amount"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.recievedButton = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.fxUiBubleFullReward = self.transform:Find("fx_ui_buble_full_reward"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
