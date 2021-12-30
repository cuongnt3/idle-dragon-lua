--- @class UserChatViewConfig
UserChatViewConfig = Class(UserChatViewConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UserChatViewConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textGuestNameServer = self.transform:Find("guest_chat_box/GameObject/text_guest_name_server"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textGuildNameLevelGuest = self.transform:Find("guest_chat_box/guest_chat_box/bg_chat_box_guest/text_guild_name_level_guest"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textChatGuest = self.transform:Find("guest_chat_box/guest_chat_box/bg_chat_box_guest/text_chat_guest"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textChatTimeGuest = self.transform:Find("guest_chat_box/guest_chat_box/bg_chat_box_guest/bottom/text_chat_time_guest"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonJoin = self.transform:Find("guest_chat_box/guest_chat_box/bg_chat_box_guest/bottom/bg_button_cam"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.userAvatar = self.transform:Find("GameObject (1)/icon_position"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_GameObject
	self.guildName = self.transform:Find("guest_chat_box/GameObject").gameObject
	--- @type UnityEngine_GameObject
	self.join = self.transform:Find("guest_chat_box/guest_chat_box/bg_chat_box_guest/bottom").gameObject
	--- @type UnityEngine_UI_Text
	self.localizeJoin = self.transform:Find("guest_chat_box/guest_chat_box/bg_chat_box_guest/bottom/bg_button_cam/text_join"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
