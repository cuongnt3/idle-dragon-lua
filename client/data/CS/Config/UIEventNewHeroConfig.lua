--- @class UIEventNewHeroConfig
UIEventNewHeroConfig = Class(UIEventNewHeroConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIEventNewHeroConfig:Ctor(transform)
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
	self.questAnchor = self.transform:Find("quest_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.loginAnchor = self.transform:Find("login_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.collectionAnchor = self.transform:Find("collection_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.bundleAnchor = self.transform:Find("bundle_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.spinAnchor = self.transform:Find("spin_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.exchangeAnchor = self.transform:Find("exchange_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Image
	self.backGround = self.transform:Find("back_ground"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Image
	self.bgColumn1 = self.transform:Find("bg_mid_autumn_column"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Image
	self.bgColumn2 = self.transform:Find("bg_mid_autumn_column (1)"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_RectTransform
	self.bossChallenge = self.transform:Find("boss_challenge"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.buttonLeaderBoard = self.transform:Find("button_leader_board"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_GameObject
	self.notifyLeaderBoard = self.transform:Find("button_leader_board/notify_leader_board").gameObject
	--- @type UnityEngine_RectTransform
	self.bossLeaderBoard = self.transform:Find("boss_leader_board"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.treasureAnchor = self.transform:Find("treasure_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.skinBundle = self.transform:Find("skin_bundle"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
