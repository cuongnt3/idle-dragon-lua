--- @class UIDungeonFormationConfig
UIDungeonFormationConfig = Class(UIDungeonFormationConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIDungeonFormationConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonBack = self.transform:Find("safe_area/back_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.heroList = self.transform:Find("group_select_hero/heroList"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.localizeSelectHeroToBattle = self.transform:Find("group_select_hero/bg_main_pannel_2/bg_main_pannel_1/text_select_heroes_to_battle"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.safeArea = self.transform:Find("safe_area"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.localizeDungeon = self.transform:Find("safe_area/anchor_top/text_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textTimer = self.transform:Find("safe_area/anchor_top/timer"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_Transform
	self.dungeonWorldFormation = self.transform:Find("dungeon_world_formation")
end
