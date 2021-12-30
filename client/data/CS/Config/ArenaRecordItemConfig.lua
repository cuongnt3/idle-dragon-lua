--- @class ArenaRecordItemConfig
ArenaRecordItemConfig = Class(ArenaRecordItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function ArenaRecordItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textWin = self.transform:Find("text_win"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.heroSlot = self.transform:Find("hero_slot"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textUserName = self.transform:Find("user_name_event_time/text_user_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textEventTimeJoin = self.transform:Find("user_name_event_time/text_event_time_join"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textScoreValue = self.transform:Find("score/text_score_value"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonPlayRecord = self.transform:Find("button_play_record"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonBattle = self.transform:Find("button_play"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_GameObject
	self.arrowUp = self.transform:Find("score/arrow_2").gameObject
	--- @type UnityEngine_GameObject
	self.arrowDown = self.transform:Find("score/arrow_1").gameObject
	--- @type UnityEngine_UI_Text
	self.localizeScore = self.transform:Find("score/text_score"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeReplay = self.transform:Find("button_play/Text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.iconAttackSuccess = self.transform:Find("icon/icon_attack_success").gameObject
	--- @type UnityEngine_GameObject
	self.iconDefenseSuccess = self.transform:Find("icon/icon_defense_success").gameObject
	--- @type UnityEngine_GameObject
	self.iconAttackFail = self.transform:Find("icon/icon_attack_fail").gameObject
	--- @type UnityEngine_GameObject
	self.iconDefenseFail = self.transform:Find("icon/icon_defense_fail").gameObject
	--- @type UnityEngine_GameObject
	self.noti = self.transform:Find("noti").gameObject
end
