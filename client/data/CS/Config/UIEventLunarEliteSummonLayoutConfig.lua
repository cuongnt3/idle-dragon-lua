--- @class UIEventLunarEliteSummonLayoutConfig
UIEventLunarEliteSummonLayoutConfig = Class(UIEventLunarEliteSummonLayoutConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIEventLunarEliteSummonLayoutConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.moneyTableView = self.transform:Find("money_table_view"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.rewardAnchor = self.transform:Find("reward_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.buttonSum1 = self.transform:Find("button_sum_1"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonSum10 = self.transform:Find("button_sum_10"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textSum1 = self.transform:Find("button_sum_1/text_sum_1"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textSum10 = self.transform:Find("button_sum_10/text_sum_10"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textFreeSummon = self.transform:Find("free_summon/text_free_summon"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textSummonCount = self.transform:Find("accumulate/text_summon_count"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.iconPrice1 = self.transform:Find("button_sum_1/icon_price_1"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Image
	self.iconPrice10 = self.transform:Find("button_sum_10/icon_price_10"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Button
	self.chosenHeroRewardAnchor = self.transform:Find("chosen_hero_reward_anchor/button_chose"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.progress = self.transform:Find("accumulate/progress"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.accumulateRewardAnchor = self.transform:Find("accumulate/accumulate_reward_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textGemSummon = self.transform:Find("gem_summon/text_gem_summon"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textPriceSum1 = self.transform:Find("button_sum_1/bg_currency/text_price_sum_1"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textPriceSum10 = self.transform:Find("button_sum_10/bg_currency/text_price_sum_10"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.gemSummon = self.transform:Find("gem_summon").gameObject
	--- @type UnityEngine_GameObject
	self.softTut = self.transform:Find("chosen_hero_reward_anchor/button_chose/soft_tut").gameObject
end
