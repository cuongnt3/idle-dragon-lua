--- @class UITreasureInfoConfig 
UITreasureInfoConfig = Class(UITreasureInfoConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UITreasureInfoConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
end

