--- @class UIFriendAddConfig
UIFriendAddConfig = Class(UIFriendAddConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIFriendAddConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textReceivedApplications = self.transform:Find("text_recommended_friends"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonDeleteAll = self.transform:Find("button_delete"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_LoopVerticalScrollRect
	self.scroll = self.transform:Find("VerticalScroll"):GetComponent(ComponentName.UnityEngine_UI_LoopVerticalScrollRect)
	--- @type UnityEngine_UI_Text
	self.localizeDeleteAll = self.transform:Find("button_delete/text_claim_and_send"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
