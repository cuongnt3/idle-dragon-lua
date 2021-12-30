--- @class EventCommunityPopupConfig
EventCommunityPopupConfig = Class(EventCommunityPopupConfig)

--- @return void
--- @param transform UnityEngine_Transform
function EventCommunityPopupConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textTitle = self.transform:Find("glow/text_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textDesc = self.transform:Find("text_desc"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.prefabButton = self.transform:Find("button_anchor/button_community"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.anchor = self.transform:Find("button_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textRewardDesc = self.transform:Find("icon_gem/text_reward_desc"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
