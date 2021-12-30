--- @class UIGuildMemberInfoConfig
UIGuildMemberInfoConfig = Class(UIGuildMemberInfoConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIGuildMemberInfoConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.bgClose = self.transform:Find("bg_none"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonAddFriend = self.transform:Find("popup/button_add_friend"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonKick = self.transform:Find("popup/button_kick"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonPromote = self.transform:Find("popup/button_promote"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonSendMail = self.transform:Find("popup/button_send_mail"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textPlayerCp = self.transform:Find("popup/text_player_cp"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.playerAvatarAnchor = self.transform:Find("popup/player_avatar_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textPlayerName = self.transform:Find("popup/text_player_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textPlayerId = self.transform:Find("popup/text_player_id"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textPlayerRole = self.transform:Find("popup/text_player_role"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.teamAnchor = self.transform:Find("popup/team_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.buttonDemote = self.transform:Find("popup/button_demote"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.localizeDefensiveLineup = self.transform:Find("popup/defensive_lineup"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeKick = self.transform:Find("popup/button_kick/text_kick"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeDemote = self.transform:Find("popup/button_demote/text_promote"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeSendMail = self.transform:Find("popup/button_send_mail/text_send_mail"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizePromote = self.transform:Find("popup/button_promote/text_promote"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
