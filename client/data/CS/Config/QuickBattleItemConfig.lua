--- @class QuickBattleItemConfig
QuickBattleItemConfig = Class(QuickBattleItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function QuickBattleItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.useButton = self.transform:Find("use_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textUse = self.transform:Find("use_button/text_button_content"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.item = self.transform:Find("ranking_name_and_ranking_point/item"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textSpeedUpName = self.transform:Find("ranking_name_and_ranking_point/text_speed_up_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textSpeedUpOwnedValue = self.transform:Find("ranking_name_and_ranking_point/text_speed_up_owned_value"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.notEnough = self.transform:Find("not_enought").gameObject
	--- @type UnityEngine_UI_Text
	self.textNotEnough = self.transform:Find("not_enought/text_button_content"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
