--- @class GuildIconViewConfig
GuildIconViewConfig = Class(GuildIconViewConfig)

--- @return void
--- @param transform UnityEngine_Transform
function GuildIconViewConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Image
	self.avatar = self.transform:Find("avatar"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.textLevel = self.transform:Find("text_level"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textLevelNumber = self.transform:Find("text_level_number"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
