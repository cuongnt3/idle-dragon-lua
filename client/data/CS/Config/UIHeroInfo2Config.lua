--- @class UIHeroInfo2Config
UIHeroInfo2Config = Class(UIHeroInfo2Config)

--- @return void
--- @param transform UnityEngine_Transform
function UIHeroInfo2Config:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonLvMax = self.transform:Find("middle_content/levelup_hero/level_up_and_currency/button_lv_max"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textGem = self.transform:Find("middle_content/levelup_hero/level_up_and_currency/money/magic_potion/text_currency_value"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textGold = self.transform:Find("middle_content/levelup_hero/level_up_and_currency/money/gold/text_coin_value"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.iconMagicPotion = self.transform:Find("middle_content/levelup_hero/level_up_and_currency/money/magic_potion/icon_10"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Button
	self.buttonUpLv = self.transform:Find("middle_content/levelup_hero/level_up_and_currency/button_lv_up"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonEvolve = self.transform:Find("middle_content/levelup_hero/level_up_and_currency/button_evolve"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_GameObject
	self.lvUp = self.transform:Find("middle_content/levelup_hero/level_up_and_currency/money").gameObject
	--- @type UnityEngine_GameObject
	self.lvMax = self.transform:Find("middle_content/levelup_hero/level_up_and_currency/text_level_max").gameObject
	--- @type UnityEngine_RectTransform
	self.prefabHeroInfo = self.transform:Find("prefab_hero_info_2"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.localizeLvToMax = self.transform:Find("middle_content/levelup_hero/level_up_and_currency/button_lv_max/text_accept"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeLvUp = self.transform:Find("middle_content/levelup_hero/level_up_and_currency/button_lv_up/text_accept"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeEvolve = self.transform:Find("middle_content/levelup_hero/level_up_and_currency/button_evolve/text_accept"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeLevelMax = self.transform:Find("middle_content/levelup_hero/level_up_and_currency/text_level_max"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonAutoEquip = self.transform:Find("middle_content/levelup_hero/button_autoequip"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonUnEquip = self.transform:Find("middle_content/levelup_hero/button_unequip"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_GameObject
	self.lockStone = self.transform:Find("equipment/item_slot/equip_slot (5)/icon_lock").gameObject
	--- @type UnityEngine_UI_Button
	self.buttonStone = self.transform:Find("equipment/item_slot/equip_slot (5)"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.weapon = self.transform:Find("equipment/item_slot/equip_slot"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.armor = self.transform:Find("equipment/item_slot/equip_slot (2)"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.ring = self.transform:Find("equipment/item_slot/equip_slot (3)"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.hat = self.transform:Find("equipment/item_slot/equip_slot (1)"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.chain = self.transform:Find("equipment/item_slot/equip_slot (4)"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.itemEquipInfoStone = self.transform:Find("equipment/item_slot/equip_slot (5)"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.fx = self.transform:Find("equipment/item_slot/equip_slot (5)"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textLockLevel = self.transform:Find("equipment/item_slot/equip_slot (5)/text_unlock_level_40"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeUnEquip = self.transform:Find("middle_content/levelup_hero/button_unequip/text_equip"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeAutoEquip = self.transform:Find("middle_content/levelup_hero/button_autoequip/text_unequip"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.middleContent = self.transform:Find("middle_content").gameObject
	--- @type UnityEngine_GameObject
	self.equipment = self.transform:Find("equipment").gameObject
	--- @type UnityEngine_EventSystems_EventTrigger
	self.eventTriggerLevelUp = self.transform:Find("middle_content/levelup_hero/level_up_and_currency/button_lv_up/bg_button_green"):GetComponent(ComponentName.UnityEngine_EventSystems_EventTrigger)
	--- @type UnityEngine_Animator
	self.animatorLevelUp = self.transform:Find("middle_content/levelup_hero/level_up_and_currency/button_lv_up"):GetComponent(ComponentName.UnityEngine_Animator)
	--- @type UnityEngine_UI_Text
	self.heroInRaiseLevelText = self.transform:Find("middle_content/levelup_hero/level_up_and_currency/hero_in_raise_level_text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.talent = self.transform:Find("equipment/item_slot/talent"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textUnlockTalent = self.transform:Find("equipment/item_slot/talent/text_unlock_talent"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.talentItemAnchor = self.transform:Find("equipment/item_slot/talent/talent_item_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
