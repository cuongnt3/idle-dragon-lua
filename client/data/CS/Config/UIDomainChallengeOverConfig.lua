--- @class UIDomainChallengeOverConfig
UIDomainChallengeOverConfig = Class(UIDomainChallengeOverConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIDomainChallengeOverConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textChallengeOver = self.transform:Find("bg_title_glow/text_challenge_over"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textCongrat = self.transform:Find("text_congrat"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textReward = self.transform:Find("text_reward"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.rewardAnchor = self.transform:Find("reward_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textGotoMail = self.transform:Find("button_goto_mail/text_goto_mail"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.bgClose = self.transform:Find("bg_close"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textSent = self.transform:Find("text_sent"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonGotoMail = self.transform:Find("button_goto_mail"):GetComponent(ComponentName.UnityEngine_UI_Button)
end
