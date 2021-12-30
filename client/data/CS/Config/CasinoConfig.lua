--- @class CasinoConfig
CasinoConfig = Class(CasinoConfig)

--- @return void
--- @param transform UnityEngine_Transform
function CasinoConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_Camera
	self.camera = self.transform:Find("camera"):GetComponent(ComponentName.UnityEngine_Camera)
	--- @type UnityEngine_Transform
	self.fxCasinoBgActive = self.transform:Find("fx_casino_bg_active")
end
