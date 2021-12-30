--- @class UIDungeonPrimaryMerchantConfig
UIDungeonPrimaryMerchantConfig = Class(UIDungeonPrimaryMerchantConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIDungeonPrimaryMerchantConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.bgFog = self.transform:Find("bg_none"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_LoopVerticalScrollRect
	self.verticalScrollGrid = self.transform:Find("popup/loop_scroll_rect"):GetComponent(ComponentName.UnityEngine_UI_LoopVerticalScrollRect)
	--- @type UnityEngine_UI_Button
	self.buttonClose = self.transform:Find("popup/button_close"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.localizeTitle = self.transform:Find("popup/text_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.goldAnchor = self.transform:Find("gold_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.gemAnchor = self.transform:Find("gem_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_GameObject
	self.empty = self.transform:Find("popup/empty").gameObject
	--- @type UnityEngine_UI_Text
	self.textEmpty = self.transform:Find("popup/empty/text_empty"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
