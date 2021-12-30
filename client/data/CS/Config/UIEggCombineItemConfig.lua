--- @class UIEggCombineItemConfig
UIEggCombineItemConfig = Class(UIEggCombineItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIEggCombineItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.iconItemExchange = self.transform:Find("item_exchange/icon_item_exchange"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textItemExchange = self.transform:Find("item_exchange/text_item_exchange"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textCurrencyName = self.transform:Find("item_exchange/text_currency_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.iconItemOwned = self.transform:Find("item_owned/icon_item_owned"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textItemOwned = self.transform:Find("item_owned/text_item_exchange (1)"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textCurrencyOwned = self.transform:Find("item_owned/text_currency_name (1)"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonCombine = self.transform:Find("button_green"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textCombine = self.transform:Find("button_green/text_green"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
