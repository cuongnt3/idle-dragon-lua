--- @class UICouponConfig
UICouponConfig = Class(UICouponConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UICouponConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonConfirm = self.transform:Find("confirm_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textCoupon = self.transform:Find("InputField/text_coupon"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textConfirm = self.transform:Find("confirm_button/text_confirm"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
