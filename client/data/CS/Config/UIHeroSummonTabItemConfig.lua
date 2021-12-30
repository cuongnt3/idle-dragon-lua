--- @class UIHeroSummonTabItemConfig
UIHeroSummonTabItemConfig = Class(UIHeroSummonTabItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIHeroSummonTabItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.button = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Image
	self.chooseImage = self.transform:Find("bg_chosen_tab"):GetComponent(ComponentName.UnityEngine_UI_Image)
end
