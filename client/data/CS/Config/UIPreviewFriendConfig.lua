--- @class UIPreviewFriendConfig
UIPreviewFriendConfig = Class(UIPreviewFriendConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIPreviewFriendConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.bg = self.transform:Find("bg_none"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.teamInfo = self.transform:Find("popup/team_up_demo"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.buttonBlock = self.transform:Find("popup/button_block"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonSendMail = self.transform:Find("popup/button_send_mail"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textAp = self.transform:Find("popup/text_ap_value"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.iconHero = self.transform:Find("popup/icon_user_chat"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textUserName = self.transform:Find("popup/text_guest_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textUserId = self.transform:Find("popup/text_guest_id"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textGuild = self.transform:Find("popup/text_guid_id"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonDelete = self.transform:Find("popup/delete_friend_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonAdd = self.transform:Find("popup/add_friend_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.bgFilterPannel = self.transform:Find("popup"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.localizeBlock = self.transform:Find("popup/button_block/text_block"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeSendMail = self.transform:Find("popup/button_send_mail/text_send_mail"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeDefensiveLineup = self.transform:Find("popup/text_noi_dung_skill"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.listHeroAnchor = self.transform:Find("popup/list_hero_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
