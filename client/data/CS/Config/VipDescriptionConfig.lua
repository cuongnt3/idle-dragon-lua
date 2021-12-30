--- @class VipDescriptionConfig
VipDescriptionConfig = Class(VipDescriptionConfig)

--- @return void
--- @param transform UnityEngine_Transform
function VipDescriptionConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.text = self.transform:Find("Text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_GridLayoutGroup
	self.reward = self.transform:Find("reward"):GetComponent(ComponentName.UnityEngine_UI_GridLayoutGroup)
	--- @type UnityEngine_UI_VerticalLayoutGroup
	self.itemVipContent = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_UI_VerticalLayoutGroup)
end
