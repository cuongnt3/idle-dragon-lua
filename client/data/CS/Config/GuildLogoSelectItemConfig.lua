--- @class GuildLogoSelectItemConfig
GuildLogoSelectItemConfig = Class(GuildLogoSelectItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function GuildLogoSelectItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Image
	self.iconGuildFlag = self.transform:Find("icon_guild_flag"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_GameObject
	self.select = self.transform:Find("select").gameObject
	--- @type UnityEngine_UI_Button
	self.buttonSelect = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_GameObject
	self.iconTick = self.transform:Find("icon_tick").gameObject
end
