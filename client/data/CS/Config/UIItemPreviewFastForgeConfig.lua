--- @class UIItemPreviewFastForgeConfig
UIItemPreviewFastForgeConfig = Class(UIItemPreviewFastForgeConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIItemPreviewFastForgeConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_GameObject
	self.view1 = self.transform:Find("popup/bg_filter_pannel").gameObject
	--- @type UnityEngine_GameObject
	self.view2 = self.transform:Find("popup/bg_filter_pannel (1)").gameObject
end
