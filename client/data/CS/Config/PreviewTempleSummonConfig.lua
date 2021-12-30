--- @class PreviewTempleSummonConfig
PreviewTempleSummonConfig = Class(PreviewTempleSummonConfig)

--- @return void
--- @param transform UnityEngine_Transform
function PreviewTempleSummonConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_Camera
	self.camera = self.transform:Find("camera"):GetComponent(ComponentName.UnityEngine_Camera)
	--- @type UnityEngine_ParticleSystem
	self.fxTempleOrbSummon = self.transform:Find("background/fx_temple_orb_summon"):GetComponent(ComponentName.UnityEngine_ParticleSystem)
	--- @type UnityEngine_Transform
	self.templeOrbs = self.transform:Find("temple_orbs")
end
