--- @class SpineAreaBuildingConfig
SpineAreaBuildingConfig = Class(SpineAreaBuildingConfig)

--- @return void
--- @param transform UnityEngine_Transform
function SpineAreaBuildingConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type Spine_Unity_SkeletonAnimation
	self.spineBuilding = self.transform:Find("spine_building"):GetComponent(ComponentName.Spine_Unity_SkeletonAnimation)
	--- @type UnityEngine_MeshRenderer
	self.meshRenderer = self.transform:Find("spine_building"):GetComponent(ComponentName.UnityEngine_MeshRenderer)
	--- @type UnityEngine_EventSystems_EventTrigger
	self.eventTrigger = self.transform:Find("click_area"):GetComponent(ComponentName.UnityEngine_EventSystems_EventTrigger)
	--- @type UnityEngine_UI_Button
	self.clickArea = self.transform:Find("click_area"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Image
	self.featureIcon = self.transform:Find("tag_building/feature_icon"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.featureName = self.transform:Find("tag_building/feature_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.notify = self.transform:Find("tag_building/notify").gameObject
end
