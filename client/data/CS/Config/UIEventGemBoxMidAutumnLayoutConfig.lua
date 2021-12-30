--- @class UIEventGemBoxMidAutumnLayoutConfig
UIEventGemBoxMidAutumnLayoutConfig = Class(UIEventGemBoxMidAutumnLayoutConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIEventGemBoxMidAutumnLayoutConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_LoopVerticalScrollRect
	self.scrollVertical = self.transform:Find("scroll_vertical"):GetComponent(ComponentName.UnityEngine_UI_LoopVerticalScrollRect)
	--- @type UnityEngine_UI_Text
	self.localizeEventContent = self.transform:Find("text_event_content"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeEventName = self.transform:Find("text_event_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.moneyBarAnchor = self.transform:Find("money_bar_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
