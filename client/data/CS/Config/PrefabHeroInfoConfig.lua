--- @class PrefabHeroInfoConfig
PrefabHeroInfoConfig = Class(PrefabHeroInfoConfig)

--- @return void
--- @param transform UnityEngine_Transform
function PrefabHeroInfoConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textAp = self.transform:Find("text_ap_value"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.star = self.transform:Find("star"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Image
	self.iconFaction = self.transform:Find("group_2/assasins_class/icon_assasins"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.textFaction = self.transform:Find("group_2/assasins_class/text_class_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonInfo = self.transform:Find("button_info"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textTim = self.transform:Find("group_2/heatlh/text_health"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textAmor = self.transform:Find("group_2/amor/text_amor"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textAttack = self.transform:Find("group_2/attack/text_attack"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textMovement = self.transform:Find("group_2/attack_speed/text_attack_speed"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.skillParent = self.transform:Find("group_2/hero_skill"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.previewSkill = self.transform:Find("preview_skill"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.statsInfomation = self.transform:Find("stat_info"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_HorizontalLayoutGroup
	self.layoutClass = self.transform:Find("group_2/assasins_class"):GetComponent(ComponentName.UnityEngine_UI_HorizontalLayoutGroup)
	--- @type UnityEngine_GameObject
	self.sizeFilterClass = self.transform:Find("group_2/assasins_class/text_class_name").gameObject
end
