--- @class UIGuildWarMedalConfig
UIGuildWarMedalConfig = Class(UIGuildWarMedalConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIGuildWarMedalConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_GameObject
	self.iconGuildWarMedals = self.transform:Find("icon_guild_war_medals").gameObject
	--- @type UnityEngine_UI_Text
	self.textWin = self.transform:Find("text_win"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
