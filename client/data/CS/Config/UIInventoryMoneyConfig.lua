--- @class UIInventoryMoneyConfig
UIInventoryMoneyConfig = Class(UIInventoryMoneyConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIInventoryMoneyConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_LoopVerticalScrollRect
	self.scroll = self.transform:Find("VerticalScroll_Grid"):GetComponent(ComponentName.UnityEngine_UI_LoopVerticalScrollRect)
end
