--- @class BattleLogItemConfig
BattleLogItemConfig = Class(BattleLogItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function BattleLogItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.heroIcon = self.transform:Find("hero_icon_demo"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Image
	self.healing_bar = self.transform:Find("healing_and_damage/healing_bar/bg_quest_progress_bar_1"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Image
	self.damage_bar = self.transform:Find("healing_and_damage/damage_bar/bg_quest_progress_bar_1"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.textHealing = self.transform:Find("healing_and_damage/healing_bar/text_healing"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textDamageBar = self.transform:Find("healing_and_damage/damage_bar/text_damage_bar"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
