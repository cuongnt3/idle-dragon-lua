--- @class QuickBattleTicketConfig
QuickBattleTicketConfig = Class(QuickBattleTicketConfig)

--- @return void
--- @param transform UnityEngine_Transform
function QuickBattleTicketConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Image
	self.item = self.transform:Find("bg_vieng_item/bg_item"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Image
	self.frame = self.transform:Find("bg_vieng_item"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.number = self.transform:Find("bg_vieng_item/number"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.button = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textTime = self.transform:Find("bg_vieng_item/time"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
