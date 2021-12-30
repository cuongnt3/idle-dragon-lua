--- @class HeroIconSelectConfig
HeroIconSelectConfig = Class(HeroIconSelectConfig)

--- @return void
--- @param transform UnityEngine_Transform
function HeroIconSelectConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_Transform
	local _mask = self.transform:Find("mask")
	if _mask then
	--- @type UnityEngine_GameObject
	self.mask = _mask.gameObject
	end
end
