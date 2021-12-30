--- @class HeroListConfig
HeroListConfig = Class(HeroListConfig)

--- @return void
--- @param transform UnityEngine_Transform
function HeroListConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.faction = self.transform:Find("sort/faction_filter/faction"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.selectFaction = self.transform:Find("sort/faction_filter/select"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.star = self.transform:Find("sort/star/star_filter/faction"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.selectStar = self.transform:Find("sort/star/star_filter/select"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_LoopVerticalScrollRect
	self.scroll = self.transform:Find("VerticalScroll_Grid"):GetComponent(ComponentName.UnityEngine_UI_LoopVerticalScrollRect)
	--- @type UnityEngine_GameObject
	self.starSort = self.transform:Find("sort/star").gameObject
	--- @type UnityEngine_UI_Button
	self.buttonSortStar = self.transform:Find("sort/star/star_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonCloseSortStar = self.transform:Find("sort/star/sort_close_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.star2 = self.transform:Find("sort/star_filter/star"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.selectStar2 = self.transform:Find("sort/star_filter/select"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_GameObject
	self.empty = self.transform:Find("empty").gameObject
	--- @type UnityEngine_UI_Text
	self.textEmpty = self.transform:Find("empty/text_empty"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
