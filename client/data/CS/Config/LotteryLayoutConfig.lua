--- @class LotteryLayoutConfig
LotteryLayoutConfig = Class(LotteryLayoutConfig)

--- @return void
--- @param transform UnityEngine_Transform
function LotteryLayoutConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.diceTitle = self.transform:Find("dice_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.diceRollContainer = self.transform:Find("dice_content/dice_roll_container"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.rollText = self.transform:Find("dice_content/roll_button/roll_text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.rollButton = self.transform:Find("dice_content/roll_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.diceBarAnchor = self.transform:Find("dice_content/dice_bar_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.requireText = self.transform:Find("dice_content/roll_button/halloween_require/requireText"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.select1 = self.transform:Find("select_1"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.resetButton = self.transform:Find("dice_content/button_red"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textReset = self.transform:Find("dice_content/button_red/text_reset"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
