--- @class UILeaderBoardNewHeroConfig
UILeaderBoardNewHeroConfig = Class(UILeaderBoardNewHeroConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UILeaderBoardNewHeroConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.button = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Image
	self.image = self.transform:Find("icon_main_character_tab"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.textTop = self.transform:Find("text_top"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textName = self.transform:Find("text_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
