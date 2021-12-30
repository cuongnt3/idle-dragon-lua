--- @class NodeRecordDefenseItemConfig
NodeRecordDefenseItemConfig = Class(NodeRecordDefenseItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function NodeRecordDefenseItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_GameObject
	self.iconLostWave = self.transform:Find("icon_lost_wave").gameObject
	--- @type UnityEngine_GameObject
	self.iconSuccessWave = self.transform:Find("icon_success_wave").gameObject
	--- @type UnityEngine_GameObject
	self.iconDefenseFailure = self.transform:Find("icon_defense_failure").gameObject
	--- @type UnityEngine_GameObject
	self.iconDefenseSucessful = self.transform:Find("icon_defense_sucessful").gameObject
	--- @type UnityEngine_UI_Text
	self.textWaveValue = self.transform:Find("text_wave_value"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.bgHpBar = self.transform:Find("icon_hp_bar_demo/bg_hp_bar"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Button
	self.button = self.transform:Find("button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_GameObject
	self.iconReplay = self.transform:Find("button/icon_replay").gameObject
end
