--- @class TowerRecordItemConfig
TowerRecordItemConfig = Class(TowerRecordItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function TowerRecordItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Image
	self.iconTower = self.transform:Find("tower_icon/icon_tower"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.towerValue = self.transform:Find("tower_icon/tower_value"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
