--- @class UIGuildAreaConfig
UIGuildAreaConfig = Class(UIGuildAreaConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIGuildAreaConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.backButton = self.transform:Find("back_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_Transform
	self.guildAreaWorld = self.transform:Find("guild_area_world")
end
