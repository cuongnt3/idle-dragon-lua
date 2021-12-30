--- @class DungeonBuffCardConfig
DungeonBuffCardConfig = Class(DungeonBuffCardConfig)

--- @return void
--- @param transform UnityEngine_Transform
function DungeonBuffCardConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.iconRareBuff = self.transform:Find("visual/icon_rare_buff"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Image
	self.iconItemDungeonBuff = self.transform:Find("visual/icon_rare_buff/icon_item_dungeon_buff"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_GameObject
	self.iconBuff = self.transform:Find("visual/buff/icon_buff").gameObject
	--- @type UnityEngine_UI_Text
	self.textCardName = self.transform:Find("visual/icon_rare_buff/frame/text_card_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textDungeonCardInfo = self.transform:Find("visual/icon_rare_buff/text_dungeon_card_info"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textQuantity = self.transform:Find("visual/icon_rare_buff/icon_item_dungeon_buff/text_quantity"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonCard = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonChoose = self.transform:Find("visual/icon_rare_buff/button_choose"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.rootBuff = self.transform:Find("visual/buff"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.visual = self.transform:Find("visual"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.requirement = self.transform:Find("visual/icon_rare_buff/frame/text_card_name/icon"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textCollect = self.transform:Find("visual/icon_rare_buff/button_choose/text_collect"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.iconRarity = self.transform:Find("visual/icon_rare_buff/frame/icon_rarity"):GetComponent(ComponentName.UnityEngine_UI_Image)
end
