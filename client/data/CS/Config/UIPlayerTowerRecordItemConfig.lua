--- @class UIPlayerTowerRecordItemConfig
UIPlayerTowerRecordItemConfig = Class(UIPlayerTowerRecordItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIPlayerTowerRecordItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textTower = self.transform:Find("text_tower"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textTowerLevel = self.transform:Find("text_tower_level"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.teamAnchor = self.transform:Find("team_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
