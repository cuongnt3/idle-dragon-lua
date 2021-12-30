--- @class RaiseHeroIconInfoConfig
RaiseHeroIconInfoConfig = Class(RaiseHeroIconInfoConfig)

--- @return void
--- @param transform UnityEngine_Transform
function RaiseHeroIconInfoConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.iconHeroAnchor = self.transform:Find("visual/frame/hero_slot/icon_hero"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.iconBlockCanBuy = self.transform:Find("visual/frame/hero_slot/icon_block_can_buy"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Image
	self.iconBlockCanNotBuy = self.transform:Find("visual/frame/hero_slot/icon_block_can_buy/icon_block_can_not_buy"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Button
	self.buttonPlus = self.transform:Find("visual/frame/hero_slot/icon_plus"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.countDownAnchor = self.transform:Find("visual/frame/hero_slot/count_down_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.timeCountDown = self.transform:Find("visual/frame/hero_slot/count_down_anchor/time_count_down"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.countDownAnchor = self.transform:Find("visual/frame/hero_slot/count_down_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.buySlot = self.transform:Find("visual/frame/hero_slot/count_down_anchor/buy_slot"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.button = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_GameObject
	self.resetEffect = self.transform:Find("visual/frame/hero_slot/dice_reset_effect").gameObject
	--- @type UnityEngine_UI_Image
	self.noti = self.transform:Find("visual/frame/hero_slot/icon_block_can_buy/noti"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.textMoney = self.transform:Find("visual/frame/hero_slot/count_down_anchor/money_bar_info/text_money"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.iconMoney = self.transform:Find("visual/frame/hero_slot/count_down_anchor/money_bar_info/bg_money/icon_money"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.timeOnCooldownText = self.transform:Find("visual/frame/hero_slot/count_down_anchor/time_count_down (1)"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
