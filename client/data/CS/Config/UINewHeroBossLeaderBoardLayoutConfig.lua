--- @class UINewHeroBossLeaderBoardLayoutConfig
UINewHeroBossLeaderBoardLayoutConfig = Class(UINewHeroBossLeaderBoardLayoutConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UINewHeroBossLeaderBoardLayoutConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textTitle = self.transform:Find("bg_charon_boss/bg_text_glow/text_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textDesc = self.transform:Find("bg_charon_boss/bg_text_glow/text_desc"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_RawImage
	self.boss3View = self.transform:Find("bg_charon_boss/top_3_view"):GetComponent(ComponentName.UnityEngine_UI_RawImage)
	--- @type UnityEngine_RectTransform
	self.tagName1 = self.transform:Find("bg_charon_boss/tag_name_1"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.tagName2 = self.transform:Find("bg_charon_boss/tag_name_2"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.tagName3 = self.transform:Find("bg_charon_boss/tag_name_3"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_LoopVerticalScrollRect
	self.scroll = self.transform:Find("bg_charon_boss/VerticalScroll (1)"):GetComponent(ComponentName.UnityEngine_UI_LoopVerticalScrollRect)
	--- @type UnityEngine_UI_Button
	self.buttonTop1 = self.transform:Find("bg_charon_boss/tag_name_1/Button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonTop2 = self.transform:Find("bg_charon_boss/tag_name_2/Button (1)"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonTop3 = self.transform:Find("bg_charon_boss/tag_name_3/Button (1)"):GetComponent(ComponentName.UnityEngine_UI_Button)
end
