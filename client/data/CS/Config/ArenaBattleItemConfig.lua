--- @class ArenaBattleItemConfig
ArenaBattleItemConfig = Class(ArenaBattleItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function ArenaBattleItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Image
	self.iconRankArena = self.transform:Find("icon_rank_arena"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_RectTransform
	self.heroSlot = self.transform:Find("hero_slot"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textScore = self.transform:Find("score/text_score_value"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textAp = self.transform:Find("ap_stats/text_ap_raid"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonBattleArena = self.transform:Find("battle_button/bg_button_green"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textCoin = self.transform:Find("battle_button/bg_button_green/gem_currency/text_gem_value"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textPlayerName = self.transform:Find("text_player_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeScore = self.transform:Find("score/text_score"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeBattle = self.transform:Find("battle_button/bg_button_green/text_refesh"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
