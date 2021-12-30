--- @class UIDefenseBattleConfirmConfig
UIDefenseBattleConfirmConfig = Class(UIDefenseBattleConfirmConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIDefenseBattleConfirmConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonClose = self.transform:Find("popup/button_close"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textTitle = self.transform:Find("popup/text_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.buttonBattle = self.transform:Find("popup/button_battle"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Text
	self.textBattleConfirm = self.transform:Find("popup/text_battle_confirm"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textBattle = self.transform:Find("popup/button_battle/text_battle"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.towerAnchor = self.transform:Find("popup/tower_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.bgNone = self.transform:Find("bg_none"):GetComponent(ComponentName.UnityEngine_UI_Button)
end
