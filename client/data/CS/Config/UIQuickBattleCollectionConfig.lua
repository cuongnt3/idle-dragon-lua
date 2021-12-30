--- @class UIQuickBattleCollectionConfig
UIQuickBattleCollectionConfig = Class(UIQuickBattleCollectionConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIQuickBattleCollectionConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.bg = self.transform:Find("bg_text"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textTitle = self.transform:Find("popup/text_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonClose = self.transform:Find("popup/button_close"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_LoopVerticalScrollRect
	self.scroll = self.transform:Find("popup/loop_scroll"):GetComponent(ComponentName.UnityEngine_UI_LoopVerticalScrollRect)
	--- @type UnityEngine_GameObject
	self.exp = self.transform:Find("popup/text_title/exp").gameObject
	--- @type UnityEngine_GameObject
	self.gold = self.transform:Find("popup/text_title/gold").gameObject
	--- @type UnityEngine_GameObject
	self.magicPotion = self.transform:Find("popup/text_title/magicPotion").gameObject
end
