--- @class TabSwitchCharacterConfig
TabSwitchCharacterConfig = Class(TabSwitchCharacterConfig)

--- @return void
--- @param transform UnityEngine_Transform
function TabSwitchCharacterConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Image
	self.iconMainCharacterTab = self.transform:Find("icon_main_character_tab"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_GameObject
	self.imageOn = self.transform:Find("bg_chosen_hero_tab").gameObject
end
