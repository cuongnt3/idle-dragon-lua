--- @class UIPopupQuestNodeInfoConfig
UIPopupQuestNodeInfoConfig = Class(UIPopupQuestNodeInfoConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIPopupQuestNodeInfoConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textTittle = self.transform:Find("popup/text_tittle"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonClose = self.transform:Find("popup/button_close"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonComplete = self.transform:Find("popup/button_complete"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textTarget = self.transform:Find("popup/text_target"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.rewardAndhor = self.transform:Find("popup/reward_andhor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.buttonGo = self.transform:Find("popup/button_go"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.bgClose = self.transform:Find("bg_none"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textGo = self.transform:Find("popup/button_go/text_go"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textComplete = self.transform:Find("popup/button_complete/text_complete"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textQuestReward = self.transform:Find("popup/text_quest_reward"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
