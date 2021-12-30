--- @class HeroStatChangeConfig
HeroStatChangeConfig = Class(HeroStatChangeConfig)

--- @return void
--- @param transform UnityEngine_Transform
function HeroStatChangeConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_GameObject
	self.add = self.transform:Find("add").gameObject
	--- @type UnityEngine_GameObject
	self.sub = self.transform:Find("sub").gameObject
	--- @type UnityEngine_UI_Text
	self.stat = self.transform:Find("stat"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.number = self.transform:Find("number"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_Animator
	self.animator = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_Animator)
end
