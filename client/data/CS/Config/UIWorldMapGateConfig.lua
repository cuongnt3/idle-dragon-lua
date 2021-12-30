--- @class UIWorldMapGateConfig
UIWorldMapGateConfig = Class(UIWorldMapGateConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIWorldMapGateConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Image
	self.bgName = self.transform:Find("bg_name"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_GameObject
	self.complete = self.transform:Find("textComplete").gameObject
	--- @type UnityEngine_UI_Image
	self.bgGate = self.transform:Find("bg_gate"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_GameObject
	self.gateClose = self.transform:Find("gate_close").gameObject
	--- @type UnityEngine_GameObject
	self.gateOpen = self.transform:Find("gate_open").gameObject
	--- @type UnityEngine_UI_Text
	self.name = self.transform:Find("bg_name/name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.arrowNext = self.transform:Find("arrow_next").gameObject
	--- @type UnityEngine_UI_Button
	self.buttonSelect = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_GameObject
	self.openMark = self.transform:Find("open_mark").gameObject
	--- @type UnityEngine_GameObject
	self.cover = self.transform:Find("cover").gameObject
	--- @type UnityEngine_ParticleSystem
	self.fxUiGateLoop = self.transform:Find("open_mark/fx_ui_gate_loop"):GetComponent(ComponentName.UnityEngine_ParticleSystem)
	--- @type UnityEngine_ParticleSystem
	self.fxUiGateOpen = self.transform:Find("open_mark/fx_ui_gate_open"):GetComponent(ComponentName.UnityEngine_ParticleSystem)
	--- @type UnityEngine_ParticleSystem
	self.fxUiGateClose = self.transform:Find("open_mark/fx_ui_gate_close"):GetComponent(ComponentName.UnityEngine_ParticleSystem)
	--- @type UnityEngine_UI_Text
	self.localizeComplete = self.transform:Find("textComplete"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
