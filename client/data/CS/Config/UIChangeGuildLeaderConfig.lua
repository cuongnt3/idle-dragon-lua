--- @class UIChangeGuildLeaderConfig
UIChangeGuildLeaderConfig = Class(UIChangeGuildLeaderConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIChangeGuildLeaderConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonClose = self.transform:Find("popup/button_close"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.bgClose = self.transform:Find("bg_none"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textTitle = self.transform:Find("popup/text_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_LoopVerticalScrollRect
	self.memberScroll = self.transform:Find("popup/member_scroll"):GetComponent(ComponentName.UnityEngine_UI_LoopVerticalScrollRect)
end
