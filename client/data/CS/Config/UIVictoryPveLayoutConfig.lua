--- @class UIVictoryPveLayoutConfig
UIVictoryPveLayoutConfig = Class(UIVictoryPveLayoutConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIVictoryPveLayoutConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
end
