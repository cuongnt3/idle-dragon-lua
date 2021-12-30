--- @class UIWorldMapConfig
UIWorldMapConfig = Class(UIWorldMapConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIWorldMapConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.back = self.transform:Find("safe_area/back_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.safeArea = self.transform:Find("safe_area"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Image
	self.backGround = self.transform:Find("back_ground"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_RectTransform
	self.bgChosen = self.transform:Find("safe_area/anchor_bottom/level/bg_chosen"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_LoopHorizontalScrollRect
	self.scrollGate = self.transform:Find("gate/scroll_gate"):GetComponent(ComponentName.UnityEngine_UI_LoopHorizontalScrollRect)
	--- @type UnityEngine_RectTransform
	self.content = self.transform:Find("gate/scroll_gate/viewport/content"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.level = self.transform:Find("safe_area/anchor_bottom/level"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Image
	self.backGround = self.transform:Find("back_ground"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_GameObject
	self.cover = self.transform:Find("cover").gameObject
end
