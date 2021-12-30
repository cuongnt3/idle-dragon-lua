--- @class CloudLoadingConfig
CloudLoadingConfig = Class(CloudLoadingConfig)

--- @return void
--- @param transform UnityEngine_Transform
function CloudLoadingConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type Spine_Unity_SkeletonGraphic
	self.anim = self.transform:Find(""):GetComponent(ComponentName.Spine_Unity_SkeletonGraphic)
end
