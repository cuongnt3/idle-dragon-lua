--- @class StageAreaDefenseItemConfig
StageAreaDefenseItemConfig = Class(StageAreaDefenseItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function StageAreaDefenseItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.bgLandStage1 = self.transform:Find("bg_land_stage_1"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.bgLandStage2 = self.transform:Find("bg_land_stage_2"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.content = self.transform:Find("content"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
