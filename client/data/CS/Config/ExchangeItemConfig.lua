--- @class ExchangeItemConfig
ExchangeItemConfig = Class(ExchangeItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function ExchangeItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.exchangeButton = self.transform:Find("exchange_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_GameObject
	self.iconRedDots = self.transform:Find("exchange_button/icon_red_dots").gameObject
	--- @type UnityEngine_UI_Text
	self.textLimit = self.transform:Find("exchange_button/text_limit"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textExchange = self.transform:Find("exchange_button/exchange/text_exchange"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.gem = self.transform:Find("exchange_button/gem").gameObject
	--- @type UnityEngine_GameObject
	self.exchange = self.transform:Find("exchange_button/exchange").gameObject
	--- @type UnityEngine_UI_Text
	self.textGem = self.transform:Find("exchange_button/gem/icon_wood/text_price_replace"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.iconMoney = self.transform:Find("exchange_button/gem/icon_wood"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_RectTransform
	self.baseRarity = self.transform:Find("icon_base"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Image
	self.baseImage = self.transform:Find("icon_base"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_RectTransform
	self.itemReward = self.transform:Find("item_reward"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
