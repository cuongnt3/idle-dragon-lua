--- @class MaterialItemConfig
MaterialItemConfig = Class(MaterialItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function MaterialItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.item = self.transform:Find("item"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_GameObject
	self.add = self.transform:Find("text_+").gameObject
	--- @type UnityEngine_UI_Text
	self.textCount = self.transform:Find("text_so_luong_craft"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
