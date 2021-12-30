--- @class TagBuildingConfig
TagBuildingConfig = Class(TagBuildingConfig)

--- @return void
--- @param transform UnityEngine_Transform
function TagBuildingConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_GameObject
	self.notify = self.transform:Find("bg_tag/notify").gameObject
	--- @type UnityEngine_SpriteRenderer
	self.featureIcon = self.transform:Find("bg_tag/feature_icon"):GetComponent(ComponentName.UnityEngine_SpriteRenderer)
	--- @type UnityEngine_UI_Text
	self.featureName = self.transform:Find("feature_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
