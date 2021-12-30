--- @class RequirementHeroInfoConfig
RequirementHeroInfoConfig = Class(RequirementHeroInfoConfig)

--- @return void
--- @param transform UnityEngine_Transform
function RequirementHeroInfoConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Image
	self.bgFilterPannel = self.transform:Find("bg_filter_pannel"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.text = self.transform:Find("bg_filter_pannel/text_thong_tin_requirement"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
