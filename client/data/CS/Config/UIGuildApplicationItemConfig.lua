--- @class UIGuildApplicationItemConfig
UIGuildApplicationItemConfig = Class(UIGuildApplicationItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIGuildApplicationItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textPlayerName = self.transform:Find("text_player_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textPlayerLevel = self.transform:Find("text_player_level"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonAccept = self.transform:Find("button_accept"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonDecline = self.transform:Find("button_decline"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.avatarAnchor = self.transform:Find("avatar_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.localizeAccept = self.transform:Find("button_accept/text_apply"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeDecline = self.transform:Find("button_decline/text_apply"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
