--- @class DonateHelpItemConfig
DonateHelpItemConfig = Class(DonateHelpItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function DonateHelpItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_GameObject
	self.icon = self.transform:Find("bg_level_up_arrow/icon").gameObject
	--- @type UnityEngine_UI_Image
	self.iconMoney = self.transform:Find("bg_level_up_arrow/icon/icon_money"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Image
	self.iconFeature = self.transform:Find("bg_level_up_arrow/icon/icon_feature"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.textContent = self.transform:Find("bg_level_up_arrow/text_content"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.iconReward = self.transform:Find("icon_reward"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.textValue = self.transform:Find("icon_reward/text_value"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
