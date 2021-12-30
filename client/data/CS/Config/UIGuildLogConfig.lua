--- @class UIGuildLogConfig
UIGuildLogConfig = Class(UIGuildLogConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIGuildLogConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.bgClose = self.transform:Find("bg_none"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_LoopVerticalScrollRect
	self.scrollLog = self.transform:Find("popup/scroll_log"):GetComponent(ComponentName.UnityEngine_UI_LoopVerticalScrollRect)
	--- @type UnityEngine_RectTransform
	self.rectContent = self.transform:Find("popup/scroll_log/Viewport/Content"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textTitle = self.transform:Find("popup/text_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonClose = self.transform:Find("popup/button_close"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_GameObject
	self.empty = self.transform:Find("empty").gameObject
	--- @type UnityEngine_UI_Text
	self.textEmpty = self.transform:Find("empty/text_empty"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
