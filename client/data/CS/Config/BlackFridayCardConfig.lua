--- @class BlackFridayCardConfig
BlackFridayCardConfig = Class(BlackFridayCardConfig)

--- @return void
--- @param transform UnityEngine_Transform
function BlackFridayCardConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonBuy = self.transform:Find("holder/buy_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textPrice = self.transform:Find("holder/buy_button/text_price"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.resAnchor = self.transform:Find("holder/res_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.localizeBuy = self.transform:Find("holder/buy_button/text_buy"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.vipText = self.transform:Find("holder/buy_button/vip_point_view/Text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.contentText = self.transform:Find("holder/content/content_text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.remainText = self.transform:Find("remain_text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.vipPointView = self.transform:Find("holder/buy_button/vip_point_view").gameObject
end
