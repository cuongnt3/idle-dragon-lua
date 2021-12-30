--- @class AvatarIconConfig
AvatarIconConfig = Class(AvatarIconConfig)

--- @return void
--- @param transform UnityEngine_Transform
function AvatarIconConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Image
	self.icon = self.transform:Find("frame/icon"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Button
	self.button = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_UI_Button)
end
