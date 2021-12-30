--- @class RoundCardWishItemConfig
RoundCardWishItemConfig = Class(RoundCardWishItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function RoundCardWishItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textRound = self.transform:Find("friend_support/text_friend_support"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.content = self.transform:Find("table_friend_hero"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_ContentSizeFitter
	self.contentSize = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_UI_ContentSizeFitter)
end
