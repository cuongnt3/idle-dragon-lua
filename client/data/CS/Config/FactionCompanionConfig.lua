--- @class FactionCompanionConfig
FactionCompanionConfig = Class(FactionCompanionConfig)

--- @return void
--- @param transform UnityEngine_Transform
function FactionCompanionConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Image
	self.faction = self.transform:Find("faction"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.multiple = self.transform:Find("multiple"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.rect = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_RectTransform)
end
