--- @class HeroPickIconInfoConfig
HeroPickIconInfoConfig = Class(HeroPickIconInfoConfig)

--- @return void
--- @param transform UnityEngine_Transform
function HeroPickIconInfoConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.button = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.rectTransform = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Image
	self.heroIcon = self.transform:Find("visual/boder/hero_icon"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Image
	self.frame = self.transform:Find("visual/boder/frame"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Image
	self.factionIcon = self.transform:Find("visual/boder/faction_icon"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Image
	self.classIcon = self.transform:Find("visual/boder/class_icon"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.txtLv = self.transform:Find("visual/boder/text_level"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.starImage = self.transform:Find("visual/boder/star"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Image
	self.fragmentIcon = self.transform:Find("visual/boder/fragment_icon"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.textNumber = self.transform:Find("visual/boder/text_number"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.bgStar = self.transform:Find("visual/boder/bg_star").gameObject
	--- @type UnityEngine_RectTransform
	self.boder = self.transform:Find("visual/boder"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Image
	self.hide = self.transform:Find("visual/boder/hide"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Image
	self.xIcon = self.transform:Find("visual/boder/hide/x_icon"):GetComponent(ComponentName.UnityEngine_UI_Image)
end
