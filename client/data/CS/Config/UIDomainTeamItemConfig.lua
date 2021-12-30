--- @class UIDomainTeamItemConfig
UIDomainTeamItemConfig = Class(UIDomainTeamItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIDomainTeamItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Image
	self.iconGuildLeader = self.transform:Find("icon_guild_leader"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.textUserName = self.transform:Find("text_user_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.heroDemo = self.transform:Find("hero_demo"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.iconButtonSwapLeader = self.transform:Find("button/icon_button_swap_leader"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.iconButtonX = self.transform:Find("button/icon_button_x"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.iconButtonChangeLeader = self.transform:Find("button/icon_button_change_leader"):GetComponent(ComponentName.UnityEngine_UI_Button)
end
