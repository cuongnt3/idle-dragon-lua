--- @class DungeonWorldFormationConfig
DungeonWorldFormationConfig = Class(DungeonWorldFormationConfig)

--- @return void
--- @param transform UnityEngine_Transform
function DungeonWorldFormationConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonSave = self.transform:Find("world_canvas/button_save"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.localizeSave = self.transform:Find("world_canvas/button_save/Text"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
