--- @class UIEventEasterEggConfig
UIEventEasterEggConfig = Class(UIEventEasterEggConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIEventEasterEggConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonAsk = self.transform:Find("button_ask"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonBack = self.transform:Find("back_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_LoopVerticalScrollRect
	self.VerticalScrollTab = self.transform:Find("scroll_tab"):GetComponent(ComponentName.UnityEngine_UI_LoopVerticalScrollRect)
	--- @type UnityEngine_UI_LoopVerticalScrollRect
	self.VerticalScrollContent = self.transform:Find("scroll_content"):GetComponent(ComponentName.UnityEngine_UI_LoopVerticalScrollRect)
	--- @type UnityEngine_UI_GridLayoutGroup
	self.contentGroupLayout = self.transform:Find("scroll_content/content"):GetComponent(ComponentName.UnityEngine_UI_GridLayoutGroup)
	--- @type UnityEngine_RectTransform
	self.loginAnchor = self.transform:Find("login_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.limitedOfferAnchor = self.transform:Find("limited_offer_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.bunnyCardAnchor = self.transform:Find("bunny_card_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.huntAnchor = self.transform:Find("hunt_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.breakAnchor = self.transform:Find("break_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
