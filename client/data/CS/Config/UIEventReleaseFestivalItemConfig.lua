--- @class UIEventReleaseFestivalItemConfig
UIEventReleaseFestivalItemConfig = Class(UIEventReleaseFestivalItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIEventReleaseFestivalItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.itemTableAnchor = self.transform:Find("visual/item_table_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.buttonClaim = self.transform:Find("visual/button_claim"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textClaim = self.transform:Find("visual/button_claim/text_claim"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.claimed = self.transform:Find("visual/claimed").gameObject
	--- @type UnityEngine_UI_Text
	self.textClaimed = self.transform:Find("visual/claimed/text_claimed"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.buttonNotEnough = self.transform:Find("visual/button_not_enough").gameObject
	--- @type UnityEngine_UI_Text
	self.textNotEnough = self.transform:Find("visual/button_not_enough/text_not_enough"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textEventTarget = self.transform:Find("visual/text_event_target"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.progressBar = self.transform:Find("visual/bg_quest_progress_bar_2/progress_bar"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.textEventPregress = self.transform:Find("visual/bg_quest_progress_bar_2/text_event_pregress"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
