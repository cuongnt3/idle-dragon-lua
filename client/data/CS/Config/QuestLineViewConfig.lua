--- @class QuestLineViewConfig
QuestLineViewConfig = Class(QuestLineViewConfig)

--- @return void
--- @param transform UnityEngine_Transform
function QuestLineViewConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_GameObject
	self.active = self.transform:Find("active").gameObject
end
