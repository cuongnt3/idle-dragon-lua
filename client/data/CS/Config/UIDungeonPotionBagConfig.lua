--- @class UIDungeonPotionBagConfig
UIDungeonPotionBagConfig = Class(UIDungeonPotionBagConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIDungeonPotionBagConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonClose = self.transform:Find("popup/button_close"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_LoopVerticalScrollRect
	self.loopScrollRect = self.transform:Find("popup/loop_scroll_rect"):GetComponent(ComponentName.UnityEngine_UI_LoopVerticalScrollRect)
	--- @type UnityEngine_UI_Text
	self.textTitle = self.transform:Find("popup/text_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textClose = self.transform:Find("popup/button_close/text_close"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.empty = self.transform:Find("popup/empty").gameObject
	--- @type UnityEngine_UI_Text
	self.textEmpty = self.transform:Find("popup/empty/text_empty"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
