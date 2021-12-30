--- @class PreviewReplaceHeroConfig
PreviewReplaceHeroConfig = Class(PreviewReplaceHeroConfig)

--- @return void
--- @param transform UnityEngine_Transform
function PreviewReplaceHeroConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_GameObject
	self.sourceAnchor = self.transform:Find("background/source_anchor").gameObject
	--- @type UnityEngine_GameObject
	self.replacedAnchor = self.transform:Find("background/replaced_anchor").gameObject
	--- @type UnityEngine_Camera
	self.camera = self.transform:Find("camera"):GetComponent(ComponentName.UnityEngine_Camera)
	--- @type UnityEngine_ParticleSystem
	self.fxShowSource = self.transform:Find("background/source_anchor/fx_temple_source"):GetComponent(ComponentName.UnityEngine_ParticleSystem)
	--- @type UnityEngine_ParticleSystem
	self.fxReplace = self.transform:Find("background/replaced_anchor/fx_temple_replace"):GetComponent(ComponentName.UnityEngine_ParticleSystem)
end
