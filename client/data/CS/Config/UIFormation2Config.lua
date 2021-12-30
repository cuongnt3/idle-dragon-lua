--- @class UIFormation2Config
UIFormation2Config = Class(UIFormation2Config)

--- @return void
--- @param transform UnityEngine_Transform
function UIFormation2Config:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonBack = self.transform:Find("back_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonArrow = self.transform:Find("safe_area/anchor_right/Image/button_arrow"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.skipButton = self.transform:Find("group_select_hero/bg_main_pannel_2/bg_main_pannel_1/can_skip/auto_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.battleButtonNotSkip = self.transform:Find("group_select_hero/bg_main_pannel_2/bg_main_pannel_1/battle_button_not_skip"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.battleButton = self.transform:Find("group_select_hero/bg_main_pannel_2/bg_main_pannel_1/can_skip/battle_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.battleButton2 = self.transform:Find("group_select_hero/battle_button_2"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonAuraSkill = self.transform:Find("safe_area/anchor_bottom/attacker_info/button_aura_skill"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonAuraSkill2 = self.transform:Find("safe_area/anchor_bottom/defender_info/button_aura_skill"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_GameObject
	self.groupSelectHero = self.transform:Find("group_select_hero").gameObject
	--- @type UnityEngine_RectTransform
	self.heroList = self.transform:Find("group_select_hero/bg_main_pannel_2/bg_main_pannel_1/heroList"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.team = self.transform:Find("safe_area/anchor_left/formation"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.localizeVs = self.transform:Find("safe_area/anchor_top/bg_pve/text_vs"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeSelectHero = self.transform:Find("group_select_hero/bg_main_pannel_2/bg_main_pannel_1/text_select_heroes_to_battle"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeSkip = self.transform:Find("group_select_hero/bg_main_pannel_2/bg_main_pannel_1/can_skip/auto_button/text_auto"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeBattle = self.transform:Find("group_select_hero/bg_main_pannel_2/bg_main_pannel_1/battle_button_not_skip/text_battle"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeBattle2 = self.transform:Find("group_select_hero/bg_main_pannel_2/bg_main_pannel_1/can_skip/battle_button/text_battle"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeBattle3 = self.transform:Find("group_select_hero/battle_button_2/text_battle"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textPowerAttacker = self.transform:Find("safe_area/anchor_top/ap/text_ap_value"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textPowerDefender = self.transform:Find("safe_area/anchor_top/ap (1)/text_ap_value"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.powerAttacker = self.transform:Find("safe_area/anchor_top/ap").gameObject
	--- @type UnityEngine_GameObject
	self.powerDefender = self.transform:Find("safe_area/anchor_top/ap (1)").gameObject
	--- @type UnityEngine_GameObject
	self.enemyFormation = self.transform:Find("safe_area/anchor_right/Image").gameObject
	--- @type UnityEngine_UI_Image
	self.companion1 = self.transform:Find("safe_area/anchor_bottom/attacker_info/button_aura_skill"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Image
	self.companion2 = self.transform:Find("safe_area/anchor_bottom/defender_info/button_aura_skill"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_GameObject
	self.canSkip = self.transform:Find("group_select_hero/bg_main_pannel_2/bg_main_pannel_1/can_skip").gameObject
	--- @type UnityEngine_GameObject
	self.attackerInfo = self.transform:Find("safe_area/anchor_bottom/attacker_info").gameObject
	--- @type UnityEngine_GameObject
	self.defenderInfo = self.transform:Find("safe_area/anchor_bottom/defender_info").gameObject
	--- @type UnityEngine_RectTransform
	self.linkingPos1 = self.transform:Find("linking_pos1"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.linkingPos2 = self.transform:Find("linking_pos2"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.linkingAttacker = self.transform:Find("safe_area/anchor_bottom/attacker_info/linking_attacker"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.linkingDefender = self.transform:Find("safe_area/anchor_bottom/defender_info/linking_attacker"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.linkingSelected = self.transform:Find("linking_selected"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.buttonRemoveAll = self.transform:Find("safe_area/anchor_bottom/button_remove_all"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textEnemy = self.transform:Find("safe_area/anchor_right/Image/Text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeRemoveAll = self.transform:Find("safe_area/anchor_bottom/button_remove_all/txt_remove"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeFormation1 = self.transform:Find("safe_area/anchor_left/formation/team_formation_left/team_up_button2/icon_formation/Text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeFormation2 = self.transform:Find("safe_area/anchor_left/formation/team_formation_left (1)/team_up_button2/icon_formation/Text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeFormation3 = self.transform:Find("safe_area/anchor_left/formation/team_formation_left (2)/team_up_button2/icon_formation/Text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeFormation4 = self.transform:Find("safe_area/anchor_left/formation/team_formation_left (3)/team_up_button2/icon_formation/Text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_VerticalLayoutGroup
	self.teamLayout = self.transform:Find("safe_area/anchor_left/formation"):GetComponent(ComponentName.UnityEngine_UI_VerticalLayoutGroup)
	--- @type UnityEngine_RectTransform
	self.teamArena = self.transform:Find("safe_area/anchor_bottom/team"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.localizeTeam1 = self.transform:Find("safe_area/anchor_bottom/team/team_formation_3v3/team_up_button2/Text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeTeam2 = self.transform:Find("safe_area/anchor_bottom/team/team_formation_3v3 (1)/team_up_button2/Text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeTeam3 = self.transform:Find("safe_area/anchor_bottom/team/team_formation_3v3 (2)/team_up_button2/Text"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
