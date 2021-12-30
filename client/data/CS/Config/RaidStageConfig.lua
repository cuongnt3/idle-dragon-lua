--- @class
---RaidStageConfig
RaidStageConfig = Class(RaidStageConfig)

--- @return void
--- @param transform UnityEngine_Transform
function RaidStageConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonChallenge = self.transform:Find("visual/button_challenge"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textComplete = self.transform:Find("visual/button_challenge/text_complete"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.item = self.transform:Find("visual/item"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textApRaid = self.transform:Find("visual/ap_raid/text_ap_raid"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.iconRaid = self.transform:Find("visual/level_of_difficult/icon_raid_4"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.textIconRaid = self.transform:Find("visual/level_of_difficult/text_icon_raid_1"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
