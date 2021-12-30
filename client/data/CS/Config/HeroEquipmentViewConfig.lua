--- @class HeroEquipmentViewConfig
HeroEquipmentViewConfig = Class(HeroEquipmentViewConfig)

--- @return void
--- @param transform UnityEngine_Transform
function HeroEquipmentViewConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.weapon = self.transform:Find("item_slot/equip_slot"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.helmet = self.transform:Find("item_slot/equip_slot (1)"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.armor = self.transform:Find("item_slot/equip_slot (2)"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.ring = self.transform:Find("item_slot/equip_slot (3)"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.artifact = self.transform:Find("item_slot/equip_slot (4)"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.talent = self.transform:Find("item_slot/talent"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textUnlockTalent = self.transform:Find("item_slot/talent/text_unlock_talent"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.talentItemAnchor = self.transform:Find("item_slot/talent/talent_item_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textUnlockStone = self.transform:Find("item_slot/equip_slot (5)/text_unlock_stone"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.stone = self.transform:Find("item_slot/equip_slot (5)"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
