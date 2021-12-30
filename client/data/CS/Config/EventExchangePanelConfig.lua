--- @class EventExchangePanelConfig
EventExchangePanelConfig = Class(EventExchangePanelConfig)

--- @return void
--- @param transform UnityEngine_Transform
function EventExchangePanelConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonHelp = self.transform:Find("hero/icon_button_?"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_LoopHorizontalScrollRect
	self.scrollView = self.transform:Find("hero/scroll_horizontal"):GetComponent(ComponentName.UnityEngine_UI_LoopHorizontalScrollRect)
	--- @type UnityEngine_RectTransform
	self.rootMoney = self.transform:Find("hero/root_money"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_GameObject
	self.left = self.transform:Find("hero/left").gameObject
	--- @type UnityEngine_GameObject
	self.right = self.transform:Find("hero/right").gameObject
	--- @type UnityEngine_UI_LoopVerticalScrollRect
	self.scrollVertical = self.transform:Find("item/scroll_vertical"):GetComponent(ComponentName.UnityEngine_UI_LoopVerticalScrollRect)
	--- @type UnityEngine_GameObject
	self.item = self.transform:Find("item").gameObject
	--- @type UnityEngine_GameObject
	self.hero = self.transform:Find("hero").gameObject
	--- @type UnityEngine_UI_Text
	self.eventContent = self.transform:Find("hero/hero_exchange_content/event_content/event_content"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textEventName = self.transform:Find("hero/hero_exchange_content/event_title/text_event_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
