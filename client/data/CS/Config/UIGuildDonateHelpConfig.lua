--- @class UIGuildDonateHelpConfig
UIGuildDonateHelpConfig = Class(UIGuildDonateHelpConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIGuildDonateHelpConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonBg = self.transform:Find("bg_none"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonClose = self.transform:Find("popup/button_close"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textTitle = self.transform:Find("popup/text_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_LoopVerticalScrollRect
	self.loopScrollRectLeft = self.transform:Find("popup/loop_scroll_rect_left"):GetComponent(ComponentName.UnityEngine_UI_LoopVerticalScrollRect)
	--- @type UnityEngine_UI_LoopVerticalScrollRect
	self.loopScrollRectRight = self.transform:Find("popup/loop_scroll_rect_right"):GetComponent(ComponentName.UnityEngine_UI_LoopVerticalScrollRect)
end
