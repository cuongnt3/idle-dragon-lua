--- @class PreviewHeroMenuConfig
PreviewHeroMenuConfig = Class(PreviewHeroMenuConfig)

--- @return void
--- @param transform UnityEngine_Transform
function PreviewHeroMenuConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_Transform
	self.heroAnchor = self.transform:Find("hero_anchor")
	--- @type UnityEngine_Camera
	self.camera = self.transform:Find("camera"):GetComponent(ComponentName.UnityEngine_Camera)
	--- @type UnityEngine_Transform
	self.stand = self.transform:Find("stand")
	--- @type UnityEngine_ParticleSystem
	self.fxLevelUp = self.transform:Find("hero_anchor/fx_level_up"):GetComponent(ComponentName.UnityEngine_ParticleSystem)
	--- @type UnityEngine_ParticleSystem
	self.fxLevelUpMax = self.transform:Find("hero_anchor/fx_level_up_max"):GetComponent(ComponentName.UnityEngine_ParticleSystem)
	--- @type UnityEngine_ParticleSystem
	self.fxEvolve = self.transform:Find("hero_anchor/fx_evolve"):GetComponent(ComponentName.UnityEngine_ParticleSystem)
	--- @type UnityEngine_ParticleSystem
	self.fxAwaken = self.transform:Find("hero_anchor/fx_awaken"):GetComponent(ComponentName.UnityEngine_ParticleSystem)
end
