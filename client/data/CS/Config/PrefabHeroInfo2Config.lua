--- @class PrefabHeroInfo2Config
PrefabHeroInfo2Config = Class(PrefabHeroInfo2Config)

--- @return void
--- @param transform UnityEngine_Transform
function PrefabHeroInfo2Config:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textAp = self.transform:Find("hero_stats_information/ap_stats/text_ap_value"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.star = self.transform:Find("hero_stats_information/star/icon_character_star_yellow"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Image
	self.iconFaction = self.transform:Find("hero_stats_information/hero_name_faction/icon_faction"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Image
	self.iconClass = self.transform:Find("hero_stats_information/hero_name_faction/icon_class"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Button
	self.buttonInfo = self.transform:Find("icon_hero_information_stats"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textTim = self.transform:Find("hero_stats_information/health_stats/text_health"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textAmor = self.transform:Find("hero_stats_information/amor_stats/text_amor_stats"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textAttack = self.transform:Find("hero_stats_information/attack_stats/text_attack_stats"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textMovement = self.transform:Find("hero_stats_information/speed_stats/text_attack_speed"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.skillParent = self.transform:Find("icon_skill_base"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textLevelCharacter = self.transform:Find("text_level_character"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textHeroName = self.transform:Find("hero_stats_information/hero_name_faction/text_hero_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.previewSkill = self.transform:Find("preview_skill"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.statsInfomation = self.transform:Find("statsInfomation"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
