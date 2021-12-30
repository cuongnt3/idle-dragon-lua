--- @class UISelectSummonerConfig
UISelectSummonerConfig = Class(UISelectSummonerConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UISelectSummonerConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.button = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_GameObject
	self.select = self.transform:Find("bg_chosen_hero_tab").gameObject
	--- @type UnityEngine_UI_Image
	self.image = self.transform:Find("icon_main_character_tab"):GetComponent(ComponentName.UnityEngine_UI_Image)
end
