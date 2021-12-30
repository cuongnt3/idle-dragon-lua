--- @class GuildDonateHistoryItemConfig
GuildDonateHistoryItemConfig = Class(GuildDonateHistoryItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function GuildDonateHistoryItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.icon = self.transform:Find("icon"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.donate = self.transform:Find("donate"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.name = self.transform:Find("name"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
