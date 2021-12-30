--- @class UIEventValentineConfig
UIEventValentineConfig = Class(UIEventValentineConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIEventValentineConfig:Ctor(transform)
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
	--- @type UnityEngine_RectTransform
	self.loginEventAnchor = self.transform:Find("login_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_GridLayoutGroup
	self.contentGroupLayout = self.transform:Find("scroll_content/content"):GetComponent(ComponentName.UnityEngine_UI_GridLayoutGroup)
	--- @type UnityEngine_RectTransform
	self.loveChallengeAnchor = self.transform:Find("love_challenge_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.loveBundle = self.transform:Find("love_bundle"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.cardAnchor = self.transform:Find("card_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
