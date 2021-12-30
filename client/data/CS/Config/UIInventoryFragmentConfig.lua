--- @class UIInventoryFragmentConfig
UIInventoryFragmentConfig = Class(UIInventoryFragmentConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIInventoryFragmentConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_LoopVerticalScrollRect
	self.scroll = self.transform:Find("VerticalScroll_Grid"):GetComponent(ComponentName.UnityEngine_UI_LoopVerticalScrollRect)
end
