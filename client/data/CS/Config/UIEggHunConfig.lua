--- @class UIEggHunConfig
UIEggHunConfig = Class(UIEggHunConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIEggHunConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textEventContent = self.transform:Find("event_content/bg_block_duration_time_holder/text_event_content"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textEventName = self.transform:Find("event_content/bg_text_glow_bunny_card/text_event_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.drop1 = self.transform:Find("text_item_drop"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.drop2 = self.transform:Find("text_item_drop (1)"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.drop3 = self.transform:Find("text_item_drop (2)"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.drop4 = self.transform:Find("text_item_drop (3)"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.drop5 = self.transform:Find("text_item_drop (4)"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
