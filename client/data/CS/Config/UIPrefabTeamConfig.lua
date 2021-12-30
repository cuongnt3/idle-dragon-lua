--- @class UIPrefabTeamConfig
UIPrefabTeamConfig = Class(UIPrefabTeamConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIPrefabTeamConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.formationFront = self.transform:Find("hero_slot/bg_doi_hinh_front"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.formationBack = self.transform:Find("hero_slot/bg_doi_hinh_back"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textBuffAtk = self.transform:Find("hero_slot/text_buff_atk"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textBuffHp = self.transform:Find("hero_slot/text_buff_hp"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.linkingUp = self.transform:Find("aura_icon_buff_linking/linking_up").gameObject
	--- @type UnityEngine_GameObject
	self.linkingDown = self.transform:Find("aura_icon_buff_linking/linking_down").gameObject
	--- @type UnityEngine_UI_Image
	self.effectLinkingUp = self.transform:Find("aura_icon_buff_linking/linking_up/effect_linking_up"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Image
	self.effectLinkingDown = self.transform:Find("aura_icon_buff_linking/linking_down/effect_linking_down"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Button
	self.buttonAuraBuffUp = self.transform:Find("aura_icon_buff_linking/linking_up/effect_linking_up/button_aura_buff_up"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonAuraBuffDown = self.transform:Find("aura_icon_buff_linking/linking_down/effect_linking_down/button_aura_buff_down"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_GameObject
	self.otherUp = self.transform:Find("aura_icon_buff_linking/linking_up/other_up").gameObject
	--- @type UnityEngine_GameObject
	self.otherDown = self.transform:Find("aura_icon_buff_linking/linking_down/other_down").gameObject
	--- @type UnityEngine_GameObject
	self.mainHero = self.transform:Find("bg_nen_main_heroes").gameObject
	--- @type UnityEngine_UI_Button
	self.buttonSwichMainHero = self.transform:Find("bg_nen_main_heroes"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.heroIconInfo = self.transform:Find("bg_nen_main_heroes/main_heroes/hero_icon_info"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.mainHeroTransform = self.transform:Find("bg_nen_main_heroes"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
