--- @class UIEventArenaRankingItemConfig
UIEventArenaRankingItemConfig = Class(UIEventArenaRankingItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIEventArenaRankingItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.itemTableAnchor = self.transform:Find("visual/item_table_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.buttonClaim = self.transform:Find("visual/button_claim"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textClaim = self.transform:Find("visual/button_claim/text_claim"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.rankDesc = self.transform:Find("visual/rank_desc"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.claimed = self.transform:Find("visual/claimed").gameObject
	--- @type UnityEngine_UI_Text
	self.textClaimed = self.transform:Find("visual/claimed/text_claimed"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
