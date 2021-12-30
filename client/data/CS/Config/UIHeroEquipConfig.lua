--- @class UIHeroEquipConfig
UIHeroEquipConfig = Class(UIHeroEquipConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIHeroEquipConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonAutoEquip = self.transform:Find("group_2/auto_equip_button/bg_button_green"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonUnEquip = self.transform:Find("group_2/unequip_button/bg_button_red"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_GameObject
	self.lockStone = self.transform:Find("group_1/gem_slot/icon_lock").gameObject
	--- @type UnityEngine_UI_Button
	self.buttonStone = self.transform:Find("group_1/gem_slot"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.weapon = self.transform:Find("group_1/weapon_slot"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.armor = self.transform:Find("group_1/amor_slot"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.ring = self.transform:Find("group_1/ring_slot"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.hat = self.transform:Find("group_1/helmet_slot"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.chain = self.transform:Find("group_1/artifact_slot"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.itemEquipInfoStone = self.transform:Find("group_1/gem_slot"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.fx = self.transform:Find("group_1/gem_slot"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textLockLevel = self.transform:Find("group_1/gem_slot/text_unlock_level_40"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.bgFaction = self.transform:Find("group_1/icon_detail_behind_item"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.localizeUnEquip = self.transform:Find("group_2/unequip_button/bg_button_red/text_unequip"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeAutoEquip = self.transform:Find("group_2/auto_equip_button/bg_button_green/text_collect"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
