--- @class UITutorialConfig
UITutorialConfig = Class(UITutorialConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UITutorialConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonBg = self.transform:Find("Panel"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI2_Image
	self.imageBg = self.transform:Find("Panel"):GetComponent(ComponentName.UnityEngine_UI2_Image)
	--- @type UnityEngine_UI_Button
	self.focus = self.transform:Find("forcus"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.focus1 = self.transform:Find("forcus/bg"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.focus2 = self.transform:Find("forcus/bg2"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.buttonFocus = self.transform:Find("forcus/bg/button_forcus"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonFocus2 = self.transform:Find("forcus/bg2/button_focus2"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI2_Image
	self.imageFocus1 = self.transform:Find("forcus/bg"):GetComponent(ComponentName.UnityEngine_UI2_Image)
	--- @type UnityEngine_UI2_Image
	self.imageFocus2 = self.transform:Find("forcus/bg2"):GetComponent(ComponentName.UnityEngine_UI2_Image)
	--- @type UnityEngine_GameObject
	self.imageFocus = self.transform:Find("forcus").gameObject
	--- @type UnityEngine_RectTransform
	self.tutorialNpcBottomLeft = self.transform:Find("tutorial_npc_bottom_left"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.tutorialNpcTopLeft = self.transform:Find("tutorial_npc_top_left"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.tutorialNpcTopRight = self.transform:Find("tutorial_npc_top_right"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.tutorialNpcBottomRight = self.transform:Find("tutorial_npc_bottom_right"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.tutorialNpcCenter = self.transform:Find("tutorial_npc_bottom_center"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.tutorialNpcCenterTop = self.transform:Find("tutorial_npc_top_center"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.aqualords = self.transform:Find("Aqualords"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.iconHero = self.transform:Find("Aqualords/Image/heroIcon"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_EventSystems_EventTrigger
	self.drag = self.transform:Find("drag"):GetComponent(ComponentName.UnityEngine_EventSystems_EventTrigger)
	--- @type UnityEngine_Camera
	self.cam = self.transform:Find("RawImage/Camera"):GetComponent(ComponentName.UnityEngine_Camera)
	--- @type UnityEngine_UI_RawImage
	self.rawImage = self.transform:Find("RawImage"):GetComponent(ComponentName.UnityEngine_UI_RawImage)
	--- @type UnityEngine_Transform
	self.handTarget = self.transform:Find("RawImage/Camera/Spine GameObject (UI_NPC_Tutorial)/SkeletonUtility-Root/root/Hand_Target")
	--- @type UnityEngine_Transform
	self.arrowRoot = self.transform:Find("RawImage/Camera/Spine GameObject (UI_NPC_Tutorial)/SkeletonUtility-Root/root/Arrow_Root")
	--- @type UnityEngine_Transform
	self.handStart = self.transform:Find("RawImage/Camera/Spine GameObject (UI_NPC_Tutorial)/SkeletonUtility-Root/root/Root_Guide")
	--- @type UnityEngine_Transform
	self.handEnd = self.transform:Find("RawImage/Camera/Spine GameObject (UI_NPC_Tutorial)/SkeletonUtility-Root/root/Target_Guide")
	--- @type UnityEngine_Transform
	self.rootHand = self.transform:Find("RawImage/Camera/Spine GameObject (UI_NPC_Tutorial)/SkeletonUtility-Root/root")
	--- @type UnityEngine_UI_Button
	self.button1 = self.transform:Find("button1"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.button2 = self.transform:Find("button2"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type Spine_Unity_SkeletonAnimation
	self.skeletonHand = self.transform:Find("RawImage/Camera/Spine GameObject (UI_NPC_Tutorial)"):GetComponent(ComponentName.Spine_Unity_SkeletonAnimation)
	--- @type UnityEngine_GameObject
	self.targetFocus = self.transform:Find("forcus/target").gameObject
end
