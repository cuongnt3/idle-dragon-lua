--- @class UIBirthdayWheelLayoutConfig
UIBirthdayWheelLayoutConfig = Class(UIBirthdayWheelLayoutConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIBirthdayWheelLayoutConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonSpin = self.transform:Find("wheel_of_fate/button/spin_1_time"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.buttonStop = self.transform:Find("wheel_of_fate/button/buttonStop"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Image
	self.iconMoney = self.transform:Find("wheel_of_fate/button/spin_1_time/icon_wood"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.textNumberMoney = self.transform:Find("wheel_of_fate/button/spin_1_time/text_price_replace"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textSpin = self.transform:Find("wheel_of_fate/button/spin_1_time/text_summon"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.wheel = self.transform:Find("wheel_of_fate/wheel"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.reward = self.transform:Find("wheel_of_fate/bg (2)/reward"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.money = self.transform:Find("wheel_of_fate/money"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textStop = self.transform:Find("wheel_of_fate/button/buttonStop/text_summon"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.arrow = self.transform:Find("wheel_of_fate/arow"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_ParticleSystem
	self.fxSpin = self.transform:Find("wheel_of_fate/wheel/fx_spin_event_birtday"):GetComponent(ComponentName.UnityEngine_ParticleSystem)
	--- @type UnityEngine_ParticleSystem
	self.fxItem = self.transform:Find("wheel_of_fate/bg (2)/fx_spin_event_birtday_icon"):GetComponent(ComponentName.UnityEngine_ParticleSystem)
	--- @type UnityEngine_ParticleSystem
	self.fxSpinBg = self.transform:Find("wheel_of_fate/wheel/fx_spin_event_birthday_bg"):GetComponent(ComponentName.UnityEngine_ParticleSystem)
end
