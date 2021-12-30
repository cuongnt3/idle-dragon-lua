--- @class SlotHeroIconConfig
SlotHeroIconConfig = Class(SlotHeroIconConfig)

--- @return void
--- @param transform UnityEngine_Transform
function SlotHeroIconConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.button = self.transform:Find("bg"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_GameObject
	self.iconAdd = self.transform:Find("icon_dau_cong").gameObject
	--- @type UnityEngine_GameObject
	self.iconTick = self.transform:Find("tick").gameObject
	--- @type UnityEngine_RectTransform
	self.rectTransform = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.slot_hero = self.transform:Find("hero"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
