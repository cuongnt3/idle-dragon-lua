--- @class SelectLanguageItemConfig
SelectLanguageItemConfig = Class(SelectLanguageItemConfig)

--- @return void
--- @param transform UnityEngine_Transform
function SelectLanguageItemConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.button = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_GameObject
	self.box = self.transform:Find("layout/bg_o_tick_ngon_ngu").gameObject
	--- @type UnityEngine_UI_Text
	self.textLanguage = self.transform:Find("layout/text_ten_ngon_ngu"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.bgSelect = self.transform:Find("bg/bg_select").gameObject
	--- @type UnityEngine_UI_HorizontalLayoutGroup
	self.layout = self.transform:Find("layout"):GetComponent(ComponentName.UnityEngine_UI_HorizontalLayoutGroup)
end
