--- @class UIEventConfig
UIEventConfig = Class(UIEventConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIEventConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonAsk = self.transform:Find("button_ask"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonBack = self.transform:Find("back_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_GameObject
	self.VerticalScrollTab = self.transform:Find("scroll_tab").gameObject
	--- @type UnityEngine_UI_LoopVerticalScrollRect
	self.VerticalScrollContent = self.transform:Find("scroll_content"):GetComponent(ComponentName.UnityEngine_UI_LoopVerticalScrollRect)
	--- @type UnityEngine_UI_Image
	self.eventBanner = self.transform:Find("event_view/event_banner"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.eventTittle = self.transform:Find("event_view/event_banner/bg_text_glow/text_event_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.eventDesc = self.transform:Find("event_view/event_banner/bg_block_duration_time_holder/event_desc"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.loginEventAnchor = self.transform:Find("event_view/login_event_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.exchangeEventAnchor = self.transform:Find("event_view/exchange_event_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_GridLayoutGroup
	self.contentGroupLayout = self.transform:Find("scroll_content/content"):GetComponent(ComponentName.UnityEngine_UI_GridLayoutGroup)
	--- @type UnityEngine_RectTransform
	self.guildQuestEventAnchor = self.transform:Find("event_view/guild_quest_event_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textRound = self.transform:Find("event_view/event_banner/text_round"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.bgTextGlow = self.transform:Find("event_view/event_banner/bg_text_glow"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Outline
	self.outLineTextRound = self.transform:Find("event_view/event_banner/text_round"):GetComponent(ComponentName.UnityEngine_UI_Outline)
	--- @type UnityEngine_UI_ScrollRect
	self.scrollTab = self.transform:Find("scroll_tab"):GetComponent(ComponentName.UnityEngine_UI_ScrollRect)
	--- @type UnityEngine_RectTransform
	self.scrollTabContent = self.transform:Find("scroll_tab/scroll_tab_content"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.communityAnchor = self.transform:Find("event_view/community_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textCommunity = self.transform:Find("scroll_tab/scroll_tab_content/community/text_community"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.communityTab = self.transform:Find("scroll_tab/scroll_tab_content/community"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
