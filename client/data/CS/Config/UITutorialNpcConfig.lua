--- @class UITutorialNpcConfig
UITutorialNpcConfig = Class(UITutorialNpcConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UITutorialNpcConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textChat = self.transform:Find("chat_box/chat_box/bg_chat_box/text_chat"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.button1 = self.transform:Find("button/button_1"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.button2 = self.transform:Find("button/button_2"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textButton1 = self.transform:Find("button/button_1/Text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textButton2 = self.transform:Find("button/button_2/Text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.npc = self.transform:Find("npc_1").gameObject
	--- @type Spine_Unity_SkeletonGraphic
	self.skeletonGraphic = self.transform:Find("npc_1/SkeletonGraphic (NPC_Tutorial)"):GetComponent(ComponentName.Spine_Unity_SkeletonGraphic)
	--- @type UnityEngine_UI_ContentSizeFitter
	self.sizeFilter = self.transform:Find("chat_box/chat_box"):GetComponent(ComponentName.UnityEngine_UI_ContentSizeFitter)
	--- @type UnityEngine_UI_HorizontalLayoutGroup
	self.horizontal = self.transform:Find("chat_box/chat_box"):GetComponent(ComponentName.UnityEngine_UI_HorizontalLayoutGroup)
	--- @type UnityEngine_UI_VerticalLayoutGroup
	self.vertical = self.transform:Find("chat_box/chat_box/bg_chat_box"):GetComponent(ComponentName.UnityEngine_UI_VerticalLayoutGroup)
	--- @type UnityEngine_GameObject
	self.tap = self.transform:Find("chat_box/chat_box/bg_chat_box/tap").gameObject
	--- @type UnityEngine_GameObject
	self.effectIdle = self.transform:Find("npc_1/SkeletonGraphic (NPC_Tutorial)/Fx_Idle_Stars").gameObject
	--- @type UnityEngine_GameObject
	self.effectStart = self.transform:Find("npc_1/SkeletonGraphic (NPC_Tutorial)/Fx_start_ feather").gameObject
end
