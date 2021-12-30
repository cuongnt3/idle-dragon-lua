--- @class UIGuildApplicationConfig
UIGuildApplicationConfig = Class(UIGuildApplicationConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIGuildApplicationConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonClose = self.transform:Find("popup/button_close"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textRequestCount = self.transform:Find("popup/text_request_count"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_LoopVerticalScrollRect
	self.requestScroll = self.transform:Find("popup/request_scroll"):GetComponent(ComponentName.UnityEngine_UI_LoopVerticalScrollRect)
	--- @type UnityEngine_UI_Button
	self.bgClose = self.transform:Find("bg_none"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textTitle = self.transform:Find("popup/text_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.empty = self.transform:Find("popup/empty").gameObject
	--- @type UnityEngine_UI_Text
	self.textEmpty = self.transform:Find("popup/empty/text_empty"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
