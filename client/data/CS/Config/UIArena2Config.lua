--- @class UIArena2Config
UIArena2Config = Class(UIArena2Config)

--- @return void
--- @param transform UnityEngine_Transform
function UIArena2Config:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_LoopVerticalScrollRect
	self.scroll = self.transform:Find("left_menu_content/VerticalScroll"):GetComponent(ComponentName.UnityEngine_UI_LoopVerticalScrollRect)
	--- @type UnityEngine_RectTransform
	self.tab = self.transform:Find("left_menu_content/top_tab_system"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Image
	self.iconRankArena = self.transform:Find("current_ranking/icon_current_ranking"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.textRanking = self.transform:Find("current_ranking/text_ranking"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textSeasonEnd = self.transform:Find("left_menu_content/text_season_end"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textPoint = self.transform:Find("current_ranking/text_point"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonBattle = self.transform:Find("left_menu_content/bg_button_green"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonDefense = self.transform:Find("defense_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonRecord = self.transform:Find("bot_menu_icon/leaderboard_icon"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonStore = self.transform:Find("bot_menu_icon/merchant_icon"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonReward = self.transform:Find("bot_menu_icon/reward_icon"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.moneyBarInfo = self.transform:Find("top_currency/money_bar_info"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.buttonBack = self.transform:Find("back_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonHelp = self.transform:Find("icon_?"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.localizeBattle = self.transform:Find("left_menu_content/bg_button_green/text_battle"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeDefense = self.transform:Find("defense_button/text_defense"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeRecord = self.transform:Find("bot_menu_icon/leaderboard_icon/text_leaderboard"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeReward = self.transform:Find("bot_menu_icon/reward_icon/text_reward"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.safeArea = self.transform:Find("safe_area"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_GameObject
	self.notiBattle = self.transform:Find("left_menu_content/bg_button_green/noti").gameObject
	--- @type UnityEngine_UI_Text
	self.timeStamina = self.transform:Find("top_currency/time_stamina"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeShop = self.transform:Find("bot_menu_icon/merchant_icon/text_merchant"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeAttack1 = self.transform:Find("left_menu_content/top_tab_system/top_tab_attack_log/tab_attack_log_off/text_attack_log_off"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeAttack2 = self.transform:Find("left_menu_content/top_tab_system/top_tab_attack_log/tab_attack_log_on/text_attack_log_on"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeDefense1 = self.transform:Find("left_menu_content/top_tab_system/top_tab_defense_log/tab_defense_log_off/text_attack_log_off"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeDefense2 = self.transform:Find("left_menu_content/top_tab_system/top_tab_defense_log/tab_defense_log_on/text_attack_log_on"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
