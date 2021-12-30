--- @class UIMasterBlackSmithLayoutConfig
UIMasterBlackSmithLayoutConfig = Class(UIMasterBlackSmithLayoutConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIMasterBlackSmithLayoutConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.textName = self.transform:Find("bg_text_glow/text_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textTimer = self.transform:Find("bg_text_glow/text_timer"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textExtra = self.transform:Find("profit_sale_label/text_extra"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textProfitValue = self.transform:Find("profit_sale_label/text_profit_value"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.itemsTableView = self.transform:Find("offer_item/items_table_view"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textExtra = self.transform:Find("profit_sale_label/text_extra"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textProfitValue = self.transform:Find("profit_sale_label/text_profit_value"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonBuy = self.transform:Find("button_buy"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textPrice = self.transform:Find("button_buy/text_price"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textVipPointValue = self.transform:Find("vip_point_reward/text_vip_point_value"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.iconVipPoint = self.transform:Find("vip_point_reward/icon_vip_point"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_RectTransform
	self.topTab = self.transform:Find("scroll_top_tab/view_port/content"):GetComponent(ComponentName.UnityEngine_RectTransform)
end
