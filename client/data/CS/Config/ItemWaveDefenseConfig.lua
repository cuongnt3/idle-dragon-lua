--- @class ItemWaveDefenseConfig
ItemWaveDefenseConfig = Class(ItemWaveDefenseConfig)

--- @return void
--- @param transform UnityEngine_Transform
function ItemWaveDefenseConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_GameObject
	self.iconWaveCurrent = self.transform:Find("icon_wave_current").gameObject
	--- @type UnityEngine_UI_Text
	self.textWaveValue = self.transform:Find("text_wave_value"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textWave = self.transform:Find("icon_wave_current/icon_wave_current (1)/text_wave"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.button = self.transform:Find("icon_wave"):GetComponent(ComponentName.UnityEngine_UI_Button)
end
