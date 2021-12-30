--- @class UIDomainRecruitConfig
UIDomainRecruitConfig = Class(UIDomainRecruitConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIDomainRecruitConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonApply = self.transform:Find("button_aplly"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_InputField
	self.inputField = self.transform:Find("InputField"):GetComponent(ComponentName.UnityEngine_UI_InputField)
	--- @type UnityEngine_UI_Text
	self.localizeApply = self.transform:Find("button_aplly/text_claim_and_send"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.recruitPlaceHolder = self.transform:Find("InputField/recruit_place_holder"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
