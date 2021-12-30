--- @class LinkingHeroItemConfig
LinkingHeroItemConfig = Class(LinkingHeroItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function LinkingHeroItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.hero = self.transform:Find("hero"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textTitle = self.transform:Find("text_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textContent = self.transform:Find("text_content"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.icon = self.transform:Find("icon"):GetComponent(ComponentName.UnityEngine_UI_Image)
end
