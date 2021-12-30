--- @class UIBlockPlayerItemConfig
UIBlockPlayerItemConfig = Class(UIBlockPlayerItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIBlockPlayerItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.iconHero = self.transform:Find("iconHero"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textUserName = self.transform:Find("text_user_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textEventTimeJoin = self.transform:Find("text_event_time_join"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonUnblock = self.transform:Find("button_unblock"):GetComponent(ComponentName.UnityEngine_UI_Button)
end
