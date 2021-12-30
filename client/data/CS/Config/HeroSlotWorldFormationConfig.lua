--- @class HeroSlotWorldFormationConfig
HeroSlotWorldFormationConfig = Class(HeroSlotWorldFormationConfig)

--- @return void
--- @param transform UnityEngine_Transform
function HeroSlotWorldFormationConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_SpriteRenderer
	self.buffIcon = self.transform:Find("buff_icon"):GetComponent(ComponentName.UnityEngine_SpriteRenderer)
	--- @type UnityEngine_UI_Button
	self.buttonRemove = self.transform:Find("world_canvas/button_remove"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonSwap = self.transform:Find("world_canvas/button_swap"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.txtLevel = self.transform:Find("world_canvas/txt_level"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_Transform
	self.heroAnchor = self.transform:Find("hero_anchor")
	--- @type UnityEngine_UI_Button
	self.buttonSelect = self.transform:Find("world_canvas/button_select"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_Canvas
	self.worldCanvas = self.transform:Find("world_canvas"):GetComponent(ComponentName.UnityEngine_Canvas)
	--- @type UnityEngine_EventSystems_EventTrigger
	self.eventTrigger = self.transform:Find("world_canvas/button_select"):GetComponent(ComponentName.UnityEngine_EventSystems_EventTrigger)
	--- @type UnityEngine_SpriteRenderer
	self.factionBorder = self.transform:Find("world_canvas/txt_level/faction_border"):GetComponent(ComponentName.UnityEngine_SpriteRenderer)
	--- @type UnityEngine_SpriteRenderer
	self.highlight = self.transform:Find("buff_icon/highlight"):GetComponent(ComponentName.UnityEngine_SpriteRenderer)
	--- @type UnityEngine_UI_Button
	self.buttonChange = self.transform:Find("world_canvas/button_change"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.localizeChange = self.transform:Find("world_canvas/button_change/txt_change"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_Transform
	self.buffStatAnchor = self.transform:Find("icon_buff")
	--- @type UnityEngine_SpriteRenderer
	self.spriteSlotIndex = self.transform:Find("sprite_slot_index"):GetComponent(ComponentName.UnityEngine_SpriteRenderer)
	--- @type UnityEngine_SpriteRenderer
	self.iconBuff = self.transform:Find("icon_buff"):GetComponent(ComponentName.UnityEngine_SpriteRenderer)
	--- @type UnityEngine_UI_GraphicRaycaster
	self.rayCaster = self.transform:Find("world_canvas"):GetComponent(ComponentName.UnityEngine_UI_GraphicRaycaster)
	--- @type UnityEngine_SpriteRenderer
	self.lock = self.transform:Find("buff_icon/lock"):GetComponent(ComponentName.UnityEngine_SpriteRenderer)
end
