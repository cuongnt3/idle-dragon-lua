--- @class UIPopupReward1ItemConfig
UIPopupReward1ItemConfig = Class(UIPopupReward1ItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIPopupReward1ItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.itemRewardPannelEffect = self.transform:Find("reward_item_pannel/item_reward_pannel_effect"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.backGroundDark = self.transform:Find("bg_text"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.item = self.transform:Find("reward_item_pannel/item_reward_pannel_effect/item"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textItemType = self.transform:Find("reward_item_pannel/item_reward_pannel_effect/text_item_type"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textItemName = self.transform:Find("reward_item_pannel/item_reward_pannel_effect/text_item_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.pos = self.transform:Find("pos"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
