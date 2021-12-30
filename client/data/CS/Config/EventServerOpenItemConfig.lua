--- @class EventServerOpenItemConfig
EventServerOpenItemConfig = Class(EventServerOpenItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function EventServerOpenItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_GameObject
	self.tick = self.transform:Find("icon_stick_slot/tick").gameObject
	--- @type UnityEngine_UI_Image
	self.progress = self.transform:Find("bg_quest_progress_bar_slot/bg_quest_progress_bar_2"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Image
	self.progressFull = self.transform:Find("bg_quest_progress_bar_slot/bg_quest_progress_bar_full"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.textQuestContent = self.transform:Find("text_quest_content"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textProgress = self.transform:Find("bg_quest_progress_bar_slot/text_progress"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.itemAnchor = self.transform:Find("item_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.goButton = self.transform:Find("go_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.collectButton = self.transform:Find("collect_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_GameObject
	self.bgQuestProgressBarFull = self.transform:Find("bg_quest_progress_bar_slot/bg_quest_progress_bar_full").gameObject
	--- @type UnityEngine_Animation
	self.animation = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_Animation)
	--- @type UnityEngine_UI_Text
	self.localizeGo = self.transform:Find("go_button/text_go"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeCollect = self.transform:Find("collect_button/text_collect"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textVip = self.transform:Find("buy/text_vip"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textBuy = self.transform:Find("buy/buy_button/text_buy"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buyButton = self.transform:Find("buy/buy_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Image
	self.iconMoney = self.transform:Find("buy/buy_button/icon_money"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.textPrice = self.transform:Find("buy/buy_button/text_price"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
