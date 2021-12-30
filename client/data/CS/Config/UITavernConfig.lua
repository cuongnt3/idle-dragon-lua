--- @class UITavernConfig
UITavernConfig = Class(UITavernConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UITavernConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonBack = self.transform:Find("safe_area/back_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonRefesh = self.transform:Find("refesh_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonBasicScroll = self.transform:Find("button_basic_use"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonPremiumScroll = self.transform:Find("button_premium_use"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonTutorial = self.transform:Find("safe_area/button_tutorial"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_LoopVerticalScrollRect
	self.scroll = self.transform:Find("VerticalScroll_Grid"):GetComponent(ComponentName.UnityEngine_UI_LoopVerticalScrollRect)
	--- @type UnityEngine_UI_Text
	self.textGemRefesh = self.transform:Find("refesh_button/gem_currency/text_gem_value"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textBasicScroll = self.transform:Find("button_basic_use/text_value"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textPremiumScroll = self.transform:Find("button_premium_use/text_value"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textTimeReset = self.transform:Find("text_refresh"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.rootQuest1 = self.transform:Find("top_pannel/root_quest1"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.rootQuest2 = self.transform:Find("top_pannel/root_quest2"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.rootGem = self.transform:Find("top_pannel/root_gem"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.localizeRefresh = self.transform:Find("refesh_button/text_refesh"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeBasicUse = self.transform:Find("button_basic_use/text_basic_use"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizePremiumUse = self.transform:Find("button_premium_use/text_premium_use"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.safeArea = self.transform:Find("safe_area"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type Spine_Unity_SkeletonGraphic
	self.anim = self.transform:Find("back_ground/SkeletonGraphic (NPC_Tavern)"):GetComponent(ComponentName.Spine_Unity_SkeletonGraphic)
	--- @type UnityEngine_GameObject
	self.empty = self.transform:Find("VerticalScroll_Grid/empty").gameObject
	--- @type UnityEngine_UI_Text
	self.textEmpty = self.transform:Find("VerticalScroll_Grid/empty/text_empty"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
