--- @class UIRewardLevelUpBeastConfig
UIRewardLevelUpBeastConfig = Class(UIRewardLevelUpBeastConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIRewardLevelUpBeastConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonClose = self.transform:Find("popup/button_close"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textTitle = self.transform:Find("popup/text_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textInstanceReward = self.transform:Find("popup/exchange_requiredment/text_instance_reward"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.instanceRewardAnchor = self.transform:Find("popup/exchange_requiredment/instance_reward_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textRandomReward = self.transform:Find("popup/exchange_requiredment/bg_random_reward/text_random_reward"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.randomRewardAnchor = self.transform:Find("popup/exchange_requiredment/bg_random_reward/random_reward_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.bgNone = self.transform:Find("bg_none"):GetComponent(ComponentName.UnityEngine_UI_Button)
end
