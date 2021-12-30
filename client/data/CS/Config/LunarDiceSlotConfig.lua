--- @class LunarDiceSlotConfig
LunarDiceSlotConfig = Class(LunarDiceSlotConfig)

--- @return void
--- @param transform UnityEngine_Transform
function LunarDiceSlotConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.rewardAnchor = self.transform:Find("visual/reward_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textStartEnd = self.transform:Find("visual/text_start_end"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.bgNormal = self.transform:Find("visual/bg_normal").gameObject
	--- @type UnityEngine_GameObject
	self.bgStart = self.transform:Find("visual/bg_start").gameObject
	--- @type UnityEngine_GameObject
	self.claimedMark = self.transform:Find("visual/claimed_mark").gameObject
	--- @type UnityEngine_GameObject
	self.bgFinish = self.transform:Find("visual/bg_finish").gameObject
	--- @type UnityEngine_UI_Text
	self.textSlot = self.transform:Find("visual/text_slot"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.diceResetEffect = self.transform:Find("visual/dice_reset_effect").gameObject
	--- @type UnityEngine_RectTransform
	self.visual = self.transform:Find("visual"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
