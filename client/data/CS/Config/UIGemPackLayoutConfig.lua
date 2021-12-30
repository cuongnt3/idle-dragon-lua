--- @class UIGemPackLayoutConfig
UIGemPackLayoutConfig = Class(UIGemPackLayoutConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIGemPackLayoutConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_LoopVerticalScrollRect
	self.scrollVertical = self.transform:Find("scroll_vertical"):GetComponent(ComponentName.UnityEngine_UI_LoopVerticalScrollRect)
	--- @type UnityEngine_UI_Text
	self.localizeEventName = self.transform:Find("text_event_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.moneyBarAnchor = self.transform:Find("money_bar_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_GameObject
	self.moneyLocalBarInfo = self.transform:Find("money_bar_anchor/money_bar_info").gameObject
end
