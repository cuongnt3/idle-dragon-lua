--- @class HeroCardItemConfig
HeroCardItemConfig = Class(HeroCardItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function HeroCardItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.button = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.rectTransform = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Image
	self.heroIcon = self.transform:Find("visual/icon_hero"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Image
	self.frame = self.transform:Find("visual/bg_hero_list"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Image
	self.factionIcon = self.transform:Find("visual/icon_abyss"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.txtLv = self.transform:Find("visual/text_level_hero"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.starImage = self.transform:Find("visual/star"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.textName = self.transform:Find("visual/text_hero_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.loadAsync = self.transform:Find("visual").gameObject
	--- @type UnityEngine_GameObject
	self.noti = self.transform:Find("visual/noti").gameObject
end
