--- @class UIDomainInvitationItemConfig
UIDomainInvitationItemConfig = Class(UIDomainInvitationItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIDomainInvitationItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textName = self.transform:Find("text_guild_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textId = self.transform:Find("text_guild_id"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonApply = self.transform:Find("button_apply"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonAccept = self.transform:Find("button_accept"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textApply = self.transform:Find("button_apply/text_green"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textAccept = self.transform:Find("button_accept/text_green"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.demoHero = self.transform:Find("demo_hero"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Image
	self.iconFlag = self.transform:Find("icon_guild_teamate_flag"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.textTeamSlot = self.transform:Find("text_team_slot"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
