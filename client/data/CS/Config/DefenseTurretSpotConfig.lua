--- @class DefenseTurretSpotConfig
DefenseTurretSpotConfig = Class(DefenseTurretSpotConfig)

--- @return void
--- @param transform UnityEngine_Transform
function DefenseTurretSpotConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.healthBar = self.transform:Find("ui_anchor/health_bar"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_Transform
	self.tagBuilding = self.transform:Find("ui_anchor/tag_building")
	--- @type UnityEngine_UI_Button
	self.buttonSetUp = self.transform:Find("ui_anchor/button_set_up"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonChange = self.transform:Find("ui_anchor/button_change"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_GameObject
	self.arrow = self.transform:Find("ui_anchor/arrow").gameObject
	--- @type UnityEngine_GameObject
	self.highlightArrow = self.transform:Find("ui_anchor/arrow/normal_arrow/highlight_arrow").gameObject
	--- @type UnityEngine_UI_Button
	self.buttonSelect = self.transform:Find("ui_anchor/button_select"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_Transform
	self.fxUpgradeAnchor = self.transform:Find("fx_upgrade_anchor")
	--- @type UnityEngine_EventSystems_EventTrigger
	self.eventTrigger = self.transform:Find("ui_anchor/button_select"):GetComponent(ComponentName.UnityEngine_EventSystems_EventTrigger)
	--- @type UnityEngine_SpriteRenderer
	self.normalArrow = self.transform:Find("ui_anchor/arrow/normal_arrow"):GetComponent(ComponentName.UnityEngine_SpriteRenderer)
	--- @type UnityEngine_Transform
	self.defenseBuildingAnim = self.transform:Find("defense_turret_1")
end
