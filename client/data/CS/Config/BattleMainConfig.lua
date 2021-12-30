--- @class BattleMainConfig
BattleMainConfig = Class(BattleMainConfig)

--- @return void
--- @param transform UnityEngine_Transform
function BattleMainConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonSkip = self.transform:Find("top/button_skip"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonInfo = self.transform:Find("top/button_info"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textNumberRound = self.transform:Find("top/text_number_round"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.attackerIconCompanions = self.transform:Find("icon_companion_attacker"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Image
	self.defenderIconCompanions = self.transform:Find("icon_companion_defender"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_RectTransform
	self.attackerWrath = self.transform:Find("top/attacker_wrath"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.defenderWrath = self.transform:Find("top/defender_wrath"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.buttonCompanionAttacker = self.transform:Find("icon_companion_attacker"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonCompanionDefender = self.transform:Find("icon_companion_defender"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textRound = self.transform:Find("top/text_round"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type DG_Tweening_DOTweenAnimation
	self.tweenRound = self.transform:Find("top/text_number_round"):GetComponent(ComponentName.DG_Tweening_DOTweenAnimation)
	--- @type UnityEngine_UI_Button
	self.buttonSkipVideo = self.transform:Find("top/button_skip_video"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.buttonSpeedUp1 = self.transform:Find("top/button_speed_up"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.buttonSpeedUp2 = self.transform:Find("top/button_speed_up_2"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_GameObject
	self.xmasDamageView = self.transform:Find("top/xmas_damage_view").gameObject
end
