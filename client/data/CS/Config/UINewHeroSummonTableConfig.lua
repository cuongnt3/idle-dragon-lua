--- @class UINewHeroSummonTableConfig
UINewHeroSummonTableConfig = Class(UINewHeroSummonTableConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UINewHeroSummonTableConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.newHeroButtonGreen = self.transform:Find("new_hero_summoner/rateup_summon/rateup_buy_button/rateup_button_green"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.newHeroButtonRed = self.transform:Find("new_hero_summoner/rateup_summon/rateup_buy_button/rateup_button_red"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Image
	self.iconScrollNewHero1 = self.transform:Find("new_hero_summoner/rateup_summon/rateup_buy_button/rateup_button_green/GameObject/summon_scroll_value/icon_basic_scroll"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Image
	self.iconScrollNewHero10 = self.transform:Find("new_hero_summoner/rateup_summon/rateup_buy_button/rateup_button_red/summon_scroll_value/icon_basic_scroll"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.textNewHeroPrice = self.transform:Find("new_hero_summoner/rateup_summon/rateup_buy_button/rateup_button_green/GameObject/summon_scroll_value/text_value"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textNewHeroPrice10 = self.transform:Find("new_hero_summoner/rateup_summon/rateup_buy_button/rateup_button_red/summon_scroll_value/text_value"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textNewHeroTime = self.transform:Find("new_hero_summoner/rateup_summon/rateup_buy_button/Image/text_free_refesh"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textNewHeroFree = self.transform:Find("new_hero_summoner/rateup_summon/rateup_buy_button/rateup_button_green/text_free"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
