--- @class UIEventSkinBundle2LayoutConfig
UIEventSkinBundle2LayoutConfig = Class(UIEventSkinBundle2LayoutConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIEventSkinBundle2LayoutConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_LoopVerticalScrollRect
	self.loopScroll = self.transform:Find("loop_scroll"):GetComponent(ComponentName.UnityEngine_UI_LoopVerticalScrollRect)
end
