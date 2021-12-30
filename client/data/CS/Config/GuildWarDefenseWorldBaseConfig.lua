--- @class GuildWarDefenseWorldBaseConfig
GuildWarDefenseWorldBaseConfig = Class(GuildWarDefenseWorldBaseConfig)

--- @return void
--- @param transform UnityEngine_Transform
function GuildWarDefenseWorldBaseConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_Canvas
	self.worldCanvas = self.transform:Find("world_canvas"):GetComponent(ComponentName.UnityEngine_Canvas)
	--- @type UnityEngine_RectTransform
	self.tagSlot = self.transform:Find("world_canvas/tag_slot"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_GameObject
	self.arrowHighlight = self.transform:Find("arrow_highlight").gameObject
	--- @type UnityEngine_UI_Text
	self.textSlotIndex = self.transform:Find("world_canvas/tag_slot/text_slot_index"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textMedal = self.transform:Find("world_canvas/medal/text_medal"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.medal = self.transform:Find("world_canvas/medal").gameObject
	--- @type UnityEngine_UI_Button
	self.buttonSelect = self.transform:Find("world_canvas/button_select"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_GameObject
	self.towerAnchor = self.transform:Find("world_canvas/tower_anchor").gameObject
	--- @type UnityEngine_UI_Text
	self.playerName = self.transform:Find("world_canvas/tower_anchor/player_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.barPercent = self.transform:Find("world_canvas/tower_anchor/bar_percent"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_GameObject
	self.base = self.transform:Find("world_canvas/base").gameObject
	--- @type UnityEngine_SpriteRenderer
	self.towerSprite = self.transform:Find("world_canvas/tower_anchor/tower_sprite"):GetComponent(ComponentName.UnityEngine_SpriteRenderer)
	--- @type UnityEngine_EventSystems_EventTrigger
	self.eventTrigger = self.transform:Find("world_canvas/button_select"):GetComponent(ComponentName.UnityEngine_EventSystems_EventTrigger)
	--- @type UnityEngine_GameObject
	self.allyFrag = self.transform:Find("world_canvas/tag_slot/ally_frag").gameObject
	--- @type UnityEngine_GameObject
	self.opponentFrag = self.transform:Find("world_canvas/tag_slot/opponent_frag").gameObject
	--- @type UnityEngine_UI_Image
	self.bgBossHp = self.transform:Find("world_canvas/tower_anchor/bar_percent/rect_percent/bg_boss_hp"):GetComponent(ComponentName.UnityEngine_UI_Image)
end
