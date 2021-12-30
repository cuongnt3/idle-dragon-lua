--- @class DiceLayoutConfig
DiceLayoutConfig = Class(DiceLayoutConfig)

--- @return void
--- @param transform UnityEngine_Transform
function DiceLayoutConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.diceTitle = self.transform:Find("dice_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.diceGuideTitle = self.transform:Find("describe_frame/dice_guide_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.startTitle = self.transform:Find("dice_content/dice_roll_container/dice_view/start_frame/start_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.diceRollContainer = self.transform:Find("dice_content/dice_roll_container"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.lapTitle = self.transform:Find("dice_content/dice_lap_container/back_ground/lap_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.rollText = self.transform:Find("dice_content/roll_button/roll_text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.rollButton = self.transform:Find("dice_content/roll_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.diceBarAnchor = self.transform:Find("dice_content/dice_bar_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.lapAnchor = self.transform:Find("dice_content/lap_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.requireText = self.transform:Find("dice_content/roll_button/halloween_require/requireText"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.select1 = self.transform:Find("select_1"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.select2 = self.transform:Find("select_2"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type Spine_Unity_SkeletonGraphic
	self.rollAnim = self.transform:Find("roll_bg/roll_anim"):GetComponent(ComponentName.Spine_Unity_SkeletonGraphic)
	--- @type UnityEngine_UI_Image
	self.rollImage = self.transform:Find("roll_bg/roll_image"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Image
	self.rollBg = self.transform:Find("roll_bg"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.localizeLapCompleted = self.transform:Find("dice_content/dice_lap_container/lap_completed_text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.lapCompletedValue = self.transform:Find("dice_content/dice_lap_container/lap_completed_value"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
