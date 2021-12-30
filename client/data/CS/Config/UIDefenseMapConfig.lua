--- @class UIDefenseMapConfig
UIDefenseMapConfig = Class(UIDefenseMapConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIDefenseMapConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_GameObject
	self.landInfo = self.transform:Find("land_info").gameObject
	--- @type UnityEngine_UI_Button
	self.backButton = self.transform:Find("back_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonHelp = self.transform:Find("button_help"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textRegisterRule = self.transform:Find("land_info/join_rule/text_register_rule"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonJoin = self.transform:Find("land_info/button_green"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.iconInstantReward = self.transform:Find("land_info/instant_reward/icon_instant_reward"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textInstantReward = self.transform:Find("land_info/instant_reward/instant_reward_header/text_popup_content"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textJoin = self.transform:Find("land_info/button_green/text_green"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textProgressValue = self.transform:Find("land_info/stage_area/text_progress_value"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.idleReward = self.transform:Find("land_info/bg_content_base_2 (1)/idle_reward"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.stage = self.transform:Find("land_info/stage_area/stage"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textLandName = self.transform:Find("land_info/land_header/text_land_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonHelp2 = self.transform:Find("land_info/land_header/button_help"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.bgLandStage = self.transform:Find("land_info/stage_area/bg_land_stage_2"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.buttonClaimAll = self.transform:Find("button_claim_all"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textClaimAll = self.transform:Find("button_claim_all/text_green"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.landSelect = self.transform:Find("land_select").gameObject
	--- @type UnityEngine_UI_Image
	self.backGround = self.transform:Find("back_ground"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Button
	self.buttonRecord = self.transform:Find("land_info/button_record"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textRecord = self.transform:Find("land_info/button_record/text_green"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textIdle = self.transform:Find("land_info/bg_content_base_2 (1)/text_idle"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
