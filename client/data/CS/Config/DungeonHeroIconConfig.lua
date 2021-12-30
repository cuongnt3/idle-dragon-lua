--- @class DungeonHeroIconConfig
DungeonHeroIconConfig = Class(DungeonHeroIconConfig)

--- @return void
--- @param transform UnityEngine_Transform
function DungeonHeroIconConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonHero = self.transform:Find("visual/frame"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Image
	self.imgLight = self.transform:Find("visual/frame/mash_light"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Image
	self.imgDark = self.transform:Find("visual/frame/mash_dark"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_RectTransform
	self.rectPower = self.transform:Find("visual/frame/thanh_no/bg_thanh_no_1_mask"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.rectHp = self.transform:Find("visual/frame/thanh_mau/bg_thanh_mau_1_mask"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Image
	self.heroIcon = self.transform:Find("visual/frame/hero_icon"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Image
	self.factionIcon = self.transform:Find("visual/frame/faction_icon"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.textLevel = self.transform:Find("visual/frame/text_level"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
