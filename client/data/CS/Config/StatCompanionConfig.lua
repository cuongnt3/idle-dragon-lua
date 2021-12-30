--- @class StatCompanionConfig
StatCompanionConfig = Class(StatCompanionConfig)

--- @return void
--- @param transform UnityEngine_Transform
function StatCompanionConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textStats = self.transform:Find("text_stats"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
