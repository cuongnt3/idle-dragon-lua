--- @class UIHeroSummonInfoConfig
UIHeroSummonInfoConfig = Class(UIHeroSummonInfoConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIHeroSummonInfoConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.prefabHeroInfo = self.transform:Find("popup/prefab_hero_Info"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textHeroName = self.transform:Find("popup/text_hero_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.iconSlot = self.transform:Find("popup/icon_slot"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.backGround = self.transform:Find("bg_close"):GetComponent(ComponentName.UnityEngine_UI_Button)
end
