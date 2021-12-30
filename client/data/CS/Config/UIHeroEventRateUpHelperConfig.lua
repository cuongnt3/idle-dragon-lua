--- @class UIHeroEventRateUpHelperConfig
UIHeroEventRateUpHelperConfig = Class(UIHeroEventRateUpHelperConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIHeroEventRateUpHelperConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.eventRateUpHelper = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.guaranteedRequirementTitle = self.transform:Find("popup/guaranteed_requirement"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.guaranteedRequirementDescribe = self.transform:Find("popup/guaranteed_requirement_describe"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
