--- @class DiceViewConfig
DiceViewConfig = Class(DiceViewConfig)

--- @return void
--- @param transform UnityEngine_Transform
function DiceViewConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Image
	self.lightFrame = self.transform:Find("light_frame"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_RectTransform
	self.rewardAnchor = self.transform:Find("reward_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_GameObject
	self.hideView = self.transform:Find("hide_view").gameObject
	--- @type UnityEngine_GameObject
	self.arrow = self.transform:Find("light_frame/arrow").gameObject
	--- @type UnityEngine_GameObject
	self.diceResetEffect = self.transform:Find("dice_reset_effect").gameObject
	--- @type UnityEngine_UI_Image
	self.bg = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_UI_Image)
end
