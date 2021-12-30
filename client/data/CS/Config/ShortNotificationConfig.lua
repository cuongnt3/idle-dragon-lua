--- @class ShortNotificationConfig
ShortNotificationConfig = Class(ShortNotificationConfig)

--- @return void
--- @param transform UnityEngine_Transform
function ShortNotificationConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Text
	self.notiText = self.transform:Find("content_view/noti_text"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_RectTransform
	self.bg = self.transform:Find("bg"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_CanvasGroup
	self.canvasGroup = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_CanvasGroup)
	--- @type UnityEngine_UI_Text
	self.textNeed = self.transform:Find("content_view/resource_require_view/text_need"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Image
	self.icon = self.transform:Find("content_view/resource_require_view/icon_resources/icon"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_UI_Text
	self.textNeedValue = self.transform:Find("content_view/resource_require_view/text_need_value"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_GameObject
	self.resourceRequireView = self.transform:Find("content_view/resource_require_view").gameObject
	--- @type UnityEngine_GameObject
	self.iconResources = self.transform:Find("content_view/resource_require_view/icon_resources").gameObject
	--- @type UnityEngine_CanvasGroup
	self.canvasGroupContent = self.transform:Find("content_view"):GetComponent(ComponentName.UnityEngine_CanvasGroup)
	--- @type UnityEngine_UI_HorizontalLayoutGroup
	self.groupLayout = self.transform:Find("content_view/resource_require_view"):GetComponent(ComponentName.UnityEngine_UI_HorizontalLayoutGroup)
end
