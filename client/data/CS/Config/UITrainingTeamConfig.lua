--- @class UITrainingTeamConfig
UITrainingTeamConfig = Class(UITrainingTeamConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UITrainingTeamConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonClose = self.transform:Find("popup/button_close"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonSave = self.transform:Find("popup/group_1/battle_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonClaim = self.transform:Find("popup/group_1/battle_claim"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.slot = self.transform:Find("popup/group_1/bg_formation_pannel_4"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.arrow = self.transform:Find("popup/group_1/arrow"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.prefabHeroList = self.transform:Find("popup/group_2/heroList"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textTimer = self.transform:Find("popup/group_1/dissemble_heroes_title/text_timer"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeClaim = self.transform:Find("popup/group_1/battle_claim/text_battle"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeBattle = self.transform:Find("popup/group_1/battle_button/text_battle"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeSelectHero = self.transform:Find("popup/group_2/text_selec_heroes_to_transmit"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeCompleteTraining = self.transform:Find("popup/group_1/dissemble_heroes_title/text_to_all_hero_complete"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textTitle = self.transform:Find("popup/group_1/dissemble_heroes_title/text_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.bgClose = self.transform:Find("bg_none"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_GameObject
	self.coverBlock = self.transform:Find("popup/group_2/cover_block").gameObject
	--- @type UnityEngine_UI_Text
	self.localizeBlockCondition = self.transform:Find("popup/group_2/cover_block/icon_empty/text_change_condition"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textTapToClose = self.transform:Find("text_tap_to_close/text_tap_to_close"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeSort = self.transform:Find("popup/group_2/heroList/sort/star/star_button/text_sort"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
