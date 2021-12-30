--- @class DailyRewardPageConfig
DailyRewardPageConfig = Class(DailyRewardPageConfig)

--- @return void
--- @param transform UnityEngine_Transform
function DailyRewardPageConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.tile6Days = self.transform:Find("tile_6_days"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.tile7 = self.transform:Find("tile_7"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
