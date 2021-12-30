--- @class UIGuildWarDefenderLogConfig
UIGuildWarDefenderLogConfig = Class(UIGuildWarDefenderLogConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIGuildWarDefenderLogConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textName = self.transform:Find("text_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textGuildWarMedalsPoint = self.transform:Find("icon_medal/text_guild_war_medals_point"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonReplay = self.transform:Find("button_replay"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_GameObject
	self.iconDefenseSuccess = self.transform:Find("icon_defense_sucess").gameObject
	--- @type UnityEngine_GameObject
	self.iconDefenseFailure = self.transform:Find("icon_defense_failure").gameObject
	--- @type UnityEngine_GameObject
	self.iconMedal = self.transform:Find("icon_medal").gameObject
	--- @type UnityEngine_GameObject
	self.iconAttackSuccess = self.transform:Find("icon_attack_success").gameObject
	--- @type UnityEngine_GameObject
	self.iconAttackFailure = self.transform:Find("icon_attack_failure").gameObject
end
