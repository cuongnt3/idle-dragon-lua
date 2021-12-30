--- @class UISlotTrainingTeamConfig
UISlotTrainingTeamConfig = Class(UISlotTrainingTeamConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UISlotTrainingTeamConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_GameObject
	self.iconBlock = self.transform:Find("hero_slot/icon_block").gameObject
	--- @type UnityEngine_RectTransform
	self.iconHero = self.transform:Find("hero_slot/icon_hero"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textLeveling = self.transform:Find("text_leveling"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.progress = self.transform:Find("hero_time_bar/bg_quest_progress_bar_2"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_GameObject
	self.progressFull = self.transform:Find("hero_time_bar/bg_quest_progress_bar_1").gameObject
	--- @type UnityEngine_UI_Text
	self.textTime = self.transform:Find("hero_time_bar/text_so_luong_nguyen_lieu"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.button = self.transform:Find("hero_slot"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_GameObject
	self.progressParent = self.transform:Find("hero_time_bar").gameObject
end
