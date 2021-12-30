--- @class UIHeroCollectionInfoConfig
UIHeroCollectionInfoConfig = Class(UIHeroCollectionInfoConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIHeroCollectionInfoConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textLevelCharacter = self.transform:Find("group_1/lv_ap_lv_to_max/character_level/text_level"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.prefabHeroInfo = self.transform:Find("prefab_hero_Info"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.localizeLevelMax = self.transform:Find("group_1/text_level_max"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
