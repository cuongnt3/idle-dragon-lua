--- @class UINewHeroBossChallengeLayoutConfig
UINewHeroBossChallengeLayoutConfig = Class(UINewHeroBossChallengeLayoutConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UINewHeroBossChallengeLayoutConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonChallenge = self.transform:Find("button_challenge"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textChallenge = self.transform:Find("button_challenge/text_challenge"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textDesc = self.transform:Find("bg_charon_boss/text_desc"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textLimitReward = self.transform:Find("bg_charon_boss/text_limit_reward"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textTitle = self.transform:Find("bg_charon_boss/bg_text_glow/text_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textBossName = self.transform:Find("bg_charon_boss/text_boss_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.iconFaction = self.transform:Find("bg_charon_boss/text_boss_name/icon_faction"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.textDamage = self.transform:Find("bg_charon_boss/damage/text_damage"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textDamageValue = self.transform:Find("bg_charon_boss/damage/text_damage_value"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.skillView = self.transform:Find("bg_charon_boss/skill_view"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.skillPreview = self.transform:Find("skill_preview"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_RawImage
	self.bossView = self.transform:Find("bg_charon_boss/boss_view"):GetComponent(ComponentName.UnityEngine_UI_RawImage)
	--- @type UnityEngine_RectTransform
	self.milestoneBar = self.transform:Find("bg_charon_boss/milestone_bar"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Image
	self.progressBar = self.transform:Find("bg_charon_boss/progress_bar"):GetComponent(ComponentName.UnityEngine_UI_Image)
end
