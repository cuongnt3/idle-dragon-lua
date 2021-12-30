--- @class LunarDiceLayoutConfig
LunarDiceLayoutConfig = Class(LunarDiceLayoutConfig)

--- @return void
--- @param transform UnityEngine_Transform
function LunarDiceLayoutConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textEventName = self.transform:Find("text_event_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textEventDesc = self.transform:Find("bg_event_desc/text_event_desc"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonRoll = self.transform:Find("button_roll"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textRoll = self.transform:Find("button_roll/text_roll"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textRollPrice = self.transform:Find("button_roll/bg_currency_value_slot/text_roll_price"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.path = self.transform:Find("path"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.prefabDiceSlot = self.transform:Find("lunar_dice_slot_view"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.pet = self.transform:Find("pet"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_GameObject
	self.rollBg = self.transform:Find("roll_bg").gameObject
	--- @type Spine_Unity_SkeletonGraphic
	self.rollAnim = self.transform:Find("roll_bg/roll_anim"):GetComponent(ComponentName.Spine_Unity_SkeletonGraphic)
	--- @type UnityEngine_UI_Image
	self.rollImage = self.transform:Find("roll_bg/roll_image"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_RectTransform
	self.moneyBarView = self.transform:Find("money_bar_view"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
