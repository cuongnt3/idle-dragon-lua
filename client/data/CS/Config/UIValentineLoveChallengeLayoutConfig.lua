--- @class UIValentineLoveChallengeLayoutConfig
UIValentineLoveChallengeLayoutConfig = Class(UIValentineLoveChallengeLayoutConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIValentineLoveChallengeLayoutConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textEventName = self.transform:Find("text_event_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textEventDesc = self.transform:Find("text_event_desc"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textTicket = self.transform:Find("buy_currency/text_ticket"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textRewardTitle = self.transform:Find("reward_pool_popup/reward_pool_header/text_reward_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textButton = self.transform:Find("button_challenge/text_go"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.iconItemRewardPool = self.transform:Find("reward_pool_popup/icon_item_reward_pool"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.buttonChallenge = self.transform:Find("button_challenge"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.iconSkillSystem = self.transform:Find("icon_skill_system"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.iconSkillPreview = self.transform:Find("icon_skill_preview"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_RawImage
	self.iconHero = self.transform:Find("icon_frosty_ignatius"):GetComponent(ComponentName.UnityEngine_UI_RawImage)
	--- @type UnityEngine_UI_Image
	self.factionIcon = self.transform:Find("icon_frosty_ignatius/faction_icon"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.heroNameTxt = self.transform:Find("icon_frosty_ignatius/hero_name_txt"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonBuyTurn = self.transform:Find("buy_currency/button_buy_turn"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textTurnLeft = self.transform:Find("buy_currency/text_turn_left"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
