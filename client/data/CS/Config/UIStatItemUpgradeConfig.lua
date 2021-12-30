--- @class UIStatItemUpgradeConfig
UIStatItemUpgradeConfig = Class(UIStatItemUpgradeConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIStatItemUpgradeConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textStat = self.transform:Find("text_armor"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textBaseValue = self.transform:Find("text_armor_base_value"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textUpgardeValue = self.transform:Find("text_armor_upgarde_value"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_ParticleSystem
	self.fxUiDefenseUpgrade = self.transform:Find("fx_ui_defense_upgrade"):GetComponent(ComponentName.UnityEngine_ParticleSystem)
end
