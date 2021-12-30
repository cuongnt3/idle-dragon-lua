--- @class TowerResultItemConfig
TowerResultItemConfig = Class(TowerResultItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function TowerResultItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Image
	self.iconTower = self.transform:Find("icon_tower_demo"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.textPopupContent = self.transform:Find("ready_popup/text_popup_content"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.iconReadyTickDefenseMode = self.transform:Find("ready_popup/icon_ready_tick_defense_mode").gameObject
	--- @type UnityEngine_GameObject
	self.iconNotReady = self.transform:Find("ready_popup/icon_not_ready").gameObject
	--- @type UnityEngine_UI_Text
	self.textSystemName = self.transform:Find("tower_name_tag/text_system_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.bgHpBar = self.transform:Find("tower_hp_bar/bg_hp_bar_2"):GetComponent(ComponentName.UnityEngine_UI_Image)
end
