--- @class StatUpgradeViewConfig
StatUpgradeViewConfig = Class(StatUpgradeViewConfig)

--- @return void
--- @param transform UnityEngine_Transform
function StatUpgradeViewConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.title = self.transform:Find("title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.stat1 = self.transform:Find("stat1"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.stat2 = self.transform:Find("stat2"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.fxUiUptier = self.transform:Find("fx_ui_uptier"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
