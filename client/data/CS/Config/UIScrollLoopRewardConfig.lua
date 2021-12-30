--- @class UIScrollLoopRewardConfig
UIScrollLoopRewardConfig = Class(UIScrollLoopRewardConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIScrollLoopRewardConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.bgFog = self.transform:Find("bg_none"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonClose = self.transform:Find("popup/button_close"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonClaim = self.transform:Find("popup/button_claim"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_LoopVerticalScrollRect
	self.loopScrollRect = self.transform:Find("popup/bg_inner_bot_pannel/VerticalScroll_Grid"):GetComponent(ComponentName.UnityEngine_UI_LoopVerticalScrollRect)
	--- @type UnityEngine_UI_Text
	self.titleText = self.transform:Find("popup/text_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textButton = self.transform:Find("popup/button_claim/text_claim"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.yesNo = self.transform:Find("popup/yes_no").gameObject
	--- @type UnityEngine_UI_Button
	self.buttonYes = self.transform:Find("popup/yes_no/button_yes"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonNo = self.transform:Find("popup/yes_no/button_no"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textYes = self.transform:Find("popup/yes_no/button_yes/text_claim"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textNo = self.transform:Find("popup/yes_no/button_no/text_claim"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
