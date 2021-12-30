--- @class UIInventoryConfig
UIInventoryConfig = Class(UIInventoryConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIInventoryConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.buttonBack = self.transform:Find("safe_area/back_button"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_RectTransform
	self.tabParent = self.transform:Find("popup/tab"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_RectTransform
	self.content = self.transform:Find("popup/content"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textTitle = self.transform:Find("popup/text_title"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeEquip = self.transform:Find("popup/tab/tab2/text_tab_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeStorage = self.transform:Find("popup/tab/tab2 (1)/text_tab_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeFragment = self.transform:Find("popup/tab/tab2 (2)/text_tab_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeArtifact = self.transform:Find("popup/tab/tab2 (3)/text_tab_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeGallery = self.transform:Find("popup/content/artifact/bg_button_xanh/text_gallery"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeSkin = self.transform:Find("popup/tab/tab2 (4)/text_tab_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.localizeGallerySkin = self.transform:Find("popup/content/skin/bg_button_xanh/text_gallery"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.safeArea = self.transform:Find("safe_area"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Button
	self.bgClose = self.transform:Find("bg_text"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_GameObject
	self.notiFragment = self.transform:Find("popup/tab/tab2 (2)/notify").gameObject
	--- @type UnityEngine_GameObject
	self.notiStorage = self.transform:Find("popup/tab/tab2 (1)/notify").gameObject
	--- @type UnityEngine_GameObject
	self.empty = self.transform:Find("popup/empty").gameObject
	--- @type UnityEngine_UI_Text
	self.textEmpty = self.transform:Find("popup/empty/text_empty"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.softTutFrgament = self.transform:Find("popup/tab/tab2 (2)/soft_tut").gameObject
end
