--- @class UISelectMapPVEConfig
UISelectMapPVEConfig = Class(UISelectMapPVEConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UISelectMapPVEConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonBack = self.transform:Find("safe_area/back_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonTutorial = self.transform:Find("safe_area/anchor_top/button_?"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonLeaderBoard = self.transform:Find("safe_area/anchor_top/button_leaderboard"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonMap = self.transform:Find("safe_area/anchor_top/button_map"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonTeam = self.transform:Find("safe_area/anchor_bottom/bottom/auto_team_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonQuickBattle = self.transform:Find("safe_area/anchor_bottom/bottom/quick_battle_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonBattle = self.transform:Find("safe_area/anchor_bottom/bottom/battle_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_LoopHorizontalScrollRect
	self.scroll = self.transform:Find("safe_area/anchor_bottom/bottom/scroll"):GetComponent(ComponentName.UnityEngine_UI_LoopHorizontalScrollRect)
	--- @type UnityEngine_UI_Text
	self.textMap = self.transform:Find("safe_area/anchor_bottom/bottom/quick_battle_button/text_map"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.goldRoot = self.transform:Find("safe_area/anchor_top/top_pannel/diamond"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.magicPotionRoot = self.transform:Find("safe_area/anchor_top/top_pannel/basic_quest_scroll"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.localizeBattle = self.transform:Find("safe_area/anchor_bottom/bottom/battle_button/text_battle"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeTraining = self.transform:Find("safe_area/anchor_bottom/bottom/auto_team_button/text_auto_team"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeMap = self.transform:Find("safe_area/anchor_bottom/bottom/quick_battle_button/text_map"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.safeArea = self.transform:Find("safe_area"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.autoTimeBar = self.transform:Find("safe_area/anchor_top/auto_time_bar"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.idleGold = self.transform:Find("idle_info/idle_reward_info"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.idleMagicPotion = self.transform:Find("idle_info/idle_reward_info (1)"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.idleExp = self.transform:Find("idle_info/idle_reward_info (2)"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_GameObject
	self.notiQuickBattle = self.transform:Find("safe_area/anchor_bottom/bottom/quick_battle_button/icon_new").gameObject
	--- @type UnityEngine_GameObject
	self.notiTraining = self.transform:Find("safe_area/anchor_bottom/bottom/auto_team_button/icon_new").gameObject
	--- @type UnityEngine_UI_Button
	self.buttonQuickGold = self.transform:Find("safe_area/anchor_right/right/item_quick_battle"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonQuickMagicPotion = self.transform:Find("safe_area/anchor_right/right/item_quick_battle (1)"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonQuickExp = self.transform:Find("safe_area/anchor_right/right/item_quick_battle (2)"):GetComponent(ComponentName.UnityEngine_UI_Button)
end
