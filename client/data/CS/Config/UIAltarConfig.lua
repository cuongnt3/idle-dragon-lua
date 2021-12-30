--- @class UIAltarConfig
UIAltarConfig = Class(UIAltarConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIAltarConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.heroList = self.transform:Find("popup/group_2/heroList"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.buttonBack = self.transform:Find("popup/button_close"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonShop = self.transform:Find("popup/group_1/button_shop"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonDisassemble = self.transform:Find("popup/group_1/dissemble_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonAutoFill = self.transform:Find("popup/group_1/auto_select_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonSearch = self.transform:Find("popup/group_1/text_title/preview_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.disassembleIcon = self.transform:Find("popup/disassemble_icon"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.rootHeroShard = self.transform:Find("popup/root_hero_shard"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.localizeDisassemble = self.transform:Find("popup/group_1/dissemble_button/text_level_up"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeAutoFill = self.transform:Find("popup/group_1/auto_select_button/text_auto_select"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeHeroese = self.transform:Find("popup/group_1/text_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeSelecHeroesToTransmit = self.transform:Find("popup/group_2/text_selec_heroes_to_transmit"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.bgClose = self.transform:Find("bg_none"):GetComponent(ComponentName.UnityEngine_UI_Button)
end
