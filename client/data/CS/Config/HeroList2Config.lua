--- @class HeroList2Config
HeroList2Config = Class(HeroList2Config)

--- @return void
--- @param transform UnityEngine_Transform
function HeroList2Config:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textSelectHeroes = self.transform:Find("text_select_heroes_to_battle"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.heroList = self.transform:Find("hero_list"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
