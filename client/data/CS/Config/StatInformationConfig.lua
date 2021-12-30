--- @class StatInformationConfig
StatInformationConfig = Class(StatInformationConfig)

--- @return void
--- @param transform UnityEngine_Transform
function StatInformationConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.content = self.transform:Find("bg_main_pannel_1/content"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.bg = self.transform:Find("bg_main_pannel_1"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
