--- @class GuildDailyBossMilestoneRewardConfig
GuildDailyBossMilestoneRewardConfig = Class(GuildDailyBossMilestoneRewardConfig)

--- @return void
--- @param transform UnityEngine_Transform
function GuildDailyBossMilestoneRewardConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_GameObject
	self.on = self.transform:Find("on").gameObject
	--- @type UnityEngine_UI_Text
	self.textValue = self.transform:Find("milestone_value/text_value"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.chestMilestone = self.transform:Find("chest_milestone"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.rectTrans = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Image
	self.iconChest = self.transform:Find("chest_milestone/icon_chest"):GetComponent(ComponentName.UnityEngine_UI_Image)
end
