--- @class UIStageSelectConfig
UIStageSelectConfig = Class(UIStageSelectConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIStageSelectConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonClose = self.transform:Find("popup/button_close"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.bgClose = self.transform:Find("bg_none"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textStage = self.transform:Find("popup/text_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textGold = self.transform:Find("popup/monney/coin/text_coin_value"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textExp = self.transform:Find("popup/monney/exp/text_coin_value"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textGem = self.transform:Find("popup/monney/magic_potion/text_coin_value"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_ScrollRect
	self.scroll = self.transform:Find("popup/vertical_scroll_grid"):GetComponent(ComponentName.UnityEngine_UI_ScrollRect)
	--- @type UnityEngine_UI_Button
	self.buttonAutoBattle = self.transform:Find("popup/button_auto"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonBattle = self.transform:Find("popup/button_battle"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_GameObject
	self.gold = self.transform:Find("popup/monney/coin").gameObject
	--- @type UnityEngine_GameObject
	self.exp = self.transform:Find("popup/monney/exp").gameObject
	--- @type UnityEngine_GameObject
	self.gem = self.transform:Find("popup/monney/magic_potion").gameObject
	--- @type UnityEngine_RectTransform
	self.content = self.transform:Find("popup/vertical_scroll_grid/content"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_GameObject
	self.bgStageReward = self.transform:Find("popup").gameObject
	--- @type UnityEngine_UI_Text
	self.localizeItemLoot = self.transform:Find("popup/textLoot"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.posGoldStart = self.transform:Find("popup/monney/coin/icon_coin"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.posGemStart = self.transform:Find("popup/monney/magic_potion/icon_magic_potion"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_GameObject
	self.emptyLoot = self.transform:Find("popup/empty_loot").gameObject
end
