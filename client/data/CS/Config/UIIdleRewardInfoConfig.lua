--- @class UIIdleRewardInfoConfig
UIIdleRewardInfoConfig = Class(UIIdleRewardInfoConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIIdleRewardInfoConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.before = self.transform:Find("Image/before"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.after = self.transform:Find("Image/after"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.bg = self.transform:Find("Image").gameObject
	--- @type UnityEngine_Animator
	self.animator = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_Animator)
end
