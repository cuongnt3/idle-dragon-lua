--- @class UIEggCombineConfig
UIEggCombineConfig = Class(UIEggCombineConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIEggCombineConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.bgNone = self.transform:Find("bg_none"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textQuestName = self.transform:Find("popup/text_quest_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.item = self.transform:Find("popup/item"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
