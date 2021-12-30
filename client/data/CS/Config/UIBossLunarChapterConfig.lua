--- @class UIBossLunarChapterConfig
UIBossLunarChapterConfig = Class(UIBossLunarChapterConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIBossLunarChapterConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Image
	self.iconBossChapter = self.transform:Find("icon_boss_chapter"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.textFireworkValue = self.transform:Find("text_firework_value"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.button = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_UI_Button)
end
