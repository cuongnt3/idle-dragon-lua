--- @class TalentSelectItemConfig
TalentSelectItemConfig = Class(TalentSelectItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function TalentSelectItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_GameObject
	self.iconItemDungeonBuff = self.transform:Find("visual/icon_item").gameObject
	--- @type UnityEngine_UI_Text
	self.textCardName = self.transform:Find("visual/text_card_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textDungeonCardInfo = self.transform:Find("visual/text_dungeon_card_info"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonChoose = self.transform:Find("visual/button_choose"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.visual = self.transform:Find("visual"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textCollect = self.transform:Find("visual/button_choose/text_choose"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.iconItem = self.transform:Find("visual/icon_item"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_RectTransform
	self.iconItemAnchor = self.transform:Find("visual/icon_item"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
