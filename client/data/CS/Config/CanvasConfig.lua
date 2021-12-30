--- @class CanvasConfig
CanvasConfig = Class(CanvasConfig)

--- @return void
--- @param transform UnityEngine_Transform
function CanvasConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_Canvas
	self.canvas = self.transform:Find("ui_canvas"):GetComponent(ComponentName.UnityEngine_Canvas)
	--- @type UnityEngine_RectTransform
	self.uiPopup = self.transform:Find("ui_canvas/ui_panel/ui_popup"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.uiLoading = self.transform:Find("ui_canvas_ignor_blur/ui_panel/ui_loading"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.uiTutorial = self.transform:Find("ui_canvas_ignor_blur/ui_panel/ui_tutorial"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_EventSystems_EventSystem
	self.eventSystem = self.transform:Find("EventSystem"):GetComponent(ComponentName.UnityEngine_EventSystems_EventSystem)
	--- @type UnityEngine_UI_CanvasScaler
	self.canvasScaler = self.transform:Find("ui_canvas"):GetComponent(ComponentName.UnityEngine_UI_CanvasScaler)
	--- @type UnityEngine_Canvas
	self.canvasIgnoreBlur = self.transform:Find("ui_canvas_ignor_blur"):GetComponent(ComponentName.UnityEngine_Canvas)
	--- @type UnityEngine_UI_CanvasScaler
	self.canvasScalerIgnoreBlur = self.transform:Find("ui_canvas_ignor_blur"):GetComponent(ComponentName.UnityEngine_UI_CanvasScaler)
	--- @type UnityEngine_RectTransform
	self.uiPopupIgnoreBlur = self.transform:Find("ui_canvas_ignor_blur/ui_panel/ui_popup"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityStandardAssets_ImageEffects_BlurOptimized
	self.blurCacher = self.transform:Find("ui_camera"):GetComponent(ComponentName.UnityStandardAssets_ImageEffects_BlurOptimized)
	--- @type UnityEngine_RectTransform
	self.uiTouch = self.transform:Find("ui_canvas_ignor_blur/ui_panel/ui_touch"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type Lean_Touch_LeanFingerTap
	self.leanFingerTap = self.transform:Find("ui_canvas_ignor_blur/ui_panel/ui_touch"):GetComponent(ComponentName.Lean_Touch_LeanFingerTap)
	--- @type UnityEngine_RectTransform
	self.uiSystem = self.transform:Find("ui_canvas_ignor_blur/ui_panel/ui_system"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
